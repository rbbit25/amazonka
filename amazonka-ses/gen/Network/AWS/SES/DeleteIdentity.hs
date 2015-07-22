{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SES.DeleteIdentity
-- Copyright   : (c) 2013-2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified identity (email address or domain) from the list
-- of verified identities.
--
-- This action is throttled at one request per second.
--
-- <http://docs.aws.amazon.com/ses/latest/APIReference/API_DeleteIdentity.html>
module Network.AWS.SES.DeleteIdentity
    (
    -- * Request
      DeleteIdentity
    -- ** Request constructor
    , deleteIdentity
    -- ** Request lenses
    , dirqIdentity

    -- * Response
    , DeleteIdentityResponse
    -- ** Response constructor
    , deleteIdentityResponse
    -- ** Response lenses
    , dirsStatus
    ) where

import           Network.AWS.Prelude
import           Network.AWS.Request
import           Network.AWS.Response
import           Network.AWS.SES.Types

-- | Represents a request instructing the service to delete an identity from
-- the list of identities for the AWS Account.
--
-- /See:/ 'deleteIdentity' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'dirqIdentity'
newtype DeleteIdentity = DeleteIdentity'
    { _dirqIdentity :: Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | 'DeleteIdentity' smart constructor.
deleteIdentity :: Text -> DeleteIdentity
deleteIdentity pIdentity =
    DeleteIdentity'
    { _dirqIdentity = pIdentity
    }

-- | The identity to be removed from the list of identities for the AWS
-- Account.
dirqIdentity :: Lens' DeleteIdentity Text
dirqIdentity = lens _dirqIdentity (\ s a -> s{_dirqIdentity = a});

instance AWSRequest DeleteIdentity where
        type Sv DeleteIdentity = SES
        type Rs DeleteIdentity = DeleteIdentityResponse
        request = post
        response
          = receiveXMLWrapper "DeleteIdentityResult"
              (\ s h x ->
                 DeleteIdentityResponse' <$> (pure (fromEnum s)))

instance ToHeaders DeleteIdentity where
        toHeaders = const mempty

instance ToPath DeleteIdentity where
        toPath = const "/"

instance ToQuery DeleteIdentity where
        toQuery DeleteIdentity'{..}
          = mconcat
              ["Action" =: ("DeleteIdentity" :: ByteString),
               "Version" =: ("2010-12-01" :: ByteString),
               "Identity" =: _dirqIdentity]

-- | An empty element. Receiving this element indicates that the request
-- completed successfully.
--
-- /See:/ 'deleteIdentityResponse' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'dirsStatus'
newtype DeleteIdentityResponse = DeleteIdentityResponse'
    { _dirsStatus :: Int
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | 'DeleteIdentityResponse' smart constructor.
deleteIdentityResponse :: Int -> DeleteIdentityResponse
deleteIdentityResponse pStatus =
    DeleteIdentityResponse'
    { _dirsStatus = pStatus
    }

-- | FIXME: Undocumented member.
dirsStatus :: Lens' DeleteIdentityResponse Int
dirsStatus = lens _dirsStatus (\ s a -> s{_dirsStatus = a});
