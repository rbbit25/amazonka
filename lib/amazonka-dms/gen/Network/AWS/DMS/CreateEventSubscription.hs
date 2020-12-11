{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DMS.CreateEventSubscription
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an AWS DMS event notification subscription.
--
-- You can specify the type of source (@SourceType@ ) you want to be notified of, provide a list of AWS DMS source IDs (@SourceIds@ ) that triggers the events, and provide a list of event categories (@EventCategories@ ) for events you want to be notified of. If you specify both the @SourceType@ and @SourceIds@ , such as @SourceType = replication-instance@ and @SourceIdentifier = my-replinstance@ , you will be notified of all the replication instance events for the specified source. If you specify a @SourceType@ but don't specify a @SourceIdentifier@ , you receive notice of the events for that source type for all your AWS DMS sources. If you don't specify either @SourceType@ nor @SourceIdentifier@ , you will be notified of events generated from all AWS DMS sources belonging to your customer account.
-- For more information about AWS DMS events, see <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Events.html Working with Events and Notifications> in the /AWS Database Migration Service User Guide./
module Network.AWS.DMS.CreateEventSubscription
  ( -- * Creating a request
    CreateEventSubscription (..),
    mkCreateEventSubscription,

    -- ** Request lenses
    cesEnabled,
    cesSourceType,
    cesEventCategories,
    cesSourceIds,
    cesTags,
    cesSubscriptionName,
    cesSNSTopicARN,

    -- * Destructuring the response
    CreateEventSubscriptionResponse (..),
    mkCreateEventSubscriptionResponse,

    -- ** Response lenses
    cesrsEventSubscription,
    cesrsResponseStatus,
  )
where

import Network.AWS.DMS.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude
import qualified Network.AWS.Request as Req
import qualified Network.AWS.Response as Res

-- |
--
-- /See:/ 'mkCreateEventSubscription' smart constructor.
data CreateEventSubscription = CreateEventSubscription'
  { enabled ::
      Lude.Maybe Lude.Bool,
    sourceType :: Lude.Maybe Lude.Text,
    eventCategories :: Lude.Maybe [Lude.Text],
    sourceIds :: Lude.Maybe [Lude.Text],
    tags :: Lude.Maybe [Tag],
    subscriptionName :: Lude.Text,
    snsTopicARN :: Lude.Text
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'CreateEventSubscription' with the minimum fields required to make a request.
--
-- * 'enabled' - A Boolean value; set to @true@ to activate the subscription, or set to @false@ to create the subscription but not activate it.
-- * 'eventCategories' - A list of event categories for a source type that you want to subscribe to. For more information, see <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Events.html Working with Events and Notifications> in the /AWS Database Migration Service User Guide./
-- * 'snsTopicARN' - The Amazon Resource Name (ARN) of the Amazon SNS topic created for event notification. The ARN is created by Amazon SNS when you create a topic and subscribe to it.
-- * 'sourceIds' - A list of identifiers for which AWS DMS provides notification events.
--
-- If you don't specify a value, notifications are provided for all sources.
-- If you specify multiple values, they must be of the same type. For example, if you specify a database instance ID, then all of the other values must be database instance IDs.
-- * 'sourceType' - The type of AWS DMS resource that generates the events. For example, if you want to be notified of events generated by a replication instance, you set this parameter to @replication-instance@ . If this value isn't specified, all events are returned.
--
-- Valid values: @replication-instance@ | @replication-task@
-- * 'subscriptionName' - The name of the AWS DMS event notification subscription. This name must be less than 255 characters.
-- * 'tags' - One or more tags to be assigned to the event subscription.
mkCreateEventSubscription ::
  -- | 'subscriptionName'
  Lude.Text ->
  -- | 'snsTopicARN'
  Lude.Text ->
  CreateEventSubscription
mkCreateEventSubscription pSubscriptionName_ pSNSTopicARN_ =
  CreateEventSubscription'
    { enabled = Lude.Nothing,
      sourceType = Lude.Nothing,
      eventCategories = Lude.Nothing,
      sourceIds = Lude.Nothing,
      tags = Lude.Nothing,
      subscriptionName = pSubscriptionName_,
      snsTopicARN = pSNSTopicARN_
    }

-- | A Boolean value; set to @true@ to activate the subscription, or set to @false@ to create the subscription but not activate it.
--
-- /Note:/ Consider using 'enabled' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cesEnabled :: Lens.Lens' CreateEventSubscription (Lude.Maybe Lude.Bool)
cesEnabled = Lens.lens (enabled :: CreateEventSubscription -> Lude.Maybe Lude.Bool) (\s a -> s {enabled = a} :: CreateEventSubscription)
{-# DEPRECATED cesEnabled "Use generic-lens or generic-optics with 'enabled' instead." #-}

-- | The type of AWS DMS resource that generates the events. For example, if you want to be notified of events generated by a replication instance, you set this parameter to @replication-instance@ . If this value isn't specified, all events are returned.
--
-- Valid values: @replication-instance@ | @replication-task@
--
-- /Note:/ Consider using 'sourceType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cesSourceType :: Lens.Lens' CreateEventSubscription (Lude.Maybe Lude.Text)
cesSourceType = Lens.lens (sourceType :: CreateEventSubscription -> Lude.Maybe Lude.Text) (\s a -> s {sourceType = a} :: CreateEventSubscription)
{-# DEPRECATED cesSourceType "Use generic-lens or generic-optics with 'sourceType' instead." #-}

-- | A list of event categories for a source type that you want to subscribe to. For more information, see <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Events.html Working with Events and Notifications> in the /AWS Database Migration Service User Guide./
--
-- /Note:/ Consider using 'eventCategories' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cesEventCategories :: Lens.Lens' CreateEventSubscription (Lude.Maybe [Lude.Text])
cesEventCategories = Lens.lens (eventCategories :: CreateEventSubscription -> Lude.Maybe [Lude.Text]) (\s a -> s {eventCategories = a} :: CreateEventSubscription)
{-# DEPRECATED cesEventCategories "Use generic-lens or generic-optics with 'eventCategories' instead." #-}

-- | A list of identifiers for which AWS DMS provides notification events.
--
-- If you don't specify a value, notifications are provided for all sources.
-- If you specify multiple values, they must be of the same type. For example, if you specify a database instance ID, then all of the other values must be database instance IDs.
--
-- /Note:/ Consider using 'sourceIds' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cesSourceIds :: Lens.Lens' CreateEventSubscription (Lude.Maybe [Lude.Text])
cesSourceIds = Lens.lens (sourceIds :: CreateEventSubscription -> Lude.Maybe [Lude.Text]) (\s a -> s {sourceIds = a} :: CreateEventSubscription)
{-# DEPRECATED cesSourceIds "Use generic-lens or generic-optics with 'sourceIds' instead." #-}

-- | One or more tags to be assigned to the event subscription.
--
-- /Note:/ Consider using 'tags' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cesTags :: Lens.Lens' CreateEventSubscription (Lude.Maybe [Tag])
cesTags = Lens.lens (tags :: CreateEventSubscription -> Lude.Maybe [Tag]) (\s a -> s {tags = a} :: CreateEventSubscription)
{-# DEPRECATED cesTags "Use generic-lens or generic-optics with 'tags' instead." #-}

-- | The name of the AWS DMS event notification subscription. This name must be less than 255 characters.
--
-- /Note:/ Consider using 'subscriptionName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cesSubscriptionName :: Lens.Lens' CreateEventSubscription Lude.Text
cesSubscriptionName = Lens.lens (subscriptionName :: CreateEventSubscription -> Lude.Text) (\s a -> s {subscriptionName = a} :: CreateEventSubscription)
{-# DEPRECATED cesSubscriptionName "Use generic-lens or generic-optics with 'subscriptionName' instead." #-}

-- | The Amazon Resource Name (ARN) of the Amazon SNS topic created for event notification. The ARN is created by Amazon SNS when you create a topic and subscribe to it.
--
-- /Note:/ Consider using 'snsTopicARN' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cesSNSTopicARN :: Lens.Lens' CreateEventSubscription Lude.Text
cesSNSTopicARN = Lens.lens (snsTopicARN :: CreateEventSubscription -> Lude.Text) (\s a -> s {snsTopicARN = a} :: CreateEventSubscription)
{-# DEPRECATED cesSNSTopicARN "Use generic-lens or generic-optics with 'snsTopicARN' instead." #-}

instance Lude.AWSRequest CreateEventSubscription where
  type Rs CreateEventSubscription = CreateEventSubscriptionResponse
  request = Req.postJSON dmsService
  response =
    Res.receiveJSON
      ( \s h x ->
          CreateEventSubscriptionResponse'
            Lude.<$> (x Lude..?> "EventSubscription")
            Lude.<*> (Lude.pure (Lude.fromEnum s))
      )

instance Lude.ToHeaders CreateEventSubscription where
  toHeaders =
    Lude.const
      ( Lude.mconcat
          [ "X-Amz-Target"
              Lude.=# ("AmazonDMSv20160101.CreateEventSubscription" :: Lude.ByteString),
            "Content-Type"
              Lude.=# ("application/x-amz-json-1.1" :: Lude.ByteString)
          ]
      )

instance Lude.ToJSON CreateEventSubscription where
  toJSON CreateEventSubscription' {..} =
    Lude.object
      ( Lude.catMaybes
          [ ("Enabled" Lude..=) Lude.<$> enabled,
            ("SourceType" Lude..=) Lude.<$> sourceType,
            ("EventCategories" Lude..=) Lude.<$> eventCategories,
            ("SourceIds" Lude..=) Lude.<$> sourceIds,
            ("Tags" Lude..=) Lude.<$> tags,
            Lude.Just ("SubscriptionName" Lude..= subscriptionName),
            Lude.Just ("SnsTopicArn" Lude..= snsTopicARN)
          ]
      )

instance Lude.ToPath CreateEventSubscription where
  toPath = Lude.const "/"

instance Lude.ToQuery CreateEventSubscription where
  toQuery = Lude.const Lude.mempty

-- |
--
-- /See:/ 'mkCreateEventSubscriptionResponse' smart constructor.
data CreateEventSubscriptionResponse = CreateEventSubscriptionResponse'
  { eventSubscription ::
      Lude.Maybe
        EventSubscription,
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

-- | Creates a value of 'CreateEventSubscriptionResponse' with the minimum fields required to make a request.
--
-- * 'eventSubscription' - The event subscription that was created.
-- * 'responseStatus' - The response status code.
mkCreateEventSubscriptionResponse ::
  -- | 'responseStatus'
  Lude.Int ->
  CreateEventSubscriptionResponse
mkCreateEventSubscriptionResponse pResponseStatus_ =
  CreateEventSubscriptionResponse'
    { eventSubscription =
        Lude.Nothing,
      responseStatus = pResponseStatus_
    }

-- | The event subscription that was created.
--
-- /Note:/ Consider using 'eventSubscription' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cesrsEventSubscription :: Lens.Lens' CreateEventSubscriptionResponse (Lude.Maybe EventSubscription)
cesrsEventSubscription = Lens.lens (eventSubscription :: CreateEventSubscriptionResponse -> Lude.Maybe EventSubscription) (\s a -> s {eventSubscription = a} :: CreateEventSubscriptionResponse)
{-# DEPRECATED cesrsEventSubscription "Use generic-lens or generic-optics with 'eventSubscription' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cesrsResponseStatus :: Lens.Lens' CreateEventSubscriptionResponse Lude.Int
cesrsResponseStatus = Lens.lens (responseStatus :: CreateEventSubscriptionResponse -> Lude.Int) (\s a -> s {responseStatus = a} :: CreateEventSubscriptionResponse)
{-# DEPRECATED cesrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}