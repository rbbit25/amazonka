{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.OpsWorks.DescribeServiceErrors
-- Copyright   : (c) 2013-2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)
--
-- Describes AWS OpsWorks service errors.
--
-- __Required Permissions__: To use this action, an IAM user must have a
-- Show, Deploy, or Manage permissions level for the stack, or an attached
-- policy that explicitly grants permissions. For more information on user
-- permissions, see
-- <http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html Managing User Permissions>.
--
-- <http://docs.aws.amazon.com/opsworks/latest/APIReference/API_DescribeServiceErrors.html>
module Network.AWS.OpsWorks.DescribeServiceErrors
    (
    -- * Request
      DescribeServiceErrors
    -- ** Request constructor
    , describeServiceErrors
    -- ** Request lenses
    , dserqInstanceId
    , dserqServiceErrorIds
    , dserqStackId

    -- * Response
    , DescribeServiceErrorsResponse
    -- ** Response constructor
    , describeServiceErrorsResponse
    -- ** Response lenses
    , dsersServiceErrors
    , dsersStatus
    ) where

import           Network.AWS.OpsWorks.Types
import           Network.AWS.Prelude
import           Network.AWS.Request
import           Network.AWS.Response

-- | /See:/ 'describeServiceErrors' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'dserqInstanceId'
--
-- * 'dserqServiceErrorIds'
--
-- * 'dserqStackId'
data DescribeServiceErrors = DescribeServiceErrors'
    { _dserqInstanceId      :: !(Maybe Text)
    , _dserqServiceErrorIds :: !(Maybe [Text])
    , _dserqStackId         :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | 'DescribeServiceErrors' smart constructor.
describeServiceErrors :: DescribeServiceErrors
describeServiceErrors =
    DescribeServiceErrors'
    { _dserqInstanceId = Nothing
    , _dserqServiceErrorIds = Nothing
    , _dserqStackId = Nothing
    }

-- | The instance ID. If you use this parameter, @DescribeServiceErrors@
-- returns descriptions of the errors associated with the specified
-- instance.
dserqInstanceId :: Lens' DescribeServiceErrors (Maybe Text)
dserqInstanceId = lens _dserqInstanceId (\ s a -> s{_dserqInstanceId = a});

-- | An array of service error IDs. If you use this parameter,
-- @DescribeServiceErrors@ returns descriptions of the specified errors.
-- Otherwise, it returns a description of every error.
dserqServiceErrorIds :: Lens' DescribeServiceErrors [Text]
dserqServiceErrorIds = lens _dserqServiceErrorIds (\ s a -> s{_dserqServiceErrorIds = a}) . _Default;

-- | The stack ID. If you use this parameter, @DescribeServiceErrors@ returns
-- descriptions of the errors associated with the specified stack.
dserqStackId :: Lens' DescribeServiceErrors (Maybe Text)
dserqStackId = lens _dserqStackId (\ s a -> s{_dserqStackId = a});

instance AWSRequest DescribeServiceErrors where
        type Sv DescribeServiceErrors = OpsWorks
        type Rs DescribeServiceErrors =
             DescribeServiceErrorsResponse
        request = postJSON
        response
          = receiveJSON
              (\ s h x ->
                 DescribeServiceErrorsResponse' <$>
                   (x .?> "ServiceErrors" .!@ mempty) <*>
                     (pure (fromEnum s)))

instance ToHeaders DescribeServiceErrors where
        toHeaders
          = const
              (mconcat
                 ["X-Amz-Target" =#
                    ("OpsWorks_20130218.DescribeServiceErrors" ::
                       ByteString),
                  "Content-Type" =#
                    ("application/x-amz-json-1.1" :: ByteString)])

instance ToJSON DescribeServiceErrors where
        toJSON DescribeServiceErrors'{..}
          = object
              ["InstanceId" .= _dserqInstanceId,
               "ServiceErrorIds" .= _dserqServiceErrorIds,
               "StackId" .= _dserqStackId]

instance ToPath DescribeServiceErrors where
        toPath = const "/"

instance ToQuery DescribeServiceErrors where
        toQuery = const mempty

-- | Contains the response to a @DescribeServiceErrors@ request.
--
-- /See:/ 'describeServiceErrorsResponse' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'dsersServiceErrors'
--
-- * 'dsersStatus'
data DescribeServiceErrorsResponse = DescribeServiceErrorsResponse'
    { _dsersServiceErrors :: !(Maybe [ServiceError'])
    , _dsersStatus        :: !Int
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | 'DescribeServiceErrorsResponse' smart constructor.
describeServiceErrorsResponse :: Int -> DescribeServiceErrorsResponse
describeServiceErrorsResponse pStatus =
    DescribeServiceErrorsResponse'
    { _dsersServiceErrors = Nothing
    , _dsersStatus = pStatus
    }

-- | An array of @ServiceError@ objects that describe the specified service
-- errors.
dsersServiceErrors :: Lens' DescribeServiceErrorsResponse [ServiceError']
dsersServiceErrors = lens _dsersServiceErrors (\ s a -> s{_dsersServiceErrors = a}) . _Default;

-- | FIXME: Undocumented member.
dsersStatus :: Lens' DescribeServiceErrorsResponse Int
dsersStatus = lens _dsersStatus (\ s a -> s{_dsersStatus = a});
