{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DeviceFarm.ListJobs
-- Copyright   : (c) 2013-2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)
--
-- Gets information about jobs.
--
-- <http://docs.aws.amazon.com/devicefarm/latest/APIReference/API_ListJobs.html>
module Network.AWS.DeviceFarm.ListJobs
    (
    -- * Request
      ListJobs
    -- ** Request constructor
    , listJobs
    -- ** Request lenses
    , ljrqNextToken
    , ljrqArn

    -- * Response
    , ListJobsResponse
    -- ** Response constructor
    , listJobsResponse
    -- ** Response lenses
    , ljrsJobs
    , ljrsNextToken
    , ljrsStatus
    ) where

import           Network.AWS.DeviceFarm.Types
import           Network.AWS.Prelude
import           Network.AWS.Request
import           Network.AWS.Response

-- | Represents a request to the list jobs operation.
--
-- /See:/ 'listJobs' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'ljrqNextToken'
--
-- * 'ljrqArn'
data ListJobs = ListJobs'
    { _ljrqNextToken :: !(Maybe Text)
    , _ljrqArn       :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | 'ListJobs' smart constructor.
listJobs :: Text -> ListJobs
listJobs pArn =
    ListJobs'
    { _ljrqNextToken = Nothing
    , _ljrqArn = pArn
    }

-- | An identifier that was returned from the previous call to this
-- operation, which can be used to return the next set of items in the
-- list.
ljrqNextToken :: Lens' ListJobs (Maybe Text)
ljrqNextToken = lens _ljrqNextToken (\ s a -> s{_ljrqNextToken = a});

-- | The jobs\' ARNs.
ljrqArn :: Lens' ListJobs Text
ljrqArn = lens _ljrqArn (\ s a -> s{_ljrqArn = a});

instance AWSRequest ListJobs where
        type Sv ListJobs = DeviceFarm
        type Rs ListJobs = ListJobsResponse
        request = postJSON
        response
          = receiveJSON
              (\ s h x ->
                 ListJobsResponse' <$>
                   (x .?> "jobs" .!@ mempty) <*> (x .?> "nextToken") <*>
                     (pure (fromEnum s)))

instance ToHeaders ListJobs where
        toHeaders
          = const
              (mconcat
                 ["X-Amz-Target" =#
                    ("DeviceFarm_20150623.ListJobs" :: ByteString),
                  "Content-Type" =#
                    ("application/x-amz-json-1.1" :: ByteString)])

instance ToJSON ListJobs where
        toJSON ListJobs'{..}
          = object
              ["nextToken" .= _ljrqNextToken, "arn" .= _ljrqArn]

instance ToPath ListJobs where
        toPath = const "/"

instance ToQuery ListJobs where
        toQuery = const mempty

-- | Represents the result of a list jobs request.
--
-- /See:/ 'listJobsResponse' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'ljrsJobs'
--
-- * 'ljrsNextToken'
--
-- * 'ljrsStatus'
data ListJobsResponse = ListJobsResponse'
    { _ljrsJobs      :: !(Maybe [Job])
    , _ljrsNextToken :: !(Maybe Text)
    , _ljrsStatus    :: !Int
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | 'ListJobsResponse' smart constructor.
listJobsResponse :: Int -> ListJobsResponse
listJobsResponse pStatus =
    ListJobsResponse'
    { _ljrsJobs = Nothing
    , _ljrsNextToken = Nothing
    , _ljrsStatus = pStatus
    }

-- | Information about the jobs.
ljrsJobs :: Lens' ListJobsResponse [Job]
ljrsJobs = lens _ljrsJobs (\ s a -> s{_ljrsJobs = a}) . _Default;

-- | If the number of items that are returned is significantly large, this is
-- an identifier that is also returned, which can be used in a subsequent
-- call to this operation to return the next set of items in the list.
ljrsNextToken :: Lens' ListJobsResponse (Maybe Text)
ljrsNextToken = lens _ljrsNextToken (\ s a -> s{_ljrsNextToken = a});

-- | FIXME: Undocumented member.
ljrsStatus :: Lens' ListJobsResponse Int
ljrsStatus = lens _ljrsStatus (\ s a -> s{_ljrsStatus = a});
