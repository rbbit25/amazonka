{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.DescribeStream
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about a stream.
module Network.AWS.IoT.DescribeStream
  ( -- * Creating a request
    DescribeStream (..),
    mkDescribeStream,

    -- ** Request lenses
    dStreamId,

    -- * Destructuring the response
    DescribeStreamResponse (..),
    mkDescribeStreamResponse,

    -- ** Response lenses
    dssrsStreamInfo,
    dssrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude
import qualified Network.AWS.Request as Req
import qualified Network.AWS.Response as Res

-- | /See:/ 'mkDescribeStream' smart constructor.
newtype DescribeStream = DescribeStream' {streamId :: Lude.Text}
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving newtype (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'DescribeStream' with the minimum fields required to make a request.
--
-- * 'streamId' - The stream ID.
mkDescribeStream ::
  -- | 'streamId'
  Lude.Text ->
  DescribeStream
mkDescribeStream pStreamId_ =
  DescribeStream' {streamId = pStreamId_}

-- | The stream ID.
--
-- /Note:/ Consider using 'streamId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dStreamId :: Lens.Lens' DescribeStream Lude.Text
dStreamId = Lens.lens (streamId :: DescribeStream -> Lude.Text) (\s a -> s {streamId = a} :: DescribeStream)
{-# DEPRECATED dStreamId "Use generic-lens or generic-optics with 'streamId' instead." #-}

instance Lude.AWSRequest DescribeStream where
  type Rs DescribeStream = DescribeStreamResponse
  request = Req.get ioTService
  response =
    Res.receiveJSON
      ( \s h x ->
          DescribeStreamResponse'
            Lude.<$> (x Lude..?> "streamInfo") Lude.<*> (Lude.pure (Lude.fromEnum s))
      )

instance Lude.ToHeaders DescribeStream where
  toHeaders = Lude.const Lude.mempty

instance Lude.ToPath DescribeStream where
  toPath DescribeStream' {..} =
    Lude.mconcat ["/streams/", Lude.toBS streamId]

instance Lude.ToQuery DescribeStream where
  toQuery = Lude.const Lude.mempty

-- | /See:/ 'mkDescribeStreamResponse' smart constructor.
data DescribeStreamResponse = DescribeStreamResponse'
  { streamInfo ::
      Lude.Maybe StreamInfo,
    responseStatus :: Lude.Int
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'DescribeStreamResponse' with the minimum fields required to make a request.
--
-- * 'responseStatus' - The response status code.
-- * 'streamInfo' - Information about the stream.
mkDescribeStreamResponse ::
  -- | 'responseStatus'
  Lude.Int ->
  DescribeStreamResponse
mkDescribeStreamResponse pResponseStatus_ =
  DescribeStreamResponse'
    { streamInfo = Lude.Nothing,
      responseStatus = pResponseStatus_
    }

-- | Information about the stream.
--
-- /Note:/ Consider using 'streamInfo' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dssrsStreamInfo :: Lens.Lens' DescribeStreamResponse (Lude.Maybe StreamInfo)
dssrsStreamInfo = Lens.lens (streamInfo :: DescribeStreamResponse -> Lude.Maybe StreamInfo) (\s a -> s {streamInfo = a} :: DescribeStreamResponse)
{-# DEPRECATED dssrsStreamInfo "Use generic-lens or generic-optics with 'streamInfo' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dssrsResponseStatus :: Lens.Lens' DescribeStreamResponse Lude.Int
dssrsResponseStatus = Lens.lens (responseStatus :: DescribeStreamResponse -> Lude.Int) (\s a -> s {responseStatus = a} :: DescribeStreamResponse)
{-# DEPRECATED dssrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}