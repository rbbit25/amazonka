-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.PushNotificationTemplateResponse
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.PushNotificationTemplateResponse
  ( PushNotificationTemplateResponse (..),

    -- * Smart constructor
    mkPushNotificationTemplateResponse,

    -- * Lenses
    pntARN,
    pntDefault,
    pntTemplateDescription,
    pntGCM,
    pntAPNS,
    pntDefaultSubstitutions,
    pntVersion,
    pntADM,
    pntBaidu,
    pntRecommenderId,
    pntTags,
    pntLastModifiedDate,
    pntCreationDate,
    pntTemplateType,
    pntTemplateName,
  )
where

import qualified Network.AWS.Lens as Lens
import Network.AWS.Pinpoint.Types.APNSPushNotificationTemplate
import Network.AWS.Pinpoint.Types.AndroidPushNotificationTemplate
import Network.AWS.Pinpoint.Types.DefaultPushNotificationTemplate
import Network.AWS.Pinpoint.Types.TemplateType
import qualified Network.AWS.Prelude as Lude

-- | Provides information about the content and settings for a message template that can be used in messages that are sent through a push notification channel.
--
-- /See:/ 'mkPushNotificationTemplateResponse' smart constructor.
data PushNotificationTemplateResponse = PushNotificationTemplateResponse'
  { arn ::
      Lude.Maybe Lude.Text,
    default' ::
      Lude.Maybe
        DefaultPushNotificationTemplate,
    templateDescription ::
      Lude.Maybe Lude.Text,
    gcm ::
      Lude.Maybe
        AndroidPushNotificationTemplate,
    apns ::
      Lude.Maybe
        APNSPushNotificationTemplate,
    defaultSubstitutions ::
      Lude.Maybe Lude.Text,
    version ::
      Lude.Maybe Lude.Text,
    aDM ::
      Lude.Maybe
        AndroidPushNotificationTemplate,
    baidu ::
      Lude.Maybe
        AndroidPushNotificationTemplate,
    recommenderId ::
      Lude.Maybe Lude.Text,
    tags ::
      Lude.Maybe
        ( Lude.HashMap
            Lude.Text
            (Lude.Text)
        ),
    lastModifiedDate ::
      Lude.Text,
    creationDate :: Lude.Text,
    templateType ::
      TemplateType,
    templateName :: Lude.Text
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'PushNotificationTemplateResponse' with the minimum fields required to make a request.
--
-- * 'aDM' - The message template that's used for the ADM (Amazon Device Messaging) channel. This message template overrides the default template for push notification channels (DefaultPushNotificationTemplate).
-- * 'apns' - The message template that's used for the APNs (Apple Push Notification service) channel. This message template overrides the default template for push notification channels (DefaultPushNotificationTemplate).
-- * 'arn' - The Amazon Resource Name (ARN) of the message template.
-- * 'baidu' - The message template that's used for the Baidu (Baidu Cloud Push) channel. This message template overrides the default template for push notification channels (DefaultPushNotificationTemplate).
-- * 'creationDate' - The date, in ISO 8601 format, when the message template was created.
-- * 'default'' - The default message template that's used for push notification channels.
-- * 'defaultSubstitutions' - The JSON object that specifies the default values that are used for message variables in the message template. This object is a set of key-value pairs. Each key defines a message variable in the template. The corresponding value defines the default value for that variable.
-- * 'gcm' - The message template that's used for the GCM channel, which is used to send notifications through the Firebase Cloud Messaging (FCM), formerly Google Cloud Messaging (GCM), service. This message template overrides the default template for push notification channels (DefaultPushNotificationTemplate).
-- * 'lastModifiedDate' - The date, in ISO 8601 format, when the message template was last modified.
-- * 'recommenderId' - The unique identifier for the recommender model that's used by the message template.
-- * 'tags' - A string-to-string map of key-value pairs that identifies the tags that are associated with the message template. Each tag consists of a required tag key and an associated tag value.
-- * 'templateDescription' - The custom description of the message template.
-- * 'templateName' - The name of the message template.
-- * 'templateType' - The type of channel that the message template is designed for. For a push notification template, this value is PUSH.
-- * 'version' - The unique identifier, as an integer, for the active version of the message template, or the version of the template that you specified by using the version parameter in your request.
mkPushNotificationTemplateResponse ::
  -- | 'lastModifiedDate'
  Lude.Text ->
  -- | 'creationDate'
  Lude.Text ->
  -- | 'templateType'
  TemplateType ->
  -- | 'templateName'
  Lude.Text ->
  PushNotificationTemplateResponse
mkPushNotificationTemplateResponse
  pLastModifiedDate_
  pCreationDate_
  pTemplateType_
  pTemplateName_ =
    PushNotificationTemplateResponse'
      { arn = Lude.Nothing,
        default' = Lude.Nothing,
        templateDescription = Lude.Nothing,
        gcm = Lude.Nothing,
        apns = Lude.Nothing,
        defaultSubstitutions = Lude.Nothing,
        version = Lude.Nothing,
        aDM = Lude.Nothing,
        baidu = Lude.Nothing,
        recommenderId = Lude.Nothing,
        tags = Lude.Nothing,
        lastModifiedDate = pLastModifiedDate_,
        creationDate = pCreationDate_,
        templateType = pTemplateType_,
        templateName = pTemplateName_
      }

-- | The Amazon Resource Name (ARN) of the message template.
--
-- /Note:/ Consider using 'arn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pntARN :: Lens.Lens' PushNotificationTemplateResponse (Lude.Maybe Lude.Text)
pntARN = Lens.lens (arn :: PushNotificationTemplateResponse -> Lude.Maybe Lude.Text) (\s a -> s {arn = a} :: PushNotificationTemplateResponse)
{-# DEPRECATED pntARN "Use generic-lens or generic-optics with 'arn' instead." #-}

-- | The default message template that's used for push notification channels.
--
-- /Note:/ Consider using 'default'' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pntDefault :: Lens.Lens' PushNotificationTemplateResponse (Lude.Maybe DefaultPushNotificationTemplate)
pntDefault = Lens.lens (default' :: PushNotificationTemplateResponse -> Lude.Maybe DefaultPushNotificationTemplate) (\s a -> s {default' = a} :: PushNotificationTemplateResponse)
{-# DEPRECATED pntDefault "Use generic-lens or generic-optics with 'default'' instead." #-}

-- | The custom description of the message template.
--
-- /Note:/ Consider using 'templateDescription' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pntTemplateDescription :: Lens.Lens' PushNotificationTemplateResponse (Lude.Maybe Lude.Text)
pntTemplateDescription = Lens.lens (templateDescription :: PushNotificationTemplateResponse -> Lude.Maybe Lude.Text) (\s a -> s {templateDescription = a} :: PushNotificationTemplateResponse)
{-# DEPRECATED pntTemplateDescription "Use generic-lens or generic-optics with 'templateDescription' instead." #-}

-- | The message template that's used for the GCM channel, which is used to send notifications through the Firebase Cloud Messaging (FCM), formerly Google Cloud Messaging (GCM), service. This message template overrides the default template for push notification channels (DefaultPushNotificationTemplate).
--
-- /Note:/ Consider using 'gcm' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pntGCM :: Lens.Lens' PushNotificationTemplateResponse (Lude.Maybe AndroidPushNotificationTemplate)
pntGCM = Lens.lens (gcm :: PushNotificationTemplateResponse -> Lude.Maybe AndroidPushNotificationTemplate) (\s a -> s {gcm = a} :: PushNotificationTemplateResponse)
{-# DEPRECATED pntGCM "Use generic-lens or generic-optics with 'gcm' instead." #-}

-- | The message template that's used for the APNs (Apple Push Notification service) channel. This message template overrides the default template for push notification channels (DefaultPushNotificationTemplate).
--
-- /Note:/ Consider using 'apns' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pntAPNS :: Lens.Lens' PushNotificationTemplateResponse (Lude.Maybe APNSPushNotificationTemplate)
pntAPNS = Lens.lens (apns :: PushNotificationTemplateResponse -> Lude.Maybe APNSPushNotificationTemplate) (\s a -> s {apns = a} :: PushNotificationTemplateResponse)
{-# DEPRECATED pntAPNS "Use generic-lens or generic-optics with 'apns' instead." #-}

-- | The JSON object that specifies the default values that are used for message variables in the message template. This object is a set of key-value pairs. Each key defines a message variable in the template. The corresponding value defines the default value for that variable.
--
-- /Note:/ Consider using 'defaultSubstitutions' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pntDefaultSubstitutions :: Lens.Lens' PushNotificationTemplateResponse (Lude.Maybe Lude.Text)
pntDefaultSubstitutions = Lens.lens (defaultSubstitutions :: PushNotificationTemplateResponse -> Lude.Maybe Lude.Text) (\s a -> s {defaultSubstitutions = a} :: PushNotificationTemplateResponse)
{-# DEPRECATED pntDefaultSubstitutions "Use generic-lens or generic-optics with 'defaultSubstitutions' instead." #-}

-- | The unique identifier, as an integer, for the active version of the message template, or the version of the template that you specified by using the version parameter in your request.
--
-- /Note:/ Consider using 'version' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pntVersion :: Lens.Lens' PushNotificationTemplateResponse (Lude.Maybe Lude.Text)
pntVersion = Lens.lens (version :: PushNotificationTemplateResponse -> Lude.Maybe Lude.Text) (\s a -> s {version = a} :: PushNotificationTemplateResponse)
{-# DEPRECATED pntVersion "Use generic-lens or generic-optics with 'version' instead." #-}

-- | The message template that's used for the ADM (Amazon Device Messaging) channel. This message template overrides the default template for push notification channels (DefaultPushNotificationTemplate).
--
-- /Note:/ Consider using 'aDM' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pntADM :: Lens.Lens' PushNotificationTemplateResponse (Lude.Maybe AndroidPushNotificationTemplate)
pntADM = Lens.lens (aDM :: PushNotificationTemplateResponse -> Lude.Maybe AndroidPushNotificationTemplate) (\s a -> s {aDM = a} :: PushNotificationTemplateResponse)
{-# DEPRECATED pntADM "Use generic-lens or generic-optics with 'aDM' instead." #-}

-- | The message template that's used for the Baidu (Baidu Cloud Push) channel. This message template overrides the default template for push notification channels (DefaultPushNotificationTemplate).
--
-- /Note:/ Consider using 'baidu' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pntBaidu :: Lens.Lens' PushNotificationTemplateResponse (Lude.Maybe AndroidPushNotificationTemplate)
pntBaidu = Lens.lens (baidu :: PushNotificationTemplateResponse -> Lude.Maybe AndroidPushNotificationTemplate) (\s a -> s {baidu = a} :: PushNotificationTemplateResponse)
{-# DEPRECATED pntBaidu "Use generic-lens or generic-optics with 'baidu' instead." #-}

-- | The unique identifier for the recommender model that's used by the message template.
--
-- /Note:/ Consider using 'recommenderId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pntRecommenderId :: Lens.Lens' PushNotificationTemplateResponse (Lude.Maybe Lude.Text)
pntRecommenderId = Lens.lens (recommenderId :: PushNotificationTemplateResponse -> Lude.Maybe Lude.Text) (\s a -> s {recommenderId = a} :: PushNotificationTemplateResponse)
{-# DEPRECATED pntRecommenderId "Use generic-lens or generic-optics with 'recommenderId' instead." #-}

-- | A string-to-string map of key-value pairs that identifies the tags that are associated with the message template. Each tag consists of a required tag key and an associated tag value.
--
-- /Note:/ Consider using 'tags' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pntTags :: Lens.Lens' PushNotificationTemplateResponse (Lude.Maybe (Lude.HashMap Lude.Text (Lude.Text)))
pntTags = Lens.lens (tags :: PushNotificationTemplateResponse -> Lude.Maybe (Lude.HashMap Lude.Text (Lude.Text))) (\s a -> s {tags = a} :: PushNotificationTemplateResponse)
{-# DEPRECATED pntTags "Use generic-lens or generic-optics with 'tags' instead." #-}

-- | The date, in ISO 8601 format, when the message template was last modified.
--
-- /Note:/ Consider using 'lastModifiedDate' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pntLastModifiedDate :: Lens.Lens' PushNotificationTemplateResponse Lude.Text
pntLastModifiedDate = Lens.lens (lastModifiedDate :: PushNotificationTemplateResponse -> Lude.Text) (\s a -> s {lastModifiedDate = a} :: PushNotificationTemplateResponse)
{-# DEPRECATED pntLastModifiedDate "Use generic-lens or generic-optics with 'lastModifiedDate' instead." #-}

-- | The date, in ISO 8601 format, when the message template was created.
--
-- /Note:/ Consider using 'creationDate' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pntCreationDate :: Lens.Lens' PushNotificationTemplateResponse Lude.Text
pntCreationDate = Lens.lens (creationDate :: PushNotificationTemplateResponse -> Lude.Text) (\s a -> s {creationDate = a} :: PushNotificationTemplateResponse)
{-# DEPRECATED pntCreationDate "Use generic-lens or generic-optics with 'creationDate' instead." #-}

-- | The type of channel that the message template is designed for. For a push notification template, this value is PUSH.
--
-- /Note:/ Consider using 'templateType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pntTemplateType :: Lens.Lens' PushNotificationTemplateResponse TemplateType
pntTemplateType = Lens.lens (templateType :: PushNotificationTemplateResponse -> TemplateType) (\s a -> s {templateType = a} :: PushNotificationTemplateResponse)
{-# DEPRECATED pntTemplateType "Use generic-lens or generic-optics with 'templateType' instead." #-}

-- | The name of the message template.
--
-- /Note:/ Consider using 'templateName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pntTemplateName :: Lens.Lens' PushNotificationTemplateResponse Lude.Text
pntTemplateName = Lens.lens (templateName :: PushNotificationTemplateResponse -> Lude.Text) (\s a -> s {templateName = a} :: PushNotificationTemplateResponse)
{-# DEPRECATED pntTemplateName "Use generic-lens or generic-optics with 'templateName' instead." #-}

instance Lude.FromJSON PushNotificationTemplateResponse where
  parseJSON =
    Lude.withObject
      "PushNotificationTemplateResponse"
      ( \x ->
          PushNotificationTemplateResponse'
            Lude.<$> (x Lude..:? "Arn")
            Lude.<*> (x Lude..:? "Default")
            Lude.<*> (x Lude..:? "TemplateDescription")
            Lude.<*> (x Lude..:? "GCM")
            Lude.<*> (x Lude..:? "APNS")
            Lude.<*> (x Lude..:? "DefaultSubstitutions")
            Lude.<*> (x Lude..:? "Version")
            Lude.<*> (x Lude..:? "ADM")
            Lude.<*> (x Lude..:? "Baidu")
            Lude.<*> (x Lude..:? "RecommenderId")
            Lude.<*> (x Lude..:? "tags" Lude..!= Lude.mempty)
            Lude.<*> (x Lude..: "LastModifiedDate")
            Lude.<*> (x Lude..: "CreationDate")
            Lude.<*> (x Lude..: "TemplateType")
            Lude.<*> (x Lude..: "TemplateName")
      )