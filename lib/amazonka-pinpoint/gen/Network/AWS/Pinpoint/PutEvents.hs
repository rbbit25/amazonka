{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.PutEvents
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new event to record for endpoints, or creates or updates endpoint data that existing events are associated with.
module Network.AWS.Pinpoint.PutEvents
  ( -- * Creating a request
    PutEvents (..),
    mkPutEvents,

    -- ** Request lenses
    peApplicationId,
    peEventsRequest,

    -- * Destructuring the response
    PutEventsResponse (..),
    mkPutEventsResponse,

    -- ** Response lenses
    persResponseStatus,
    persEventsResponse,
  )
where

import qualified Network.AWS.Lens as Lens
import Network.AWS.Pinpoint.Types
import qualified Network.AWS.Prelude as Lude
import qualified Network.AWS.Request as Req
import qualified Network.AWS.Response as Res

-- | /See:/ 'mkPutEvents' smart constructor.
data PutEvents = PutEvents'
  { applicationId :: Lude.Text,
    eventsRequest :: EventsRequest
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'PutEvents' with the minimum fields required to make a request.
--
-- * 'applicationId' - The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
-- * 'eventsRequest' - Undocumented field.
mkPutEvents ::
  -- | 'applicationId'
  Lude.Text ->
  -- | 'eventsRequest'
  EventsRequest ->
  PutEvents
mkPutEvents pApplicationId_ pEventsRequest_ =
  PutEvents'
    { applicationId = pApplicationId_,
      eventsRequest = pEventsRequest_
    }

-- | The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
--
-- /Note:/ Consider using 'applicationId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
peApplicationId :: Lens.Lens' PutEvents Lude.Text
peApplicationId = Lens.lens (applicationId :: PutEvents -> Lude.Text) (\s a -> s {applicationId = a} :: PutEvents)
{-# DEPRECATED peApplicationId "Use generic-lens or generic-optics with 'applicationId' instead." #-}

-- | Undocumented field.
--
-- /Note:/ Consider using 'eventsRequest' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
peEventsRequest :: Lens.Lens' PutEvents EventsRequest
peEventsRequest = Lens.lens (eventsRequest :: PutEvents -> EventsRequest) (\s a -> s {eventsRequest = a} :: PutEvents)
{-# DEPRECATED peEventsRequest "Use generic-lens or generic-optics with 'eventsRequest' instead." #-}

instance Lude.AWSRequest PutEvents where
  type Rs PutEvents = PutEventsResponse
  request = Req.postJSON pinpointService
  response =
    Res.receiveJSON
      ( \s h x ->
          PutEventsResponse'
            Lude.<$> (Lude.pure (Lude.fromEnum s)) Lude.<*> (Lude.eitherParseJSON x)
      )

instance Lude.ToHeaders PutEvents where
  toHeaders =
    Lude.const
      ( Lude.mconcat
          [ "Content-Type"
              Lude.=# ("application/x-amz-json-1.1" :: Lude.ByteString)
          ]
      )

instance Lude.ToJSON PutEvents where
  toJSON PutEvents' {..} =
    Lude.object
      ( Lude.catMaybes
          [Lude.Just ("EventsRequest" Lude..= eventsRequest)]
      )

instance Lude.ToPath PutEvents where
  toPath PutEvents' {..} =
    Lude.mconcat ["/v1/apps/", Lude.toBS applicationId, "/events"]

instance Lude.ToQuery PutEvents where
  toQuery = Lude.const Lude.mempty

-- | /See:/ 'mkPutEventsResponse' smart constructor.
data PutEventsResponse = PutEventsResponse'
  { responseStatus ::
      Lude.Int,
    eventsResponse :: EventsResponse
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'PutEventsResponse' with the minimum fields required to make a request.
--
-- * 'eventsResponse' - Undocumented field.
-- * 'responseStatus' - The response status code.
mkPutEventsResponse ::
  -- | 'responseStatus'
  Lude.Int ->
  -- | 'eventsResponse'
  EventsResponse ->
  PutEventsResponse
mkPutEventsResponse pResponseStatus_ pEventsResponse_ =
  PutEventsResponse'
    { responseStatus = pResponseStatus_,
      eventsResponse = pEventsResponse_
    }

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
persResponseStatus :: Lens.Lens' PutEventsResponse Lude.Int
persResponseStatus = Lens.lens (responseStatus :: PutEventsResponse -> Lude.Int) (\s a -> s {responseStatus = a} :: PutEventsResponse)
{-# DEPRECATED persResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}

-- | Undocumented field.
--
-- /Note:/ Consider using 'eventsResponse' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
persEventsResponse :: Lens.Lens' PutEventsResponse EventsResponse
persEventsResponse = Lens.lens (eventsResponse :: PutEventsResponse -> EventsResponse) (\s a -> s {eventsResponse = a} :: PutEventsResponse)
{-# DEPRECATED persEventsResponse "Use generic-lens or generic-optics with 'eventsResponse' instead." #-}