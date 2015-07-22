{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.CreateFlowLogs
-- Copyright   : (c) 2013-2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)
--
-- Creates one or more flow logs to capture IP traffic for a specific
-- network interface, subnet, or VPC. Flow logs are delivered to a
-- specified log group in Amazon CloudWatch Logs. If you specify a VPC or
-- subnet in the request, a log stream is created in CloudWatch Logs for
-- each network interface in the subnet or VPC. Log streams can include
-- information about accepted and rejected traffic to a network interface.
-- You can view the data in your log streams using Amazon CloudWatch Logs.
--
-- In your request, you must also specify an IAM role that has permission
-- to publish logs to CloudWatch Logs.
--
-- <http://docs.aws.amazon.com/AWSEC2/latest/APIReference/ApiReference-query-CreateFlowLogs.html>
module Network.AWS.EC2.CreateFlowLogs
    (
    -- * Request
      CreateFlowLogs
    -- ** Request constructor
    , createFlowLogs
    -- ** Request lenses
    , cflrqClientToken
    , cflrqResourceIds
    , cflrqResourceType
    , cflrqTrafficType
    , cflrqLogGroupName
    , cflrqDeliverLogsPermissionARN

    -- * Response
    , CreateFlowLogsResponse
    -- ** Response constructor
    , createFlowLogsResponse
    -- ** Response lenses
    , cflrsUnsuccessful
    , cflrsClientToken
    , cflrsFlowLogIds
    , cflrsStatus
    ) where

import           Network.AWS.EC2.Types
import           Network.AWS.Prelude
import           Network.AWS.Request
import           Network.AWS.Response

