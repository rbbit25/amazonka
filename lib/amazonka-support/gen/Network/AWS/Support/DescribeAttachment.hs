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
-- Module      : Network.AWS.Support.DescribeAttachment
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the attachment that has the specified ID. Attachments can include screenshots, error logs, or other files that describe your issue. Attachment IDs are generated by the case management system when you add an attachment to a case or case communication. Attachment IDs are returned in the 'AttachmentDetails' objects that are returned by the 'DescribeCommunications' operation.
module Network.AWS.Support.DescribeAttachment
  ( -- * Creating a Request
    describeAttachment,
    DescribeAttachment,

    -- * Request Lenses
    daAttachmentId,

    -- * Destructuring the Response
    describeAttachmentResponse,
    DescribeAttachmentResponse,

    -- * Response Lenses
    darsAttachment,
    darsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Support.Types

-- | /See:/ 'describeAttachment' smart constructor.
newtype DescribeAttachment = DescribeAttachment'
  { _daAttachmentId ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeAttachment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'daAttachmentId' - The ID of the attachment to return. Attachment IDs are returned by the 'DescribeCommunications' operation.
describeAttachment ::
  -- | 'daAttachmentId'
  Text ->
  DescribeAttachment
describeAttachment pAttachmentId_ =
  DescribeAttachment' {_daAttachmentId = pAttachmentId_}

-- | The ID of the attachment to return. Attachment IDs are returned by the 'DescribeCommunications' operation.
daAttachmentId :: Lens' DescribeAttachment Text
daAttachmentId = lens _daAttachmentId (\s a -> s {_daAttachmentId = a})

instance AWSRequest DescribeAttachment where
  type Rs DescribeAttachment = DescribeAttachmentResponse
  request = postJSON support
  response =
    receiveJSON
      ( \s h x ->
          DescribeAttachmentResponse'
            <$> (x .?> "attachment") <*> (pure (fromEnum s))
      )

instance Hashable DescribeAttachment

instance NFData DescribeAttachment

instance ToHeaders DescribeAttachment where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSSupport_20130415.DescribeAttachment" :: ByteString),
            "Content-Type" =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeAttachment where
  toJSON DescribeAttachment' {..} =
    object (catMaybes [Just ("attachmentId" .= _daAttachmentId)])

instance ToPath DescribeAttachment where
  toPath = const "/"

instance ToQuery DescribeAttachment where
  toQuery = const mempty

-- | The content and file name of the attachment returned by the 'DescribeAttachment' operation.
--
--
--
-- /See:/ 'describeAttachmentResponse' smart constructor.
data DescribeAttachmentResponse = DescribeAttachmentResponse'
  { _darsAttachment ::
      !(Maybe Attachment),
    _darsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeAttachmentResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'darsAttachment' - This object includes the attachment content and file name. In the previous response syntax, the value for the @data@ parameter appears as @blob@ , which is represented as a base64-encoded string. The value for @fileName@ is the name of the attachment, such as @troubleshoot-screenshot.png@ .
--
-- * 'darsResponseStatus' - -- | The response status code.
describeAttachmentResponse ::
  -- | 'darsResponseStatus'
  Int ->
  DescribeAttachmentResponse
describeAttachmentResponse pResponseStatus_ =
  DescribeAttachmentResponse'
    { _darsAttachment = Nothing,
      _darsResponseStatus = pResponseStatus_
    }

-- | This object includes the attachment content and file name. In the previous response syntax, the value for the @data@ parameter appears as @blob@ , which is represented as a base64-encoded string. The value for @fileName@ is the name of the attachment, such as @troubleshoot-screenshot.png@ .
darsAttachment :: Lens' DescribeAttachmentResponse (Maybe Attachment)
darsAttachment = lens _darsAttachment (\s a -> s {_darsAttachment = a})

-- | -- | The response status code.
darsResponseStatus :: Lens' DescribeAttachmentResponse Int
darsResponseStatus = lens _darsResponseStatus (\s a -> s {_darsResponseStatus = a})

instance NFData DescribeAttachmentResponse
