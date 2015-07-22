{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DynamoDBStreams.GetRecords
-- Copyright   : (c) 2013-2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the stream records from a given shard.
--
-- Specify a shard iterator using the @ShardIterator@ parameter. The shard
-- iterator specifies the position in the shard from which you want to
-- start reading stream records sequentially. If there are no stream
-- records available in the portion of the shard that the iterator points
-- to, @GetRecords@ returns an empty list. Note that it might take multiple
-- calls to get to a portion of the shard that contains stream records.
--
-- GetRecords can retrieve a maximum of 1 MB of data or 2000 stream
-- records, whichever comes first.
--
-- <http://dynamodb-preview.s3-website-us-west-2.amazonaws.com/docs/streams-api/API_GetRecords.html>
module Network.AWS.DynamoDBStreams.GetRecords
    (
    -- * Request
      GetRecords
    -- ** Request constructor
    , getRecords
    -- ** Request lenses
    , grrqLimit
    , grrqShardIterator

    -- * Response
    , GetRecordsResponse
    -- ** Response constructor
    , getRecordsResponse
    -- ** Response lenses
    , grrsRecords
    , grrsNextShardIterator
    , grrsStatus
    ) where

import           Network.AWS.DynamoDBStreams.Types
import           Network.AWS.Prelude
import           Network.AWS.Request
import           Network.AWS.Response

-- | Represents the input of a /GetRecords/ operation.
--
-- /See:/ 'getRecords' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'grrqLimit'
--
-- * 'grrqShardIterator'
data GetRecords = GetRecords'
    { _grrqLimit         :: !(Maybe Nat)
    , _grrqShardIterator :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | 'GetRecords' smart constructor.
getRecords :: Text -> GetRecords
getRecords pShardIterator =
    GetRecords'
    { _grrqLimit = Nothing
    , _grrqShardIterator = pShardIterator
    }

-- | The maximum number of records to return from the shard. The upper limit
-- is 1000.
grrqLimit :: Lens' GetRecords (Maybe Natural)
grrqLimit = lens _grrqLimit (\ s a -> s{_grrqLimit = a}) . mapping _Nat;

-- | A shard iterator that was retrieved from a previous GetShardIterator
-- operation. This iterator can be used to access the stream records in
-- this shard.
grrqShardIterator :: Lens' GetRecords Text
grrqShardIterator = lens _grrqShardIterator (\ s a -> s{_grrqShardIterator = a});

instance AWSRequest GetRecords where
        type Sv GetRecords = DynamoDBStreams
        type Rs GetRecords = GetRecordsResponse
        request = postJSON
        response
          = receiveJSON
              (\ s h x ->
                 GetRecordsResponse' <$>
                   (x .?> "Records" .!@ mempty) <*>
                     (x .?> "NextShardIterator")
                     <*> (pure (fromEnum s)))

instance ToHeaders GetRecords where
        toHeaders
          = const
              (mconcat
                 ["X-Amz-Target" =#
                    ("DynamoDBStreams_20120810.GetRecords" ::
                       ByteString),
                  "Content-Type" =#
                    ("application/x-amz-json-1.0" :: ByteString)])

instance ToJSON GetRecords where
        toJSON GetRecords'{..}
          = object
              ["Limit" .= _grrqLimit,
               "ShardIterator" .= _grrqShardIterator]

instance ToPath GetRecords where
        toPath = const "/"

instance ToQuery GetRecords where
        toQuery = const mempty

-- | Represents the output of a /GetRecords/ operation.
--
-- /See:/ 'getRecordsResponse' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'grrsRecords'
--
-- * 'grrsNextShardIterator'
--
-- * 'grrsStatus'
data GetRecordsResponse = GetRecordsResponse'
    { _grrsRecords           :: !(Maybe [Record])
    , _grrsNextShardIterator :: !(Maybe Text)
    , _grrsStatus            :: !Int
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | 'GetRecordsResponse' smart constructor.
getRecordsResponse :: Int -> GetRecordsResponse
getRecordsResponse pStatus =
    GetRecordsResponse'
    { _grrsRecords = Nothing
    , _grrsNextShardIterator = Nothing
    , _grrsStatus = pStatus
    }

-- | The stream records from the shard, which were retrieved using the shard
-- iterator.
grrsRecords :: Lens' GetRecordsResponse [Record]
grrsRecords = lens _grrsRecords (\ s a -> s{_grrsRecords = a}) . _Default;

-- | The next position in the shard from which to start sequentially reading
-- stream records. If set to @null@, the shard has been closed and the
-- requested iterator will not return any more data.
grrsNextShardIterator :: Lens' GetRecordsResponse (Maybe Text)
grrsNextShardIterator = lens _grrsNextShardIterator (\ s a -> s{_grrsNextShardIterator = a});

-- | FIXME: Undocumented member.
grrsStatus :: Lens' GetRecordsResponse Int
grrsStatus = lens _grrsStatus (\ s a -> s{_grrsStatus = a});
