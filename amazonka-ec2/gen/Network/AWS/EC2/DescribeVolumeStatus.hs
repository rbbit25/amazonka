{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.DescribeVolumeStatus
-- Copyright   : (c) 2013-2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)
--
-- Describes the status of the specified volumes. Volume status provides
-- the result of the checks performed on your volumes to determine events
-- that can impair the performance of your volumes. The performance of a
-- volume can be affected if an issue occurs on the volume\'s underlying
-- host. If the volume\'s underlying host experiences a power outage or
-- system issue, after the system is restored, there could be data
-- inconsistencies on the volume. Volume events notify you if this occurs.
-- Volume actions notify you if any action needs to be taken in response to
-- the event.
--
-- The @DescribeVolumeStatus@ operation provides the following information
-- about the specified volumes:
--
-- /Status/: Reflects the current status of the volume. The possible values
-- are @ok@, @impaired@ , @warning@, or @insufficient-data@. If all checks
-- pass, the overall status of the volume is @ok@. If the check fails, the
-- overall status is @impaired@. If the status is @insufficient-data@, then
-- the checks may still be taking place on your volume at the time. We
-- recommend that you retry the request. For more information on volume
-- status, see
-- <http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/monitoring-volume-status.html Monitoring the Status of Your Volumes>.
--
-- /Events/: Reflect the cause of a volume status and may require you to
-- take action. For example, if your volume returns an @impaired@ status,
-- then the volume event might be @potential-data-inconsistency@. This
-- means that your volume has been affected by an issue with the underlying
-- host, has all I\/O operations disabled, and may have inconsistent data.
--
-- /Actions/: Reflect the actions you may have to take in response to an
-- event. For example, if the status of the volume is @impaired@ and the
-- volume event shows @potential-data-inconsistency@, then the action shows
-- @enable-volume-io@. This means that you may want to enable the I\/O
-- operations for the volume by calling the EnableVolumeIO action and then
-- check the volume for data consistency.
--
-- Volume status is based on the volume status checks, and does not reflect
-- the volume state. Therefore, volume status does not indicate volumes in
-- the @error@ state (for example, when a volume is incapable of accepting
-- I\/O.)
--
-- <http://docs.aws.amazon.com/AWSEC2/latest/APIReference/ApiReference-query-DescribeVolumeStatus.html>
module Network.AWS.EC2.DescribeVolumeStatus
    (
    -- * Request
      DescribeVolumeStatus
    -- ** Request constructor
    , describeVolumeStatus
    -- ** Request lenses
    , dvssrqFilters
    , dvssrqVolumeIds
    , dvssrqNextToken
    , dvssrqDryRun
    , dvssrqMaxResults

    -- * Response
    , DescribeVolumeStatusResponse
    -- ** Response constructor
    , describeVolumeStatusResponse
    -- ** Response lenses
    , dvssrsNextToken
    , dvssrsVolumeStatuses
    , dvssrsStatus
    ) where

import           Network.AWS.EC2.Types
import           Network.AWS.Pager
import           Network.AWS.Prelude
import           Network.AWS.Request
import           Network.AWS.Response

