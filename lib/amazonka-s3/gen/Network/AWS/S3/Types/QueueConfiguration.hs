-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.S3.Types.QueueConfiguration
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.S3.Types.QueueConfiguration
  ( QueueConfiguration (..),

    -- * Smart constructor
    mkQueueConfiguration,

    -- * Lenses
    qcId,
    qcFilter,
    qcQueueARN,
    qcEvents,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude
import Network.AWS.S3.Internal
import Network.AWS.S3.Types.Event
import Network.AWS.S3.Types.NotificationConfigurationFilter

-- | Specifies the configuration for publishing messages to an Amazon Simple Queue Service (Amazon SQS) queue when Amazon S3 detects specified events.
--
-- /See:/ 'mkQueueConfiguration' smart constructor.
data QueueConfiguration = QueueConfiguration'
  { id ::
      Lude.Maybe Lude.Text,
    filter :: Lude.Maybe NotificationConfigurationFilter,
    queueARN :: Lude.Text,
    events :: [Event]
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'QueueConfiguration' with the minimum fields required to make a request.
--
-- * 'events' - A collection of bucket events for which to send notifications
-- * 'filter' - Undocumented field.
-- * 'id' - Undocumented field.
-- * 'queueARN' - The Amazon Resource Name (ARN) of the Amazon SQS queue to which Amazon S3 publishes a message when it detects events of the specified type.
mkQueueConfiguration ::
  -- | 'queueARN'
  Lude.Text ->
  QueueConfiguration
mkQueueConfiguration pQueueARN_ =
  QueueConfiguration'
    { id = Lude.Nothing,
      filter = Lude.Nothing,
      queueARN = pQueueARN_,
      events = Lude.mempty
    }

-- | Undocumented field.
--
-- /Note:/ Consider using 'id' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
qcId :: Lens.Lens' QueueConfiguration (Lude.Maybe Lude.Text)
qcId = Lens.lens (id :: QueueConfiguration -> Lude.Maybe Lude.Text) (\s a -> s {id = a} :: QueueConfiguration)
{-# DEPRECATED qcId "Use generic-lens or generic-optics with 'id' instead." #-}

-- | Undocumented field.
--
-- /Note:/ Consider using 'filter' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
qcFilter :: Lens.Lens' QueueConfiguration (Lude.Maybe NotificationConfigurationFilter)
qcFilter = Lens.lens (filter :: QueueConfiguration -> Lude.Maybe NotificationConfigurationFilter) (\s a -> s {filter = a} :: QueueConfiguration)
{-# DEPRECATED qcFilter "Use generic-lens or generic-optics with 'filter' instead." #-}

-- | The Amazon Resource Name (ARN) of the Amazon SQS queue to which Amazon S3 publishes a message when it detects events of the specified type.
--
-- /Note:/ Consider using 'queueARN' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
qcQueueARN :: Lens.Lens' QueueConfiguration Lude.Text
qcQueueARN = Lens.lens (queueARN :: QueueConfiguration -> Lude.Text) (\s a -> s {queueARN = a} :: QueueConfiguration)
{-# DEPRECATED qcQueueARN "Use generic-lens or generic-optics with 'queueARN' instead." #-}

-- | A collection of bucket events for which to send notifications
--
-- /Note:/ Consider using 'events' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
qcEvents :: Lens.Lens' QueueConfiguration [Event]
qcEvents = Lens.lens (events :: QueueConfiguration -> [Event]) (\s a -> s {events = a} :: QueueConfiguration)
{-# DEPRECATED qcEvents "Use generic-lens or generic-optics with 'events' instead." #-}

instance Lude.FromXML QueueConfiguration where
  parseXML x =
    QueueConfiguration'
      Lude.<$> (x Lude..@? "Id")
      Lude.<*> (x Lude..@? "Filter")
      Lude.<*> (x Lude..@ "Queue")
      Lude.<*> (Lude.parseXMLList "Event" x)

instance Lude.ToXML QueueConfiguration where
  toXML QueueConfiguration' {..} =
    Lude.mconcat
      [ "Id" Lude.@= id,
        "Filter" Lude.@= filter,
        "Queue" Lude.@= queueARN,
        Lude.toXMLList "Event" events
      ]