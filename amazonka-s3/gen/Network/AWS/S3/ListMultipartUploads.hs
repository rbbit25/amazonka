{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.S3.ListMultipartUploads
-- Copyright   : (c) 2013-2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)
--
-- This operation lists in-progress multipart uploads.
--
-- <http://docs.aws.amazon.com/AmazonS3/latest/API/ListMultipartUploads.html>
module Network.AWS.S3.ListMultipartUploads
    (
    -- * Request
      ListMultipartUploads
    -- ** Request constructor
    , listMultipartUploads
    -- ** Request lenses
    , lmurqKeyMarker
    , lmurqPrefix
    , lmurqEncodingType
    , lmurqMaxUploads
    , lmurqUploadIdMarker
    , lmurqDelimiter
    , lmurqBucket

    -- * Response
    , ListMultipartUploadsResponse
    -- ** Response constructor
    , listMultipartUploadsResponse
    -- ** Response lenses
    , lmursKeyMarker
    , lmursPrefix
    , lmursEncodingType
    , lmursCommonPrefixes
    , lmursBucket
    , lmursMaxUploads
    , lmursUploadIdMarker
    , lmursNextKeyMarker
    , lmursUploads
    , lmursIsTruncated
    , lmursNextUploadIdMarker
    , lmursDelimiter
    , lmursStatus
    ) where

import           Network.AWS.Pager
import           Network.AWS.Prelude
import           Network.AWS.Request
import           Network.AWS.Response
import           Network.AWS.S3.Types