-- | /See:/ 'describeVolumeStatus' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'dvssrqFilters'
--
-- * 'dvssrqVolumeIds'
--
-- * 'dvssrqNextToken'
--
-- * 'dvssrqDryRun'
--
-- * 'dvssrqMaxResults'
data DescribeVolumeStatus = DescribeVolumeStatus'
    { _dvssrqFilters    :: !(Maybe [Filter])
    , _dvssrqVolumeIds  :: !(Maybe [Text])
    , _dvssrqNextToken  :: !(Maybe Text)
    , _dvssrqDryRun     :: !(Maybe Bool)
    , _dvssrqMaxResults :: !(Maybe Int)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | 'DescribeVolumeStatus' smart constructor.
describeVolumeStatus :: DescribeVolumeStatus
describeVolumeStatus =
    DescribeVolumeStatus'
    { _dvssrqFilters = Nothing
    , _dvssrqVolumeIds = Nothing
    , _dvssrqNextToken = Nothing
    , _dvssrqDryRun = Nothing
    , _dvssrqMaxResults = Nothing
    }

-- | One or more filters.
--
-- -   @action.code@ - The action code for the event (for example,
--     @enable-volume-io@).
--
-- -   @action.description@ - A description of the action.
--
-- -   @action.event-id@ - The event ID associated with the action.
--
-- -   @availability-zone@ - The Availability Zone of the instance.
--
-- -   @event.description@ - A description of the event.
--
-- -   @event.event-id@ - The event ID.
--
-- -   @event.event-type@ - The event type (for @io-enabled@: @passed@ |
--     @failed@; for @io-performance@: @io-performance:degraded@ |
--     @io-performance:severely-degraded@ | @io-performance:stalled@).
--
-- -   @event.not-after@ - The latest end time for the event.
--
-- -   @event.not-before@ - The earliest start time for the event.
--
-- -   @volume-status.details-name@ - The cause for @volume-status.status@
--     (@io-enabled@ | @io-performance@).
--
-- -   @volume-status.details-status@ - The status of
--     @volume-status.details-name@ (for @io-enabled@: @passed@ | @failed@;
--     for @io-performance@: @normal@ | @degraded@ | @severely-degraded@ |
--     @stalled@).
--
-- -   @volume-status.status@ - The status of the volume (@ok@ | @impaired@
--     | @warning@ | @insufficient-data@).
--
dvssrqFilters :: Lens' DescribeVolumeStatus [Filter]
dvssrqFilters = lens _dvssrqFilters (\ s a -> s{_dvssrqFilters = a}) . _Default;

-- | One or more volume IDs.
--
-- Default: Describes all your volumes.
dvssrqVolumeIds :: Lens' DescribeVolumeStatus [Text]
dvssrqVolumeIds = lens _dvssrqVolumeIds (\ s a -> s{_dvssrqVolumeIds = a}) . _Default;

-- | The @NextToken@ value to include in a future @DescribeVolumeStatus@
-- request. When the results of the request exceed @MaxResults@, this value
-- can be used to retrieve the next page of results. This value is @null@
-- when there are no more results to return.
dvssrqNextToken :: Lens' DescribeVolumeStatus (Maybe Text)
dvssrqNextToken = lens _dvssrqNextToken (\ s a -> s{_dvssrqNextToken = a});

-- | Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
dvssrqDryRun :: Lens' DescribeVolumeStatus (Maybe Bool)
dvssrqDryRun = lens _dvssrqDryRun (\ s a -> s{_dvssrqDryRun = a});

-- | The maximum number of volume results returned by @DescribeVolumeStatus@
-- in paginated output. When this parameter is used, the request only
-- returns @MaxResults@ results in a single page along with a @NextToken@
-- response element. The remaining results of the initial request can be
-- seen by sending another request with the returned @NextToken@ value.
-- This value can be between 5 and 1000; if @MaxResults@ is given a value
-- larger than 1000, only 1000 results are returned. If this parameter is
-- not used, then @DescribeVolumeStatus@ returns all results. You cannot
-- specify this parameter and the volume IDs parameter in the same request.
dvssrqMaxResults :: Lens' DescribeVolumeStatus (Maybe Int)
dvssrqMaxResults = lens _dvssrqMaxResults (\ s a -> s{_dvssrqMaxResults = a});

instance AWSPager DescribeVolumeStatus where
        page rq rs
          | stop (rs ^. dvssrsNextToken) = Nothing
          | stop (rs ^. dvssrsVolumeStatuses) = Nothing
          | otherwise =
            Just $ rq & dvssrqNextToken .~ rs ^. dvssrsNextToken

instance AWSRequest DescribeVolumeStatus where
        type Sv DescribeVolumeStatus = EC2
        type Rs DescribeVolumeStatus =
             DescribeVolumeStatusResponse
        request = post
        response
          = receiveXML
              (\ s h x ->
                 DescribeVolumeStatusResponse' <$>
                   (x .@? "nextToken") <*>
                     (x .@? "volumeStatusSet" .!@ mempty >>=
                        may (parseXMLList "item"))
                     <*> (pure (fromEnum s)))

instance ToHeaders DescribeVolumeStatus where
        toHeaders = const mempty

instance ToPath DescribeVolumeStatus where
        toPath = const "/"

instance ToQuery DescribeVolumeStatus where
        toQuery DescribeVolumeStatus'{..}
          = mconcat
              ["Action" =: ("DescribeVolumeStatus" :: ByteString),
               "Version" =: ("2015-04-15" :: ByteString),
               toQuery (toQueryList "Filter" <$> _dvssrqFilters),
               toQuery
                 (toQueryList "VolumeId" <$> _dvssrqVolumeIds),
               "NextToken" =: _dvssrqNextToken,
               "DryRun" =: _dvssrqDryRun,
               "MaxResults" =: _dvssrqMaxResults]

-- | /See:/ 'describeVolumeStatusResponse' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'dvssrsNextToken'
--
-- * 'dvssrsVolumeStatuses'
--
-- * 'dvssrsStatus'
data DescribeVolumeStatusResponse = DescribeVolumeStatusResponse'
    { _dvssrsNextToken      :: !(Maybe Text)
    , _dvssrsVolumeStatuses :: !(Maybe [VolumeStatusItem])
    , _dvssrsStatus         :: !Int
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | 'DescribeVolumeStatusResponse' smart constructor.
describeVolumeStatusResponse :: Int -> DescribeVolumeStatusResponse
describeVolumeStatusResponse pStatus =
    DescribeVolumeStatusResponse'
    { _dvssrsNextToken = Nothing
    , _dvssrsVolumeStatuses = Nothing
    , _dvssrsStatus = pStatus
    }

-- | The token to use to retrieve the next page of results. This value is
-- @null@ when there are no more results to return.
dvssrsNextToken :: Lens' DescribeVolumeStatusResponse (Maybe Text)
dvssrsNextToken = lens _dvssrsNextToken (\ s a -> s{_dvssrsNextToken = a});

-- | A list of volumes.
dvssrsVolumeStatuses :: Lens' DescribeVolumeStatusResponse [VolumeStatusItem]
dvssrsVolumeStatuses = lens _dvssrsVolumeStatuses (\ s a -> s{_dvssrsVolumeStatuses = a}) . _Default;

-- | FIXME: Undocumented member.
dvssrsStatus :: Lens' DescribeVolumeStatusResponse Int
dvssrsStatus = lens _dvssrsStatus (\ s a -> s{_dvssrsStatus = a});
