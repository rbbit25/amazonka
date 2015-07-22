{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.DisableVPCClassicLink
-- Copyright   : (c) 2013-2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)
--
-- Disables ClassicLink for a VPC. You cannot disable ClassicLink for a VPC
-- that has EC2-Classic instances linked to it.
--
-- <http://docs.aws.amazon.com/AWSEC2/latest/APIReference/ApiReference-query-DisableVPCClassicLink.html>
module Network.AWS.EC2.DisableVPCClassicLink
    (
    -- * Request
      DisableVPCClassicLink
    -- ** Request constructor
    , disableVPCClassicLink
    -- ** Request lenses
    , dvpcclrqDryRun
    , dvpcclrqVPCId

    -- * Response
    , DisableVPCClassicLinkResponse
    -- ** Response constructor
    , disableVPCClassicLinkResponse
    -- ** Response lenses
    , dvpcclrsReturn
    , dvpcclrsStatus
    ) where

import           Network.AWS.EC2.Types
import           Network.AWS.Prelude
import           Network.AWS.Request
import           Network.AWS.Response

-- | /See:/ 'disableVPCClassicLink' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'dvpcclrqDryRun'
--
-- * 'dvpcclrqVPCId'
data DisableVPCClassicLink = DisableVPCClassicLink'
    { _dvpcclrqDryRun :: !(Maybe Bool)
    , _dvpcclrqVPCId  :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | 'DisableVPCClassicLink' smart constructor.
disableVPCClassicLink :: Text -> DisableVPCClassicLink
disableVPCClassicLink pVPCId =
    DisableVPCClassicLink'
    { _dvpcclrqDryRun = Nothing
    , _dvpcclrqVPCId = pVPCId
    }

-- | Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
dvpcclrqDryRun :: Lens' DisableVPCClassicLink (Maybe Bool)
dvpcclrqDryRun = lens _dvpcclrqDryRun (\ s a -> s{_dvpcclrqDryRun = a});

-- | The ID of the VPC.
dvpcclrqVPCId :: Lens' DisableVPCClassicLink Text
dvpcclrqVPCId = lens _dvpcclrqVPCId (\ s a -> s{_dvpcclrqVPCId = a});

instance AWSRequest DisableVPCClassicLink where
        type Sv DisableVPCClassicLink = EC2
        type Rs DisableVPCClassicLink =
             DisableVPCClassicLinkResponse
        request = post
        response
          = receiveXML
              (\ s h x ->
                 DisableVPCClassicLinkResponse' <$>
                   (x .@? "return") <*> (pure (fromEnum s)))

instance ToHeaders DisableVPCClassicLink where
        toHeaders = const mempty

instance ToPath DisableVPCClassicLink where
        toPath = const "/"

instance ToQuery DisableVPCClassicLink where
        toQuery DisableVPCClassicLink'{..}
          = mconcat
              ["Action" =: ("DisableVPCClassicLink" :: ByteString),
               "Version" =: ("2015-04-15" :: ByteString),
               "DryRun" =: _dvpcclrqDryRun,
               "VpcId" =: _dvpcclrqVPCId]

-- | /See:/ 'disableVPCClassicLinkResponse' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'dvpcclrsReturn'
--
-- * 'dvpcclrsStatus'
data DisableVPCClassicLinkResponse = DisableVPCClassicLinkResponse'
    { _dvpcclrsReturn :: !(Maybe Bool)
    , _dvpcclrsStatus :: !Int
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | 'DisableVPCClassicLinkResponse' smart constructor.
disableVPCClassicLinkResponse :: Int -> DisableVPCClassicLinkResponse
disableVPCClassicLinkResponse pStatus =
    DisableVPCClassicLinkResponse'
    { _dvpcclrsReturn = Nothing
    , _dvpcclrsStatus = pStatus
    }

-- | Returns @true@ if the request succeeds; otherwise, it returns an error.
dvpcclrsReturn :: Lens' DisableVPCClassicLinkResponse (Maybe Bool)
dvpcclrsReturn = lens _dvpcclrsReturn (\ s a -> s{_dvpcclrsReturn = a});

-- | FIXME: Undocumented member.
dvpcclrsStatus :: Lens' DisableVPCClassicLinkResponse Int
dvpcclrsStatus = lens _dvpcclrsStatus (\ s a -> s{_dvpcclrsStatus = a});
