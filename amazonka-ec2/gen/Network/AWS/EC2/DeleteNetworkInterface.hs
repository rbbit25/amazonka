{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.DeleteNetworkInterface
-- Copyright   : (c) 2013-2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified network interface. You must detach the network
-- interface before you can delete it.
--
-- <http://docs.aws.amazon.com/AWSEC2/latest/APIReference/ApiReference-query-DeleteNetworkInterface.html>
module Network.AWS.EC2.DeleteNetworkInterface
    (
    -- * Request
      DeleteNetworkInterface
    -- ** Request constructor
    , deleteNetworkInterface
    -- ** Request lenses
    , dniirqDryRun
    , dniirqNetworkInterfaceId

    -- * Response
    , DeleteNetworkInterfaceResponse
    -- ** Response constructor
    , deleteNetworkInterfaceResponse
    ) where

import           Network.AWS.EC2.Types
import           Network.AWS.Prelude
import           Network.AWS.Request
import           Network.AWS.Response

-- | /See:/ 'deleteNetworkInterface' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'dniirqDryRun'
--
-- * 'dniirqNetworkInterfaceId'
data DeleteNetworkInterface = DeleteNetworkInterface'
    { _dniirqDryRun             :: !(Maybe Bool)
    , _dniirqNetworkInterfaceId :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | 'DeleteNetworkInterface' smart constructor.
deleteNetworkInterface :: Text -> DeleteNetworkInterface
deleteNetworkInterface pNetworkInterfaceId =
    DeleteNetworkInterface'
    { _dniirqDryRun = Nothing
    , _dniirqNetworkInterfaceId = pNetworkInterfaceId
    }

-- | Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
dniirqDryRun :: Lens' DeleteNetworkInterface (Maybe Bool)
dniirqDryRun = lens _dniirqDryRun (\ s a -> s{_dniirqDryRun = a});

-- | The ID of the network interface.
dniirqNetworkInterfaceId :: Lens' DeleteNetworkInterface Text
dniirqNetworkInterfaceId = lens _dniirqNetworkInterfaceId (\ s a -> s{_dniirqNetworkInterfaceId = a});

instance AWSRequest DeleteNetworkInterface where
        type Sv DeleteNetworkInterface = EC2
        type Rs DeleteNetworkInterface =
             DeleteNetworkInterfaceResponse
        request = post
        response
          = receiveNull DeleteNetworkInterfaceResponse'

instance ToHeaders DeleteNetworkInterface where
        toHeaders = const mempty

instance ToPath DeleteNetworkInterface where
        toPath = const "/"

instance ToQuery DeleteNetworkInterface where
        toQuery DeleteNetworkInterface'{..}
          = mconcat
              ["Action" =:
                 ("DeleteNetworkInterface" :: ByteString),
               "Version" =: ("2015-04-15" :: ByteString),
               "DryRun" =: _dniirqDryRun,
               "NetworkInterfaceId" =: _dniirqNetworkInterfaceId]

-- | /See:/ 'deleteNetworkInterfaceResponse' smart constructor.
data DeleteNetworkInterfaceResponse =
    DeleteNetworkInterfaceResponse'
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | 'DeleteNetworkInterfaceResponse' smart constructor.
deleteNetworkInterfaceResponse :: DeleteNetworkInterfaceResponse
deleteNetworkInterfaceResponse = DeleteNetworkInterfaceResponse'
