{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.DescribeReservedInstancesListings
-- Copyright   : (c) 2013-2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)
--
-- Describes your account\'s Reserved Instance listings in the Reserved
-- Instance Marketplace.
--
-- The Reserved Instance Marketplace matches sellers who want to resell
-- Reserved Instance capacity that they no longer need with buyers who want
-- to purchase additional capacity. Reserved Instances bought and sold
-- through the Reserved Instance Marketplace work like any other Reserved
-- Instances.
--
-- As a seller, you choose to list some or all of your Reserved Instances,
-- and you specify the upfront price to receive for them. Your Reserved
-- Instances are then listed in the Reserved Instance Marketplace and are
-- available for purchase.
--
-- As a buyer, you specify the configuration of the Reserved Instance to
-- purchase, and the Marketplace matches what you\'re searching for with
-- what\'s available. The Marketplace first sells the lowest priced
-- Reserved Instances to you, and continues to sell available Reserved
-- Instance listings to you until your demand is met. You are charged based
-- on the total price of all of the listings that you purchase.
--
-- For more information, see
-- <http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ri-market-general.html Reserved Instance Marketplace>
-- in the /Amazon Elastic Compute Cloud User Guide/.
--
-- <http://docs.aws.amazon.com/AWSEC2/latest/APIReference/ApiReference-query-DescribeReservedInstancesListings.html>
module Network.AWS.EC2.DescribeReservedInstancesListings
    (
    -- * Request
      DescribeReservedInstancesListings
    -- ** Request constructor
    , describeReservedInstancesListings
    -- ** Request lenses
    , drilrqFilters
    , drilrqReservedInstancesId
    , drilrqReservedInstancesListingId

    -- * Response
    , DescribeReservedInstancesListingsResponse
    -- ** Response constructor
    , describeReservedInstancesListingsResponse
    -- ** Response lenses
    , drilrsReservedInstancesListings
    , drilrsStatus
    ) where

import           Network.AWS.EC2.Types
import           Network.AWS.Prelude
import           Network.AWS.Request
import           Network.AWS.Response

-- | /See:/ 'describeReservedInstancesListings' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'drilrqFilters'
--
-- * 'drilrqReservedInstancesId'
--
-- * 'drilrqReservedInstancesListingId'
data DescribeReservedInstancesListings = DescribeReservedInstancesListings'
    { _drilrqFilters                    :: !(Maybe [Filter])
    , _drilrqReservedInstancesId        :: !(Maybe Text)
    , _drilrqReservedInstancesListingId :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | 'DescribeReservedInstancesListings' smart constructor.
describeReservedInstancesListings :: DescribeReservedInstancesListings
describeReservedInstancesListings =
    DescribeReservedInstancesListings'
    { _drilrqFilters = Nothing
    , _drilrqReservedInstancesId = Nothing
    , _drilrqReservedInstancesListingId = Nothing
    }

-- | One or more filters.
--
-- -   @reserved-instances-id@ - The ID of the Reserved Instances.
--
-- -   @reserved-instances-listing-id@ - The ID of the Reserved Instances
--     listing.
--
-- -   @status@ - The status of the Reserved Instance listing (@pending@ |
--     @active@ | @cancelled@ | @closed@).
--
-- -   @status-message@ - The reason for the status.
--
drilrqFilters :: Lens' DescribeReservedInstancesListings [Filter]
drilrqFilters = lens _drilrqFilters (\ s a -> s{_drilrqFilters = a}) . _Default;

-- | One or more Reserved Instance IDs.
drilrqReservedInstancesId :: Lens' DescribeReservedInstancesListings (Maybe Text)
drilrqReservedInstancesId = lens _drilrqReservedInstancesId (\ s a -> s{_drilrqReservedInstancesId = a});

-- | One or more Reserved Instance Listing IDs.
drilrqReservedInstancesListingId :: Lens' DescribeReservedInstancesListings (Maybe Text)
drilrqReservedInstancesListingId = lens _drilrqReservedInstancesListingId (\ s a -> s{_drilrqReservedInstancesListingId = a});

instance AWSRequest DescribeReservedInstancesListings
         where
        type Sv DescribeReservedInstancesListings = EC2
        type Rs DescribeReservedInstancesListings =
             DescribeReservedInstancesListingsResponse
        request = post
        response
          = receiveXML
              (\ s h x ->
                 DescribeReservedInstancesListingsResponse' <$>
                   (x .@? "reservedInstancesListingsSet" .!@ mempty >>=
                      may (parseXMLList "item"))
                     <*> (pure (fromEnum s)))

instance ToHeaders DescribeReservedInstancesListings
         where
        toHeaders = const mempty

instance ToPath DescribeReservedInstancesListings
         where
        toPath = const "/"

instance ToQuery DescribeReservedInstancesListings
         where
        toQuery DescribeReservedInstancesListings'{..}
          = mconcat
              ["Action" =:
                 ("DescribeReservedInstancesListings" :: ByteString),
               "Version" =: ("2015-04-15" :: ByteString),
               toQuery (toQueryList "Filter" <$> _drilrqFilters),
               "ReservedInstancesId" =: _drilrqReservedInstancesId,
               "ReservedInstancesListingId" =:
                 _drilrqReservedInstancesListingId]

-- | /See:/ 'describeReservedInstancesListingsResponse' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'drilrsReservedInstancesListings'
--
-- * 'drilrsStatus'
data DescribeReservedInstancesListingsResponse = DescribeReservedInstancesListingsResponse'
    { _drilrsReservedInstancesListings :: !(Maybe [ReservedInstancesListing])
    , _drilrsStatus                    :: !Int
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | 'DescribeReservedInstancesListingsResponse' smart constructor.
describeReservedInstancesListingsResponse :: Int -> DescribeReservedInstancesListingsResponse
describeReservedInstancesListingsResponse pStatus =
    DescribeReservedInstancesListingsResponse'
    { _drilrsReservedInstancesListings = Nothing
    , _drilrsStatus = pStatus
    }

-- | Information about the Reserved Instance listing.
drilrsReservedInstancesListings :: Lens' DescribeReservedInstancesListingsResponse [ReservedInstancesListing]
drilrsReservedInstancesListings = lens _drilrsReservedInstancesListings (\ s a -> s{_drilrsReservedInstancesListings = a}) . _Default;

-- | FIXME: Undocumented member.
drilrsStatus :: Lens' DescribeReservedInstancesListingsResponse Int
drilrsStatus = lens _drilrsStatus (\ s a -> s{_drilrsStatus = a});
