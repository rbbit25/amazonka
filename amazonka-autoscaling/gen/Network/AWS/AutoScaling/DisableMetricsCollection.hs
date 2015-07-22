{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AutoScaling.DisableMetricsCollection
-- Copyright   : (c) 2013-2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)
--
-- Disables monitoring of the specified metrics for the specified Auto
-- Scaling group.
--
-- <http://docs.aws.amazon.com/AutoScaling/latest/APIReference/API_DisableMetricsCollection.html>
module Network.AWS.AutoScaling.DisableMetricsCollection
    (
    -- * Request
      DisableMetricsCollection
    -- ** Request constructor
    , disableMetricsCollection
    -- ** Request lenses
    , dmcrqMetrics
    , dmcrqAutoScalingGroupName

    -- * Response
    , DisableMetricsCollectionResponse
    -- ** Response constructor
    , disableMetricsCollectionResponse
    ) where

import           Network.AWS.AutoScaling.Types
import           Network.AWS.Prelude
import           Network.AWS.Request
import           Network.AWS.Response

-- | /See:/ 'disableMetricsCollection' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'dmcrqMetrics'
--
-- * 'dmcrqAutoScalingGroupName'
data DisableMetricsCollection = DisableMetricsCollection'
    { _dmcrqMetrics              :: !(Maybe [Text])
    , _dmcrqAutoScalingGroupName :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | 'DisableMetricsCollection' smart constructor.
disableMetricsCollection :: Text -> DisableMetricsCollection
disableMetricsCollection pAutoScalingGroupName =
    DisableMetricsCollection'
    { _dmcrqMetrics = Nothing
    , _dmcrqAutoScalingGroupName = pAutoScalingGroupName
    }

-- | One or more metrics. If you omit this parameter, all metrics are
-- disabled.
--
-- -   @GroupMinSize@
--
-- -   @GroupMaxSize@
--
-- -   @GroupDesiredCapacity@
--
-- -   @GroupInServiceInstances@
--
-- -   @GroupPendingInstances@
--
-- -   @GroupStandbyInstances@
--
-- -   @GroupTerminatingInstances@
--
-- -   @GroupTotalInstances@
--
dmcrqMetrics :: Lens' DisableMetricsCollection [Text]
dmcrqMetrics = lens _dmcrqMetrics (\ s a -> s{_dmcrqMetrics = a}) . _Default;

-- | The name or Amazon Resource Name (ARN) of the group.
dmcrqAutoScalingGroupName :: Lens' DisableMetricsCollection Text
dmcrqAutoScalingGroupName = lens _dmcrqAutoScalingGroupName (\ s a -> s{_dmcrqAutoScalingGroupName = a});

instance AWSRequest DisableMetricsCollection where
        type Sv DisableMetricsCollection = AutoScaling
        type Rs DisableMetricsCollection =
             DisableMetricsCollectionResponse
        request = post
        response
          = receiveNull DisableMetricsCollectionResponse'

instance ToHeaders DisableMetricsCollection where
        toHeaders = const mempty

instance ToPath DisableMetricsCollection where
        toPath = const "/"

instance ToQuery DisableMetricsCollection where
        toQuery DisableMetricsCollection'{..}
          = mconcat
              ["Action" =:
                 ("DisableMetricsCollection" :: ByteString),
               "Version" =: ("2011-01-01" :: ByteString),
               "Metrics" =:
                 toQuery (toQueryList "member" <$> _dmcrqMetrics),
               "AutoScalingGroupName" =: _dmcrqAutoScalingGroupName]

-- | /See:/ 'disableMetricsCollectionResponse' smart constructor.
data DisableMetricsCollectionResponse =
    DisableMetricsCollectionResponse'
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | 'DisableMetricsCollectionResponse' smart constructor.
disableMetricsCollectionResponse :: DisableMetricsCollectionResponse
disableMetricsCollectionResponse = DisableMetricsCollectionResponse'