-- | /See:/ 'listMultipartUploads' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'lmurqKeyMarker'
--
-- * 'lmurqPrefix'
--
-- * 'lmurqEncodingType'
--
-- * 'lmurqMaxUploads'
--
-- * 'lmurqUploadIdMarker'
--
-- * 'lmurqDelimiter'
--
-- * 'lmurqBucket'
data ListMultipartUploads = ListMultipartUploads'
    { _lmurqKeyMarker      :: !(Maybe Text)
    , _lmurqPrefix         :: !(Maybe Text)
    , _lmurqEncodingType   :: !(Maybe EncodingType)
    , _lmurqMaxUploads     :: !(Maybe Int)
    , _lmurqUploadIdMarker :: !(Maybe Text)
    , _lmurqDelimiter      :: !(Maybe Char)
    , _lmurqBucket         :: !BucketName
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | 'ListMultipartUploads' smart constructor.
listMultipartUploads :: BucketName -> ListMultipartUploads
listMultipartUploads pBucket =
    ListMultipartUploads'
    { _lmurqKeyMarker = Nothing
    , _lmurqPrefix = Nothing
    , _lmurqEncodingType = Nothing
    , _lmurqMaxUploads = Nothing
    , _lmurqUploadIdMarker = Nothing
    , _lmurqDelimiter = Nothing
    , _lmurqBucket = pBucket
    }

-- | Together with upload-id-marker, this parameter specifies the multipart
-- upload after which listing should begin.
lmurqKeyMarker :: Lens' ListMultipartUploads (Maybe Text)
lmurqKeyMarker = lens _lmurqKeyMarker (\ s a -> s{_lmurqKeyMarker = a});

-- | Lists in-progress uploads only for those keys that begin with the
-- specified prefix.
lmurqPrefix :: Lens' ListMultipartUploads (Maybe Text)
lmurqPrefix = lens _lmurqPrefix (\ s a -> s{_lmurqPrefix = a});

-- | FIXME: Undocumented member.
lmurqEncodingType :: Lens' ListMultipartUploads (Maybe EncodingType)
lmurqEncodingType = lens _lmurqEncodingType (\ s a -> s{_lmurqEncodingType = a});

-- | Sets the maximum number of multipart uploads, from 1 to 1,000, to return
-- in the response body. 1,000 is the maximum number of uploads that can be
-- returned in a response.
lmurqMaxUploads :: Lens' ListMultipartUploads (Maybe Int)
lmurqMaxUploads = lens _lmurqMaxUploads (\ s a -> s{_lmurqMaxUploads = a});

-- | Together with key-marker, specifies the multipart upload after which
-- listing should begin. If key-marker is not specified, the
-- upload-id-marker parameter is ignored.
lmurqUploadIdMarker :: Lens' ListMultipartUploads (Maybe Text)
lmurqUploadIdMarker = lens _lmurqUploadIdMarker (\ s a -> s{_lmurqUploadIdMarker = a});

-- | Character you use to group keys.
lmurqDelimiter :: Lens' ListMultipartUploads (Maybe Char)
lmurqDelimiter = lens _lmurqDelimiter (\ s a -> s{_lmurqDelimiter = a});

-- | FIXME: Undocumented member.
lmurqBucket :: Lens' ListMultipartUploads BucketName
lmurqBucket = lens _lmurqBucket (\ s a -> s{_lmurqBucket = a});

instance AWSPager ListMultipartUploads where
        page rq rs
          | stop (rs ^. lmursIsTruncated) = Nothing
          | isNothing (rs ^. lmursNextKeyMarker) &&
              isNothing (rs ^. lmursNextUploadIdMarker)
            = Nothing
          | otherwise =
            Just $ rq &
              lmurqKeyMarker .~ rs ^. lmursNextKeyMarker
              &
              lmurqUploadIdMarker .~ rs ^. lmursNextUploadIdMarker

instance AWSRequest ListMultipartUploads where
        type Sv ListMultipartUploads = S3
        type Rs ListMultipartUploads =
             ListMultipartUploadsResponse
        request = get
        response
          = receiveXML
              (\ s h x ->
                 ListMultipartUploadsResponse' <$>
                   (x .@? "KeyMarker") <*> (x .@? "Prefix") <*>
                     (x .@? "EncodingType")
                     <*> (may (parseXMLList "CommonPrefixes") x)
                     <*> (x .@? "Bucket")
                     <*> (x .@? "MaxUploads")
                     <*> (x .@? "UploadIdMarker")
                     <*> (x .@? "NextKeyMarker")
                     <*> (may (parseXMLList "Upload") x)
                     <*> (x .@? "IsTruncated")
                     <*> (x .@? "NextUploadIdMarker")
                     <*> (x .@? "Delimiter")
                     <*> (pure (fromEnum s)))

instance ToHeaders ListMultipartUploads where
        toHeaders = const mempty

instance ToPath ListMultipartUploads where
        toPath ListMultipartUploads'{..}
          = mconcat ["/", toText _lmurqBucket]

instance ToQuery ListMultipartUploads where
        toQuery ListMultipartUploads'{..}
          = mconcat
              ["key-marker" =: _lmurqKeyMarker,
               "prefix" =: _lmurqPrefix,
               "encoding-type" =: _lmurqEncodingType,
               "max-uploads" =: _lmurqMaxUploads,
               "upload-id-marker" =: _lmurqUploadIdMarker,
               "delimiter" =: _lmurqDelimiter, "uploads"]

-- | /See:/ 'listMultipartUploadsResponse' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'lmursKeyMarker'
--
-- * 'lmursPrefix'
--
-- * 'lmursEncodingType'
--
-- * 'lmursCommonPrefixes'
--
-- * 'lmursBucket'
--
-- * 'lmursMaxUploads'
--
-- * 'lmursUploadIdMarker'
--
-- * 'lmursNextKeyMarker'
--
-- * 'lmursUploads'
--
-- * 'lmursIsTruncated'
--
-- * 'lmursNextUploadIdMarker'
--
-- * 'lmursDelimiter'
--
-- * 'lmursStatus'
data ListMultipartUploadsResponse = ListMultipartUploadsResponse'
    { _lmursKeyMarker          :: !(Maybe Text)
    , _lmursPrefix             :: !(Maybe Text)
    , _lmursEncodingType       :: !(Maybe EncodingType)
    , _lmursCommonPrefixes     :: !(Maybe [CommonPrefix])
    , _lmursBucket             :: !(Maybe BucketName)
    , _lmursMaxUploads         :: !(Maybe Int)
    , _lmursUploadIdMarker     :: !(Maybe Text)
    , _lmursNextKeyMarker      :: !(Maybe Text)
    , _lmursUploads            :: !(Maybe [MultipartUpload])
    , _lmursIsTruncated        :: !(Maybe Bool)
    , _lmursNextUploadIdMarker :: !(Maybe Text)
    , _lmursDelimiter          :: !(Maybe Char)
    , _lmursStatus             :: !Int
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | 'ListMultipartUploadsResponse' smart constructor.
listMultipartUploadsResponse :: Int -> ListMultipartUploadsResponse
listMultipartUploadsResponse pStatus =
    ListMultipartUploadsResponse'
    { _lmursKeyMarker = Nothing
    , _lmursPrefix = Nothing
    , _lmursEncodingType = Nothing
    , _lmursCommonPrefixes = Nothing
    , _lmursBucket = Nothing
    , _lmursMaxUploads = Nothing
    , _lmursUploadIdMarker = Nothing
    , _lmursNextKeyMarker = Nothing
    , _lmursUploads = Nothing
    , _lmursIsTruncated = Nothing
    , _lmursNextUploadIdMarker = Nothing
    , _lmursDelimiter = Nothing
    , _lmursStatus = pStatus
    }

-- | The key at or after which the listing began.
lmursKeyMarker :: Lens' ListMultipartUploadsResponse (Maybe Text)
lmursKeyMarker = lens _lmursKeyMarker (\ s a -> s{_lmursKeyMarker = a});

-- | When a prefix is provided in the request, this field contains the
-- specified prefix. The result contains only keys starting with the
-- specified prefix.
lmursPrefix :: Lens' ListMultipartUploadsResponse (Maybe Text)
lmursPrefix = lens _lmursPrefix (\ s a -> s{_lmursPrefix = a});

-- | Encoding type used by Amazon S3 to encode object keys in the response.
lmursEncodingType :: Lens' ListMultipartUploadsResponse (Maybe EncodingType)
lmursEncodingType = lens _lmursEncodingType (\ s a -> s{_lmursEncodingType = a});

-- | FIXME: Undocumented member.
lmursCommonPrefixes :: Lens' ListMultipartUploadsResponse [CommonPrefix]
lmursCommonPrefixes = lens _lmursCommonPrefixes (\ s a -> s{_lmursCommonPrefixes = a}) . _Default;

-- | Name of the bucket to which the multipart upload was initiated.
lmursBucket :: Lens' ListMultipartUploadsResponse (Maybe BucketName)
lmursBucket = lens _lmursBucket (\ s a -> s{_lmursBucket = a});

-- | Maximum number of multipart uploads that could have been included in the
-- response.
lmursMaxUploads :: Lens' ListMultipartUploadsResponse (Maybe Int)
lmursMaxUploads = lens _lmursMaxUploads (\ s a -> s{_lmursMaxUploads = a});

-- | Upload ID after which listing began.
lmursUploadIdMarker :: Lens' ListMultipartUploadsResponse (Maybe Text)
lmursUploadIdMarker = lens _lmursUploadIdMarker (\ s a -> s{_lmursUploadIdMarker = a});

-- | When a list is truncated, this element specifies the value that should
-- be used for the key-marker request parameter in a subsequent request.
lmursNextKeyMarker :: Lens' ListMultipartUploadsResponse (Maybe Text)
lmursNextKeyMarker = lens _lmursNextKeyMarker (\ s a -> s{_lmursNextKeyMarker = a});

-- | FIXME: Undocumented member.
lmursUploads :: Lens' ListMultipartUploadsResponse [MultipartUpload]
lmursUploads = lens _lmursUploads (\ s a -> s{_lmursUploads = a}) . _Default;

-- | Indicates whether the returned list of multipart uploads is truncated. A
-- value of true indicates that the list was truncated. The list can be
-- truncated if the number of multipart uploads exceeds the limit allowed
-- or specified by max uploads.
lmursIsTruncated :: Lens' ListMultipartUploadsResponse (Maybe Bool)
lmursIsTruncated = lens _lmursIsTruncated (\ s a -> s{_lmursIsTruncated = a});

-- | When a list is truncated, this element specifies the value that should
-- be used for the upload-id-marker request parameter in a subsequent
-- request.
lmursNextUploadIdMarker :: Lens' ListMultipartUploadsResponse (Maybe Text)
lmursNextUploadIdMarker = lens _lmursNextUploadIdMarker (\ s a -> s{_lmursNextUploadIdMarker = a});

-- | FIXME: Undocumented member.
lmursDelimiter :: Lens' ListMultipartUploadsResponse (Maybe Char)
lmursDelimiter = lens _lmursDelimiter (\ s a -> s{_lmursDelimiter = a});

-- | FIXME: Undocumented member.
lmursStatus :: Lens' ListMultipartUploadsResponse Int
lmursStatus = lens _lmursStatus (\ s a -> s{_lmursStatus = a});
