{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.KinesisAnalytics.TagResource
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds one or more key-value tags to a Kinesis Analytics application. Note that the maximum number of application tags includes system tags. The maximum number of user-defined application tags is 50. For more information, see <https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-tagging.html Using Tagging> .
module Network.AWS.KinesisAnalytics.TagResource
  ( -- * Creating a Request
    tagResource,
    TagResource,

    -- * Request Lenses
    trResourceARN,
    trTags,

    -- * Destructuring the Response
    tagResourceResponse,
    TagResourceResponse,

    -- * Response Lenses
    trrsResponseStatus,
  )
where

import Network.AWS.KinesisAnalytics.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'tagResource' smart constructor.
data TagResource = TagResource'
  { _trResourceARN :: !Text,
    _trTags :: !(List1 Tag)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'TagResource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'trResourceARN' - The ARN of the application to assign the tags.
--
-- * 'trTags' - The key-value tags to assign to the application.
tagResource ::
  -- | 'trResourceARN'
  Text ->
  -- | 'trTags'
  NonEmpty Tag ->
  TagResource
tagResource pResourceARN_ pTags_ =
  TagResource'
    { _trResourceARN = pResourceARN_,
      _trTags = _List1 # pTags_
    }

-- | The ARN of the application to assign the tags.
trResourceARN :: Lens' TagResource Text
trResourceARN = lens _trResourceARN (\s a -> s {_trResourceARN = a})

-- | The key-value tags to assign to the application.
trTags :: Lens' TagResource (NonEmpty Tag)
trTags = lens _trTags (\s a -> s {_trTags = a}) . _List1

instance AWSRequest TagResource where
  type Rs TagResource = TagResourceResponse
  request = postJSON kinesisAnalytics
  response =
    receiveEmpty
      (\s h x -> TagResourceResponse' <$> (pure (fromEnum s)))

instance Hashable TagResource

instance NFData TagResource

instance ToHeaders TagResource where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("KinesisAnalytics_20150814.TagResource" :: ByteString),
            "Content-Type" =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON TagResource where
  toJSON TagResource' {..} =
    object
      ( catMaybes
          [Just ("ResourceARN" .= _trResourceARN), Just ("Tags" .= _trTags)]
      )

instance ToPath TagResource where
  toPath = const "/"

instance ToQuery TagResource where
  toQuery = const mempty

-- | /See:/ 'tagResourceResponse' smart constructor.
newtype TagResourceResponse = TagResourceResponse'
  { _trrsResponseStatus ::
      Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'TagResourceResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'trrsResponseStatus' - -- | The response status code.
tagResourceResponse ::
  -- | 'trrsResponseStatus'
  Int ->
  TagResourceResponse
tagResourceResponse pResponseStatus_ =
  TagResourceResponse' {_trrsResponseStatus = pResponseStatus_}

-- | -- | The response status code.
trrsResponseStatus :: Lens' TagResourceResponse Int
trrsResponseStatus = lens _trrsResponseStatus (\s a -> s {_trrsResponseStatus = a})

instance NFData TagResourceResponse
