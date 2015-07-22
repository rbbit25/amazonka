{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.S3.DeleteBucket
-- Copyright   : (c) 2013-2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)
--
-- Deletes the bucket. All objects (including all object versions and
-- Delete Markers) in the bucket must be deleted before the bucket itself
-- can be deleted.
--
-- <http://docs.aws.amazon.com/AmazonS3/latest/API/DeleteBucket.html>
module Network.AWS.S3.DeleteBucket
    (
    -- * Request
      DeleteBucket
    -- ** Request constructor
    , deleteBucket
    -- ** Request lenses
    , dbrqBucket

    -- * Response
    , DeleteBucketResponse
    -- ** Response constructor
    , deleteBucketResponse
    ) where

import           Network.AWS.Prelude
import           Network.AWS.Request
import           Network.AWS.Response
import           Network.AWS.S3.Types

-- | /See:/ 'deleteBucket' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'dbrqBucket'
newtype DeleteBucket = DeleteBucket'
    { _dbrqBucket :: BucketName
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | 'DeleteBucket' smart constructor.
deleteBucket :: BucketName -> DeleteBucket
deleteBucket pBucket =
    DeleteBucket'
    { _dbrqBucket = pBucket
    }

-- | FIXME: Undocumented member.
dbrqBucket :: Lens' DeleteBucket BucketName
dbrqBucket = lens _dbrqBucket (\ s a -> s{_dbrqBucket = a});

instance AWSRequest DeleteBucket where
        type Sv DeleteBucket = S3
        type Rs DeleteBucket = DeleteBucketResponse
        request = delete
        response = receiveNull DeleteBucketResponse'

instance ToHeaders DeleteBucket where
        toHeaders = const mempty

instance ToPath DeleteBucket where
        toPath DeleteBucket'{..}
          = mconcat ["/", toText _dbrqBucket]

instance ToQuery DeleteBucket where
        toQuery = const mempty

-- | /See:/ 'deleteBucketResponse' smart constructor.
data DeleteBucketResponse =
    DeleteBucketResponse'
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | 'DeleteBucketResponse' smart constructor.
deleteBucketResponse :: DeleteBucketResponse
deleteBucketResponse = DeleteBucketResponse'
