{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodePipeline.Types.ListWebhookItem
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodePipeline.Types.ListWebhookItem where

import Network.AWS.CodePipeline.Types.Tag
import Network.AWS.CodePipeline.Types.WebhookDefinition
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The detail returned for each webhook after listing webhooks, such as the webhook URL, the webhook name, and the webhook ARN.
--
--
--
-- /See:/ 'listWebhookItem' smart constructor.
data ListWebhookItem = ListWebhookItem'
  { _lwiArn :: !(Maybe Text),
    _lwiErrorCode :: !(Maybe Text),
    _lwiLastTriggered :: !(Maybe POSIX),
    _lwiErrorMessage :: !(Maybe Text),
    _lwiTags :: !(Maybe [Tag]),
    _lwiDefinition :: !WebhookDefinition,
    _lwiUrl :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListWebhookItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lwiArn' - The Amazon Resource Name (ARN) of the webhook.
--
-- * 'lwiErrorCode' - The number code of the error.
--
-- * 'lwiLastTriggered' - The date and time a webhook was last successfully triggered, in timestamp format.
--
-- * 'lwiErrorMessage' - The text of the error message about the webhook.
--
-- * 'lwiTags' - Specifies the tags applied to the webhook.
--
-- * 'lwiDefinition' - The detail returned for each webhook, such as the webhook authentication type and filter rules.
--
-- * 'lwiUrl' - A unique URL generated by CodePipeline. When a POST request is made to this URL, the defined pipeline is started as long as the body of the post request satisfies the defined authentication and filtering conditions. Deleting and re-creating a webhook makes the old URL invalid and generates a new one.
listWebhookItem ::
  -- | 'lwiDefinition'
  WebhookDefinition ->
  -- | 'lwiUrl'
  Text ->
  ListWebhookItem
listWebhookItem pDefinition_ pUrl_ =
  ListWebhookItem'
    { _lwiArn = Nothing,
      _lwiErrorCode = Nothing,
      _lwiLastTriggered = Nothing,
      _lwiErrorMessage = Nothing,
      _lwiTags = Nothing,
      _lwiDefinition = pDefinition_,
      _lwiUrl = pUrl_
    }

-- | The Amazon Resource Name (ARN) of the webhook.
lwiArn :: Lens' ListWebhookItem (Maybe Text)
lwiArn = lens _lwiArn (\s a -> s {_lwiArn = a})

-- | The number code of the error.
lwiErrorCode :: Lens' ListWebhookItem (Maybe Text)
lwiErrorCode = lens _lwiErrorCode (\s a -> s {_lwiErrorCode = a})

-- | The date and time a webhook was last successfully triggered, in timestamp format.
lwiLastTriggered :: Lens' ListWebhookItem (Maybe UTCTime)
lwiLastTriggered = lens _lwiLastTriggered (\s a -> s {_lwiLastTriggered = a}) . mapping _Time

-- | The text of the error message about the webhook.
lwiErrorMessage :: Lens' ListWebhookItem (Maybe Text)
lwiErrorMessage = lens _lwiErrorMessage (\s a -> s {_lwiErrorMessage = a})

-- | Specifies the tags applied to the webhook.
lwiTags :: Lens' ListWebhookItem [Tag]
lwiTags = lens _lwiTags (\s a -> s {_lwiTags = a}) . _Default . _Coerce

-- | The detail returned for each webhook, such as the webhook authentication type and filter rules.
lwiDefinition :: Lens' ListWebhookItem WebhookDefinition
lwiDefinition = lens _lwiDefinition (\s a -> s {_lwiDefinition = a})

-- | A unique URL generated by CodePipeline. When a POST request is made to this URL, the defined pipeline is started as long as the body of the post request satisfies the defined authentication and filtering conditions. Deleting and re-creating a webhook makes the old URL invalid and generates a new one.
lwiUrl :: Lens' ListWebhookItem Text
lwiUrl = lens _lwiUrl (\s a -> s {_lwiUrl = a})

instance FromJSON ListWebhookItem where
  parseJSON =
    withObject
      "ListWebhookItem"
      ( \x ->
          ListWebhookItem'
            <$> (x .:? "arn")
            <*> (x .:? "errorCode")
            <*> (x .:? "lastTriggered")
            <*> (x .:? "errorMessage")
            <*> (x .:? "tags" .!= mempty)
            <*> (x .: "definition")
            <*> (x .: "url")
      )

instance Hashable ListWebhookItem

instance NFData ListWebhookItem
