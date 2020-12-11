{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Redshift.CreateEventSubscription
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an Amazon Redshift event notification subscription. This action requires an ARN (Amazon Resource Name) of an Amazon SNS topic created by either the Amazon Redshift console, the Amazon SNS console, or the Amazon SNS API. To obtain an ARN with Amazon SNS, you must create a topic in Amazon SNS and subscribe to the topic. The ARN is displayed in the SNS console.
--
-- You can specify the source type, and lists of Amazon Redshift source IDs, event categories, and event severities. Notifications will be sent for all events you want that match those criteria. For example, you can specify source type = cluster, source ID = my-cluster-1 and mycluster2, event categories = Availability, Backup, and severity = ERROR. The subscription will only send notifications for those ERROR events in the Availability and Backup categories for the specified clusters.
-- If you specify both the source type and source IDs, such as source type = cluster and source identifier = my-cluster-1, notifications will be sent for all the cluster events for my-cluster-1. If you specify a source type but do not specify a source identifier, you will receive notice of the events for the objects of that type in your AWS account. If you do not specify either the SourceType nor the SourceIdentifier, you will be notified of events generated from all Amazon Redshift sources belonging to your AWS account. You must specify a source type if you specify a source ID.
module Network.AWS.Redshift.CreateEventSubscription
  ( -- * Creating a request
    CreateEventSubscription (..),
    mkCreateEventSubscription,

    -- ** Request lenses
    cesEnabled,
    cesSourceType,
    cesSeverity,
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

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude
import Network.AWS.Redshift.Types
import qualified Network.AWS.Request as Req
import qualified Network.AWS.Response as Res

-- |
--
-- /See:/ 'mkCreateEventSubscription' smart constructor.
data CreateEventSubscription = CreateEventSubscription'
  { enabled ::
      Lude.Maybe Lude.Bool,
    sourceType :: Lude.Maybe Lude.Text,
    severity :: Lude.Maybe Lude.Text,
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
-- * 'enabled' - A boolean value; set to @true@ to activate the subscription, and set to @false@ to create the subscription but not activate it.
-- * 'eventCategories' - Specifies the Amazon Redshift event categories to be published by the event notification subscription.
--
-- Values: configuration, management, monitoring, security
-- * 'severity' - Specifies the Amazon Redshift event severity to be published by the event notification subscription.
--
-- Values: ERROR, INFO
-- * 'snsTopicARN' - The Amazon Resource Name (ARN) of the Amazon SNS topic used to transmit the event notifications. The ARN is created by Amazon SNS when you create a topic and subscribe to it.
-- * 'sourceIds' - A list of one or more identifiers of Amazon Redshift source objects. All of the objects must be of the same type as was specified in the source type parameter. The event subscription will return only events generated by the specified objects. If not specified, then events are returned for all objects within the source type specified.
--
-- Example: my-cluster-1, my-cluster-2
-- Example: my-snapshot-20131010
-- * 'sourceType' - The type of source that will be generating the events. For example, if you want to be notified of events generated by a cluster, you would set this parameter to cluster. If this value is not specified, events are returned for all Amazon Redshift objects in your AWS account. You must specify a source type in order to specify source IDs.
--
-- Valid values: cluster, cluster-parameter-group, cluster-security-group, cluster-snapshot, and scheduled-action.
-- * 'subscriptionName' - The name of the event subscription to be created.
--
-- Constraints:
--
--     * Cannot be null, empty, or blank.
--
--
--     * Must contain from 1 to 255 alphanumeric characters or hyphens.
--
--
--     * First character must be a letter.
--
--
--     * Cannot end with a hyphen or contain two consecutive hyphens.
--
--
-- * 'tags' - A list of tag instances.
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
      severity = Lude.Nothing,
      eventCategories = Lude.Nothing,
      sourceIds = Lude.Nothing,
      tags = Lude.Nothing,
      subscriptionName = pSubscriptionName_,
      snsTopicARN = pSNSTopicARN_
    }

-- | A boolean value; set to @true@ to activate the subscription, and set to @false@ to create the subscription but not activate it.
--
-- /Note:/ Consider using 'enabled' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cesEnabled :: Lens.Lens' CreateEventSubscription (Lude.Maybe Lude.Bool)
cesEnabled = Lens.lens (enabled :: CreateEventSubscription -> Lude.Maybe Lude.Bool) (\s a -> s {enabled = a} :: CreateEventSubscription)
{-# DEPRECATED cesEnabled "Use generic-lens or generic-optics with 'enabled' instead." #-}

-- | The type of source that will be generating the events. For example, if you want to be notified of events generated by a cluster, you would set this parameter to cluster. If this value is not specified, events are returned for all Amazon Redshift objects in your AWS account. You must specify a source type in order to specify source IDs.
--
-- Valid values: cluster, cluster-parameter-group, cluster-security-group, cluster-snapshot, and scheduled-action.
--
-- /Note:/ Consider using 'sourceType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cesSourceType :: Lens.Lens' CreateEventSubscription (Lude.Maybe Lude.Text)
cesSourceType = Lens.lens (sourceType :: CreateEventSubscription -> Lude.Maybe Lude.Text) (\s a -> s {sourceType = a} :: CreateEventSubscription)
{-# DEPRECATED cesSourceType "Use generic-lens or generic-optics with 'sourceType' instead." #-}

-- | Specifies the Amazon Redshift event severity to be published by the event notification subscription.
--
-- Values: ERROR, INFO
--
-- /Note:/ Consider using 'severity' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cesSeverity :: Lens.Lens' CreateEventSubscription (Lude.Maybe Lude.Text)
cesSeverity = Lens.lens (severity :: CreateEventSubscription -> Lude.Maybe Lude.Text) (\s a -> s {severity = a} :: CreateEventSubscription)
{-# DEPRECATED cesSeverity "Use generic-lens or generic-optics with 'severity' instead." #-}

-- | Specifies the Amazon Redshift event categories to be published by the event notification subscription.
--
-- Values: configuration, management, monitoring, security
--
-- /Note:/ Consider using 'eventCategories' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cesEventCategories :: Lens.Lens' CreateEventSubscription (Lude.Maybe [Lude.Text])
cesEventCategories = Lens.lens (eventCategories :: CreateEventSubscription -> Lude.Maybe [Lude.Text]) (\s a -> s {eventCategories = a} :: CreateEventSubscription)
{-# DEPRECATED cesEventCategories "Use generic-lens or generic-optics with 'eventCategories' instead." #-}

-- | A list of one or more identifiers of Amazon Redshift source objects. All of the objects must be of the same type as was specified in the source type parameter. The event subscription will return only events generated by the specified objects. If not specified, then events are returned for all objects within the source type specified.
--
-- Example: my-cluster-1, my-cluster-2
-- Example: my-snapshot-20131010
--
-- /Note:/ Consider using 'sourceIds' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cesSourceIds :: Lens.Lens' CreateEventSubscription (Lude.Maybe [Lude.Text])
cesSourceIds = Lens.lens (sourceIds :: CreateEventSubscription -> Lude.Maybe [Lude.Text]) (\s a -> s {sourceIds = a} :: CreateEventSubscription)
{-# DEPRECATED cesSourceIds "Use generic-lens or generic-optics with 'sourceIds' instead." #-}

-- | A list of tag instances.
--
-- /Note:/ Consider using 'tags' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cesTags :: Lens.Lens' CreateEventSubscription (Lude.Maybe [Tag])
cesTags = Lens.lens (tags :: CreateEventSubscription -> Lude.Maybe [Tag]) (\s a -> s {tags = a} :: CreateEventSubscription)
{-# DEPRECATED cesTags "Use generic-lens or generic-optics with 'tags' instead." #-}

-- | The name of the event subscription to be created.
--
-- Constraints:
--
--     * Cannot be null, empty, or blank.
--
--
--     * Must contain from 1 to 255 alphanumeric characters or hyphens.
--
--
--     * First character must be a letter.
--
--
--     * Cannot end with a hyphen or contain two consecutive hyphens.
--
--
--
-- /Note:/ Consider using 'subscriptionName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cesSubscriptionName :: Lens.Lens' CreateEventSubscription Lude.Text
cesSubscriptionName = Lens.lens (subscriptionName :: CreateEventSubscription -> Lude.Text) (\s a -> s {subscriptionName = a} :: CreateEventSubscription)
{-# DEPRECATED cesSubscriptionName "Use generic-lens or generic-optics with 'subscriptionName' instead." #-}

-- | The Amazon Resource Name (ARN) of the Amazon SNS topic used to transmit the event notifications. The ARN is created by Amazon SNS when you create a topic and subscribe to it.
--
-- /Note:/ Consider using 'snsTopicARN' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cesSNSTopicARN :: Lens.Lens' CreateEventSubscription Lude.Text
cesSNSTopicARN = Lens.lens (snsTopicARN :: CreateEventSubscription -> Lude.Text) (\s a -> s {snsTopicARN = a} :: CreateEventSubscription)
{-# DEPRECATED cesSNSTopicARN "Use generic-lens or generic-optics with 'snsTopicARN' instead." #-}

instance Lude.AWSRequest CreateEventSubscription where
  type Rs CreateEventSubscription = CreateEventSubscriptionResponse
  request = Req.postQuery redshiftService
  response =
    Res.receiveXMLWrapper
      "CreateEventSubscriptionResult"
      ( \s h x ->
          CreateEventSubscriptionResponse'
            Lude.<$> (x Lude..@? "EventSubscription")
            Lude.<*> (Lude.pure (Lude.fromEnum s))
      )

instance Lude.ToHeaders CreateEventSubscription where
  toHeaders = Lude.const Lude.mempty

instance Lude.ToPath CreateEventSubscription where
  toPath = Lude.const "/"

instance Lude.ToQuery CreateEventSubscription where
  toQuery CreateEventSubscription' {..} =
    Lude.mconcat
      [ "Action" Lude.=: ("CreateEventSubscription" :: Lude.ByteString),
        "Version" Lude.=: ("2012-12-01" :: Lude.ByteString),
        "Enabled" Lude.=: enabled,
        "SourceType" Lude.=: sourceType,
        "Severity" Lude.=: severity,
        "EventCategories"
          Lude.=: Lude.toQuery
            (Lude.toQueryList "EventCategory" Lude.<$> eventCategories),
        "SourceIds"
          Lude.=: Lude.toQuery (Lude.toQueryList "SourceId" Lude.<$> sourceIds),
        "Tags" Lude.=: Lude.toQuery (Lude.toQueryList "Tag" Lude.<$> tags),
        "SubscriptionName" Lude.=: subscriptionName,
        "SnsTopicArn" Lude.=: snsTopicARN
      ]

-- | /See:/ 'mkCreateEventSubscriptionResponse' smart constructor.
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
-- * 'eventSubscription' - Undocumented field.
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

-- | Undocumented field.
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