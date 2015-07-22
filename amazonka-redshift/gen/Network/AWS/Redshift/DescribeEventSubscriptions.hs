{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Redshift.DescribeEventSubscriptions
-- Copyright   : (c) 2013-2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)
--
-- Lists descriptions of all the Amazon Redshift event notifications
-- subscription for a customer account. If you specify a subscription name,
-- lists the description for that subscription.
--
-- <http://docs.aws.amazon.com/redshift/latest/APIReference/API_DescribeEventSubscriptions.html>
module Network.AWS.Redshift.DescribeEventSubscriptions
    (
    -- * Request
      DescribeEventSubscriptions
    -- ** Request constructor
    , describeEventSubscriptions
    -- ** Request lenses
    , drqSubscriptionName
    , drqMaxRecords
    , drqMarker

    -- * Response
    , DescribeEventSubscriptionsResponse
    -- ** Response constructor
    , describeEventSubscriptionsResponse
    -- ** Response lenses
    , drsEventSubscriptionsList
    , drsMarker
    , drsStatus
    ) where

import           Network.AWS.Pager
import           Network.AWS.Prelude
import           Network.AWS.Redshift.Types
import           Network.AWS.Request
import           Network.AWS.Response

-- |
--
-- /See:/ 'describeEventSubscriptions' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'drqSubscriptionName'
--
-- * 'drqMaxRecords'
--
-- * 'drqMarker'
data DescribeEventSubscriptions = DescribeEventSubscriptions'
    { _drqSubscriptionName :: !(Maybe Text)
    , _drqMaxRecords       :: !(Maybe Int)
    , _drqMarker           :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | 'DescribeEventSubscriptions' smart constructor.
describeEventSubscriptions :: DescribeEventSubscriptions
describeEventSubscriptions =
    DescribeEventSubscriptions'
    { _drqSubscriptionName = Nothing
    , _drqMaxRecords = Nothing
    , _drqMarker = Nothing
    }

-- | The name of the Amazon Redshift event notification subscription to be
-- described.
drqSubscriptionName :: Lens' DescribeEventSubscriptions (Maybe Text)
drqSubscriptionName = lens _drqSubscriptionName (\ s a -> s{_drqSubscriptionName = a});

-- | The maximum number of response records to return in each call. If the
-- number of remaining response records exceeds the specified @MaxRecords@
-- value, a value is returned in a @marker@ field of the response. You can
-- retrieve the next set of records by retrying the command with the
-- returned marker value.
--
-- Default: @100@
--
-- Constraints: minimum 20, maximum 100.
drqMaxRecords :: Lens' DescribeEventSubscriptions (Maybe Int)
drqMaxRecords = lens _drqMaxRecords (\ s a -> s{_drqMaxRecords = a});

-- | An optional parameter that specifies the starting point to return a set
-- of response records. When the results of a DescribeEventSubscriptions
-- request exceed the value specified in @MaxRecords@, AWS returns a value
-- in the @Marker@ field of the response. You can retrieve the next set of
-- response records by providing the returned marker value in the @Marker@
-- parameter and retrying the request.
drqMarker :: Lens' DescribeEventSubscriptions (Maybe Text)
drqMarker = lens _drqMarker (\ s a -> s{_drqMarker = a});

instance AWSPager DescribeEventSubscriptions where
        page rq rs
          | stop (rs ^. drsMarker) = Nothing
          | stop (rs ^. drsEventSubscriptionsList) = Nothing
          | otherwise =
            Just $ rq & drqMarker .~ rs ^. drsMarker

instance AWSRequest DescribeEventSubscriptions where
        type Sv DescribeEventSubscriptions = Redshift
        type Rs DescribeEventSubscriptions =
             DescribeEventSubscriptionsResponse
        request = post
        response
          = receiveXMLWrapper
              "DescribeEventSubscriptionsResult"
              (\ s h x ->
                 DescribeEventSubscriptionsResponse' <$>
                   (x .@? "EventSubscriptionsList" .!@ mempty >>=
                      may (parseXMLList "EventSubscription"))
                     <*> (x .@? "Marker")
                     <*> (pure (fromEnum s)))

instance ToHeaders DescribeEventSubscriptions where
        toHeaders = const mempty

instance ToPath DescribeEventSubscriptions where
        toPath = const "/"

instance ToQuery DescribeEventSubscriptions where
        toQuery DescribeEventSubscriptions'{..}
          = mconcat
              ["Action" =:
                 ("DescribeEventSubscriptions" :: ByteString),
               "Version" =: ("2012-12-01" :: ByteString),
               "SubscriptionName" =: _drqSubscriptionName,
               "MaxRecords" =: _drqMaxRecords,
               "Marker" =: _drqMarker]

-- |
--
-- /See:/ 'describeEventSubscriptionsResponse' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'drsEventSubscriptionsList'
--
-- * 'drsMarker'
--
-- * 'drsStatus'
data DescribeEventSubscriptionsResponse = DescribeEventSubscriptionsResponse'
    { _drsEventSubscriptionsList :: !(Maybe [EventSubscription])
    , _drsMarker                 :: !(Maybe Text)
    , _drsStatus                 :: !Int
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | 'DescribeEventSubscriptionsResponse' smart constructor.
describeEventSubscriptionsResponse :: Int -> DescribeEventSubscriptionsResponse
describeEventSubscriptionsResponse pStatus =
    DescribeEventSubscriptionsResponse'
    { _drsEventSubscriptionsList = Nothing
    , _drsMarker = Nothing
    , _drsStatus = pStatus
    }

-- | A list of event subscriptions.
drsEventSubscriptionsList :: Lens' DescribeEventSubscriptionsResponse [EventSubscription]
drsEventSubscriptionsList = lens _drsEventSubscriptionsList (\ s a -> s{_drsEventSubscriptionsList = a}) . _Default;

-- | A value that indicates the starting point for the next set of response
-- records in a subsequent request. If a value is returned in a response,
-- you can retrieve the next set of records by providing this returned
-- marker value in the @Marker@ parameter and retrying the command. If the
-- @Marker@ field is empty, all response records have been retrieved for
-- the request.
drsMarker :: Lens' DescribeEventSubscriptionsResponse (Maybe Text)
drsMarker = lens _drsMarker (\ s a -> s{_drsMarker = a});

-- | FIXME: Undocumented member.
drsStatus :: Lens' DescribeEventSubscriptionsResponse Int
drsStatus = lens _drsStatus (\ s a -> s{_drsStatus = a});