-- | /See:/ 'createFlowLogs' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'cflrqClientToken'
--
-- * 'cflrqResourceIds'
--
-- * 'cflrqResourceType'
--
-- * 'cflrqTrafficType'
--
-- * 'cflrqLogGroupName'
--
-- * 'cflrqDeliverLogsPermissionARN'
data CreateFlowLogs = CreateFlowLogs'
    { _cflrqClientToken              :: !(Maybe Text)
    , _cflrqResourceIds              :: ![Text]
    , _cflrqResourceType             :: !FlowLogsResourceType
    , _cflrqTrafficType              :: !TrafficType
    , _cflrqLogGroupName             :: !Text
    , _cflrqDeliverLogsPermissionARN :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | 'CreateFlowLogs' smart constructor.
createFlowLogs :: FlowLogsResourceType -> TrafficType -> Text -> Text -> CreateFlowLogs
createFlowLogs pResourceType pTrafficType pLogGroupName pDeliverLogsPermissionARN =
    CreateFlowLogs'
    { _cflrqClientToken = Nothing
    , _cflrqResourceIds = mempty
    , _cflrqResourceType = pResourceType
    , _cflrqTrafficType = pTrafficType
    , _cflrqLogGroupName = pLogGroupName
    , _cflrqDeliverLogsPermissionARN = pDeliverLogsPermissionARN
    }

-- | Unique, case-sensitive identifier you provide to ensure the idempotency
-- of the request. For more information, see
-- <http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html How to Ensure Idempotency>.
cflrqClientToken :: Lens' CreateFlowLogs (Maybe Text)
cflrqClientToken = lens _cflrqClientToken (\ s a -> s{_cflrqClientToken = a});

-- | One or more subnet, network interface, or VPC IDs.
cflrqResourceIds :: Lens' CreateFlowLogs [Text]
cflrqResourceIds = lens _cflrqResourceIds (\ s a -> s{_cflrqResourceIds = a});

-- | The type of resource on which to create the flow log.
cflrqResourceType :: Lens' CreateFlowLogs FlowLogsResourceType
cflrqResourceType = lens _cflrqResourceType (\ s a -> s{_cflrqResourceType = a});

-- | The type of traffic to log.
cflrqTrafficType :: Lens' CreateFlowLogs TrafficType
cflrqTrafficType = lens _cflrqTrafficType (\ s a -> s{_cflrqTrafficType = a});

-- | The name of the CloudWatch log group.
cflrqLogGroupName :: Lens' CreateFlowLogs Text
cflrqLogGroupName = lens _cflrqLogGroupName (\ s a -> s{_cflrqLogGroupName = a});

-- | The ARN for the IAM role that\'s used to post flow logs to a CloudWatch
-- Logs log group.
cflrqDeliverLogsPermissionARN :: Lens' CreateFlowLogs Text
cflrqDeliverLogsPermissionARN = lens _cflrqDeliverLogsPermissionARN (\ s a -> s{_cflrqDeliverLogsPermissionARN = a});

instance AWSRequest CreateFlowLogs where
        type Sv CreateFlowLogs = EC2
        type Rs CreateFlowLogs = CreateFlowLogsResponse
        request = post
        response
          = receiveXML
              (\ s h x ->
                 CreateFlowLogsResponse' <$>
                   (x .@? "unsuccessful" .!@ mempty >>=
                      may (parseXMLList "item"))
                     <*> (x .@? "clientToken")
                     <*>
                     (x .@? "flowLogIdSet" .!@ mempty >>=
                        may (parseXMLList "item"))
                     <*> (pure (fromEnum s)))

instance ToHeaders CreateFlowLogs where
        toHeaders = const mempty

instance ToPath CreateFlowLogs where
        toPath = const "/"

instance ToQuery CreateFlowLogs where
        toQuery CreateFlowLogs'{..}
          = mconcat
              ["Action" =: ("CreateFlowLogs" :: ByteString),
               "Version" =: ("2015-04-15" :: ByteString),
               "ClientToken" =: _cflrqClientToken,
               toQueryList "item" _cflrqResourceIds,
               "ResourceType" =: _cflrqResourceType,
               "TrafficType" =: _cflrqTrafficType,
               "LogGroupName" =: _cflrqLogGroupName,
               "DeliverLogsPermissionArn" =:
                 _cflrqDeliverLogsPermissionARN]

-- | /See:/ 'createFlowLogsResponse' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'cflrsUnsuccessful'
--
-- * 'cflrsClientToken'
--
-- * 'cflrsFlowLogIds'
--
-- * 'cflrsStatus'
data CreateFlowLogsResponse = CreateFlowLogsResponse'
    { _cflrsUnsuccessful :: !(Maybe [UnsuccessfulItem])
    , _cflrsClientToken  :: !(Maybe Text)
    , _cflrsFlowLogIds   :: !(Maybe [Text])
    , _cflrsStatus       :: !Int
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | 'CreateFlowLogsResponse' smart constructor.
createFlowLogsResponse :: Int -> CreateFlowLogsResponse
createFlowLogsResponse pStatus =
    CreateFlowLogsResponse'
    { _cflrsUnsuccessful = Nothing
    , _cflrsClientToken = Nothing
    , _cflrsFlowLogIds = Nothing
    , _cflrsStatus = pStatus
    }

-- | Information about the flow logs that could not be created successfully.
cflrsUnsuccessful :: Lens' CreateFlowLogsResponse [UnsuccessfulItem]
cflrsUnsuccessful = lens _cflrsUnsuccessful (\ s a -> s{_cflrsUnsuccessful = a}) . _Default;

-- | Unique, case-sensitive identifier you provide to ensure the idempotency
-- of the request.
cflrsClientToken :: Lens' CreateFlowLogsResponse (Maybe Text)
cflrsClientToken = lens _cflrsClientToken (\ s a -> s{_cflrsClientToken = a});

-- | The IDs of the flow logs.
cflrsFlowLogIds :: Lens' CreateFlowLogsResponse [Text]
cflrsFlowLogIds = lens _cflrsFlowLogIds (\ s a -> s{_cflrsFlowLogIds = a}) . _Default;

-- | FIXME: Undocumented member.
cflrsStatus :: Lens' CreateFlowLogsResponse Int
cflrsStatus = lens _cflrsStatus (\ s a -> s{_cflrsStatus = a});
