{-# LANGUAGE CPP                        #-}
{-# LANGUAGE FlexibleContexts           #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE RecordWildCards            #-}

-- Module      : Control.Monad.AWS
-- Copyright   : (c) 2013-2014 Brendan Hay <brendan.g.hay@gmail.com>
-- License     : This Source Code Form is subject to the terms of
--               the Mozilla Public License, v. 2.0.
--               A copy of the MPL can be found in the LICENSE file or
--               you can obtain it at http://mozilla.org/MPL/2.0/.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)

module Control.Monad.AWS where

import           Control.Applicative
import           Control.Concurrent.Async    (Async)
import qualified Control.Concurrent.Async    as Async
import           Control.Error
import           Control.Lens
import           Control.Monad.Base
import           Control.Monad.Catch
import           Control.Monad.Except
import           Control.Monad.Error         (MonadError, ErrorT, throwError)
import           Control.Monad.IO.Class
import           Control.Monad.List          (ListT)
import qualified Control.Monad.RWS.Lazy      as LRWS
import           Control.Monad.RWS.Strict    (RWST)
import           Control.Monad.Reader
import qualified Control.Monad.State.Lazy    as LState
import           Control.Monad.State.Strict  (StateT)
import qualified Control.Monad.Writer.Lazy   as LWriter
import           Control.Monad.Writer.Strict (WriterT)
import           Data.Monoid
import           Data.Time
import qualified Network.AWS                 as AWS
import           Network.AWS.Auth
import           Network.AWS.Signing.Types   hiding (presign)
import           Network.AWS.Types
import           Network.HTTP.Client

#if MIN_VERSION_transformers(0,4,0)
import           Control.Monad.Trans.Except  (ExceptT)
#endif

data Env = Env
    { _envAuth    :: Auth
    , _envRegion  :: Region
    , _envManager :: Manager
    , _envLogging :: Logging
    }

class ( Functor     m
      , Applicative m
      , Monad       m
      , MonadIO     m
      ) => MonadAWS m where
    liftAWS :: AWS a -> m a

newtype AWS a = AWS { _unAWS :: ReaderT Env (ExceptT Error IO) a }
    deriving
        ( Functor
        , Applicative
        , Monad
        , MonadIO
        , MonadReader Env
        , MonadError  Error
        )

run :: Auth -> Region -> Manager -> Logging -> AWS a -> IO (Either Error a)
run a r m l (AWS k) = runEitherT (runReaderT k (Env a r m l))

-- | Pass the current environment to a function.
scoped :: MonadReader Env m => (Env -> m a) -> m a
scoped f = ask >>= f

-- | Regionalise an action inside a specific 'Region'.
within :: MonadReader Env m => Region -> m a -> m a
within r = local (\x -> x { _envRegion = r })

-- | Hoist an 'Either' throwing the 'Left' case, and returning the 'Right'.
hoist :: (MonadError Error m, AWSError e) => Either e a -> m a
hoist = either (throwError . awsError) return

send :: (MonadIO m, MonadReader Env m, MonadError Error m, AWSRequest a)
     => a
     -> m (Rs a)
send = hoist <=< sendCatch

sendCatch :: (MonadIO m, MonadReader Env m, AWSRequest a)
          => a
          -> m (Either (Er (Sv a)) (Rs a))
sendCatch rq = scoped $ \Env{..} ->
    liftIO (AWS.send _envAuth _envRegion _envManager _envLogging rq)

-- paginate :: (MonadAWS m, AWSPager a) => a -> m (Rs a, Maybe a)
-- paginate = hoist <=< paginateCatch

-- paginateCatch :: (MonadAWS m, AWSPager a)
--               => a
--               -> m (Either (Er (Sv a)) (Rs a, Maybe a))
-- paginateCatch rq = liftAWS . scoped $ \Env{..} ->
--     liftIO (AWS.paginate _envAuth _envRegion _envManager _envLogging rq)

-- presign :: (MonadAWS m, AWSRequest a, AWSPresigner (Sg (Sv a)))
--         => a
--         -> UTCTime
--         -> Int
--         -> m (Signed a (Sg (Sv a)))
-- presign rq t x = liftAWS . scoped $ \Env{..} ->
--     AWS.presign _envAuth _envRegion (request rq) t x

-- async :: (MonadIO m, MonadReader Env m) => AWS a -> m (Async (Either Error a))
-- async (AWS r) = ask >>= liftIO . Async.async . runEitherT . runReaderT r

-- wait :: MonadAWS m => Async (Either Error a) -> m a
-- wait = hoist <=< waitCatch

-- waitCatch :: MonadIO m => Async (Either Error a) -> m (Either Error a)
-- waitCatch = liftIO . Async.wait

-- -- MonadAWS Instances

-- instance MonadAWS AWS where
--     liftAWS = id

-- instance (MonadAWS m, Err.Error e) => MonadAWS (ErrorT e m) where
--     liftAWS = lift . liftAWS

-- #if MIN_VERSION_transformers(0,4,0)
-- instance (MonadAWS m, Monoid e) => MonadAWS (ExceptT e m) where
--     liftAWS = lift . liftAWS
-- #endif

-- instance MonadAWS m => MonadAWS (ListT m) where
--     liftAWS = lift . liftAWS

-- instance MonadAWS m => MonadAWS (ReaderT r m) where
--     liftAWS = lift . liftAWS

-- instance MonadAWS m => MonadAWS (StateT s m) where
--     liftAWS = lift . liftAWS

-- instance (MonadAWS m, Monoid w) => MonadAWS (RWST r w s m) where
--     liftAWS = lift . liftAWS

-- instance (MonadAWS m, Monoid w) => MonadAWS (LRWS.RWST r w s m) where
--     liftAWS = lift . liftAWS

-- instance MonadAWS m => MonadAWS (LState.StateT s m) where
--     liftAWS = lift . liftAWS

-- instance (MonadAWS m, Monoid w) => MonadAWS (WriterT w m) where
--     liftAWS = lift . liftAWS

-- instance (MonadAWS m, Monoid w) => MonadAWS (LWriter.WriterT w m) where
--     liftAWS = lift . liftAWS
