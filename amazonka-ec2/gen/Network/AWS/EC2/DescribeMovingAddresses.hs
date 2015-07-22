{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.DescribeMovingAddresses
-- Copyright   : (c) 2013-2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)
--
-- Describes your Elastic IP addresses that are being moved to the EC2-VPC
-- platform, or that are being restored to the EC2-Classic platform. This
-- request does not return information about any other Elastic IP addresses
-- in your account.
--
-- <http://docs.aws.amazon.com/AWSEC2/latest/APIReference/ApiReference-query-DescribeMovingAddresses.html>
module Network.AWS.EC2.DescribeMovingAddresses
    (
    -- * Request
      DescribeMovingAddresses
    -- ** Request constructor
    , describeMovingAddresses
    -- ** Request lenses
    , dmarqPublicIPs
    , dmarqFilters
    , dmarqNextToken
    , dmarqDryRun
    , dmarqMaxResults

    -- * Response
    , DescribeMovingAddressesResponse
    -- ** Response constructor
    , describeMovingAddressesResponse
    -- ** Response lenses
    , dmarsMovingAddressStatuses
    , dmarsNextToken
    , dmarsStatus
    ) where

import           Network.AWS.EC2.Types
import           Network.AWS.Prelude
import           Network.AWS.Request
import           Network.AWS.Response

-- | /See:/ 'describeMovingAddresses' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'dmarqPublicIPs'
--
-- * 'dmarqFilters'
--
-- * 'dmarqNextToken'
--
-- * 'dmarqDryRun'
--
-- * 'dmarqMaxResults'
data DescribeMovingAddresses = DescribeMovingAddresses'
    { _dmarqPublicIPs  :: !(Maybe [Text])
    , _dmarqFilters    :: !(Maybe [Filter])
    , _dmarqNextToken  :: !(Maybe Text)
    , _dmarqDryRun     :: !(Maybe Bool)
    , _dmarqMaxResults :: !(Maybe Int)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | 'DescribeMovingAddresses' smart constructor.
describeMovingAddresses :: DescribeMovingAddresses
describeMovingAddresses =
    DescribeMovingAddresses'
    { _dmarqPublicIPs = Nothing
    , _dmarqFilters = Nothing
    , _dmarqNextToken = Nothing
    , _dmarqDryRun = Nothing
    , _dmarqMaxResults = Nothing
    }

-- | One or more Elastic IP addresses.
dmarqPublicIPs :: Lens' DescribeMovingAddresses [Text]
dmarqPublicIPs = lens _dmarqPublicIPs (\ s a -> s{_dmarqPublicIPs = a}) . _Default;

-- | One or more filters.
--
-- -   @moving-status@ - The status of the Elastic IP address
--     (@MovingToVpc@ | @RestoringToClassic@).
--
dmarqFilters :: Lens' DescribeMovingAddresses [Filter]
dmarqFilters = lens _dmarqFilters (\ s a -> s{_dmarqFilters = a}) . _Default;

-- | The token to use to retrieve the next page of results.
dmarqNextToken :: Lens' DescribeMovingAddresses (Maybe Text)
dmarqNextToken = lens _dmarqNextToken (\ s a -> s{_dmarqNextToken = a});

-- | Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
dmarqDryRun :: Lens' DescribeMovingAddresses (Maybe Bool)
dmarqDryRun = lens _dmarqDryRun (\ s a -> s{_dmarqDryRun = a});

-- | The maximum number of results to return for the request in a single
-- page. The remaining results of the initial request can be seen by
-- sending another request with the returned @NextToken@ value. This value
-- can be between 5 and 1000; if @MaxResults@ is given a value outside of
-- this range, an error is returned.
--
-- Default: If no value is provided, the default is 1000.
dmarqMaxResults :: Lens' DescribeMovingAddresses (Maybe Int)
dmarqMaxResults = lens _dmarqMaxResults (\ s a -> s{_dmarqMaxResults = a});

instance AWSRequest DescribeMovingAddresses where
        type Sv DescribeMovingAddresses = EC2
        type Rs DescribeMovingAddresses =
             DescribeMovingAddressesResponse
        request = post
        response
          = receiveXML
              (\ s h x ->
                 DescribeMovingAddressesResponse' <$>
                   (x .@? "movingAddressStatusSet" .!@ mempty >>=
                      may (parseXMLList "item"))
                     <*> (x .@? "nextToken")
                     <*> (pure (fromEnum s)))

instance ToHeaders DescribeMovingAddresses where
        toHeaders = const mempty

instance ToPath DescribeMovingAddresses where
        toPath = const "/"

instance ToQuery DescribeMovingAddresses where
        toQuery DescribeMovingAddresses'{..}
          = mconcat
              ["Action" =:
                 ("DescribeMovingAddresses" :: ByteString),
               "Version" =: ("2015-04-15" :: ByteString),
               toQuery (toQueryList "item" <$> _dmarqPublicIPs),
               toQuery (toQueryList "Filter" <$> _dmarqFilters),
               "NextToken" =: _dmarqNextToken,
               "DryRun" =: _dmarqDryRun,
               "MaxResults" =: _dmarqMaxResults]

-- | /See:/ 'describeMovingAddressesResponse' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'dmarsMovingAddressStatuses'
--
-- * 'dmarsNextToken'
--
-- * 'dmarsStatus'
data DescribeMovingAddressesResponse = DescribeMovingAddressesResponse'
    { _dmarsMovingAddressStatuses :: !(Maybe [MovingAddressStatus])
    , _dmarsNextToken             :: !(Maybe Text)
    , _dmarsStatus                :: !Int
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | 'DescribeMovingAddressesResponse' smart constructor.
describeMovingAddressesResponse :: Int -> DescribeMovingAddressesResponse
describeMovingAddressesResponse pStatus =
    DescribeMovingAddressesResponse'
    { _dmarsMovingAddressStatuses = Nothing
    , _dmarsNextToken = Nothing
    , _dmarsStatus = pStatus
    }

-- | The status for each Elastic IP address.
dmarsMovingAddressStatuses :: Lens' DescribeMovingAddressesResponse [MovingAddressStatus]
dmarsMovingAddressStatuses = lens _dmarsMovingAddressStatuses (\ s a -> s{_dmarsMovingAddressStatuses = a}) . _Default;

-- | The token to use to retrieve the next page of results. This value is
-- @null@ when there are no more results to return.
dmarsNextToken :: Lens' DescribeMovingAddressesResponse (Maybe Text)
dmarsNextToken = lens _dmarsNextToken (\ s a -> s{_dmarsNextToken = a});

-- | FIXME: Undocumented member.
dmarsStatus :: Lens' DescribeMovingAddressesResponse Int
dmarsStatus = lens _dmarsStatus (\ s a -> s{_dmarsStatus = a});
