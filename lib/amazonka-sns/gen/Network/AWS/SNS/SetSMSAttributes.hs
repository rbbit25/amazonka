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
-- Module      : Network.AWS.SNS.SetSMSAttributes
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Use this request to set the default settings for sending SMS messages and receiving daily SMS usage reports.
--
--
-- You can override some of these settings for a single message when you use the @Publish@ action with the @MessageAttributes.entry.N@ parameter. For more information, see <https://docs.aws.amazon.com/sns/latest/dg/sms_publish-to-phone.html Publishing to a mobile phone> in the /Amazon SNS Developer Guide/ .
module Network.AWS.SNS.SetSMSAttributes
  ( -- * Creating a Request
    setSMSAttributes,
    SetSMSAttributes,

    -- * Request Lenses
    ssmsaAttributes,

    -- * Destructuring the Response
    setSMSAttributesResponse,
    SetSMSAttributesResponse,

    -- * Response Lenses
    ssmsarsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SNS.Types

-- | The input for the SetSMSAttributes action.
--
--
--
-- /See:/ 'setSMSAttributes' smart constructor.
newtype SetSMSAttributes = SetSMSAttributes'
  { _ssmsaAttributes ::
      Map Text (Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'SetSMSAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssmsaAttributes' - The default settings for sending SMS messages from your account. You can set values for the following attribute names: @MonthlySpendLimit@ – The maximum amount in USD that you are willing to spend each month to send SMS messages. When Amazon SNS determines that sending an SMS message would incur a cost that exceeds this limit, it stops sending SMS messages within minutes. /Important:/ Amazon SNS stops sending SMS messages within minutes of the limit being crossed. During that interval, if you continue to send SMS messages, you will incur costs that exceed your limit. By default, the spend limit is set to the maximum allowed by Amazon SNS. If you want to raise the limit, submit an <https://console.aws.amazon.com/support/home#/case/create?issueType=service-limit-increase&limitType=service-code-sns SNS Limit Increase case> . For __New limit value__ , enter your desired monthly spend limit. In the __Use Case Description__ field, explain that you are requesting an SMS monthly spend limit increase. @DeliveryStatusIAMRole@ – The ARN of the IAM role that allows Amazon SNS to write logs about SMS deliveries in CloudWatch Logs. For each SMS message that you send, Amazon SNS writes a log that includes the message price, the success or failure status, the reason for failure (if the message failed), the message dwell time, and other information. @DeliveryStatusSuccessSamplingRate@ – The percentage of successful SMS deliveries for which Amazon SNS will write logs in CloudWatch Logs. The value can be an integer from 0 - 100. For example, to write logs only for failed deliveries, set this value to @0@ . To write logs for 10% of your successful deliveries, set it to @10@ . @DefaultSenderID@ – A string, such as your business brand, that is displayed as the sender on the receiving device. Support for sender IDs varies by country. The sender ID can be 1 - 11 alphanumeric characters, and it must contain at least one letter. @DefaultSMSType@ – The type of SMS message that you will send by default. You can assign the following values:     * @Promotional@ – (Default) Noncritical messages, such as marketing messages. Amazon SNS optimizes the message delivery to incur the lowest cost.     * @Transactional@ – Critical messages that support customer transactions, such as one-time passcodes for multi-factor authentication. Amazon SNS optimizes the message delivery to achieve the highest reliability. @UsageReportS3Bucket@ – The name of the Amazon S3 bucket to receive daily SMS usage reports from Amazon SNS. Each day, Amazon SNS will deliver a usage report as a CSV file to the bucket. The report includes the following information for each SMS message that was successfully delivered by your account:     * Time that the message was published (in UTC)     * Message ID     * Destination phone number     * Message type     * Delivery status     * Message price (in USD)     * Part number (a message is split into multiple parts if it is too long for a single message)     * Total number of parts To receive the report, the bucket must have a policy that allows the Amazon SNS service principle to perform the @s3:PutObject@ and @s3:GetBucketLocation@ actions. For an example bucket policy and usage report, see <https://docs.aws.amazon.com/sns/latest/dg/sms_stats.html Monitoring SMS Activity> in the /Amazon SNS Developer Guide/ .
setSMSAttributes ::
  SetSMSAttributes
setSMSAttributes = SetSMSAttributes' {_ssmsaAttributes = mempty}

-- | The default settings for sending SMS messages from your account. You can set values for the following attribute names: @MonthlySpendLimit@ – The maximum amount in USD that you are willing to spend each month to send SMS messages. When Amazon SNS determines that sending an SMS message would incur a cost that exceeds this limit, it stops sending SMS messages within minutes. /Important:/ Amazon SNS stops sending SMS messages within minutes of the limit being crossed. During that interval, if you continue to send SMS messages, you will incur costs that exceed your limit. By default, the spend limit is set to the maximum allowed by Amazon SNS. If you want to raise the limit, submit an <https://console.aws.amazon.com/support/home#/case/create?issueType=service-limit-increase&limitType=service-code-sns SNS Limit Increase case> . For __New limit value__ , enter your desired monthly spend limit. In the __Use Case Description__ field, explain that you are requesting an SMS monthly spend limit increase. @DeliveryStatusIAMRole@ – The ARN of the IAM role that allows Amazon SNS to write logs about SMS deliveries in CloudWatch Logs. For each SMS message that you send, Amazon SNS writes a log that includes the message price, the success or failure status, the reason for failure (if the message failed), the message dwell time, and other information. @DeliveryStatusSuccessSamplingRate@ – The percentage of successful SMS deliveries for which Amazon SNS will write logs in CloudWatch Logs. The value can be an integer from 0 - 100. For example, to write logs only for failed deliveries, set this value to @0@ . To write logs for 10% of your successful deliveries, set it to @10@ . @DefaultSenderID@ – A string, such as your business brand, that is displayed as the sender on the receiving device. Support for sender IDs varies by country. The sender ID can be 1 - 11 alphanumeric characters, and it must contain at least one letter. @DefaultSMSType@ – The type of SMS message that you will send by default. You can assign the following values:     * @Promotional@ – (Default) Noncritical messages, such as marketing messages. Amazon SNS optimizes the message delivery to incur the lowest cost.     * @Transactional@ – Critical messages that support customer transactions, such as one-time passcodes for multi-factor authentication. Amazon SNS optimizes the message delivery to achieve the highest reliability. @UsageReportS3Bucket@ – The name of the Amazon S3 bucket to receive daily SMS usage reports from Amazon SNS. Each day, Amazon SNS will deliver a usage report as a CSV file to the bucket. The report includes the following information for each SMS message that was successfully delivered by your account:     * Time that the message was published (in UTC)     * Message ID     * Destination phone number     * Message type     * Delivery status     * Message price (in USD)     * Part number (a message is split into multiple parts if it is too long for a single message)     * Total number of parts To receive the report, the bucket must have a policy that allows the Amazon SNS service principle to perform the @s3:PutObject@ and @s3:GetBucketLocation@ actions. For an example bucket policy and usage report, see <https://docs.aws.amazon.com/sns/latest/dg/sms_stats.html Monitoring SMS Activity> in the /Amazon SNS Developer Guide/ .
ssmsaAttributes :: Lens' SetSMSAttributes (HashMap Text (Text))
ssmsaAttributes = lens _ssmsaAttributes (\s a -> s {_ssmsaAttributes = a}) . _Map

instance AWSRequest SetSMSAttributes where
  type Rs SetSMSAttributes = SetSMSAttributesResponse
  request = postQuery sns
  response =
    receiveXMLWrapper
      "SetSMSAttributesResult"
      (\s h x -> SetSMSAttributesResponse' <$> (pure (fromEnum s)))

instance Hashable SetSMSAttributes

instance NFData SetSMSAttributes

instance ToHeaders SetSMSAttributes where
  toHeaders = const mempty

instance ToPath SetSMSAttributes where
  toPath = const "/"

instance ToQuery SetSMSAttributes where
  toQuery SetSMSAttributes' {..} =
    mconcat
      [ "Action" =: ("SetSMSAttributes" :: ByteString),
        "Version" =: ("2010-03-31" :: ByteString),
        "attributes" =: toQueryMap "entry" "key" "value" _ssmsaAttributes
      ]

-- | The response for the SetSMSAttributes action.
--
--
--
-- /See:/ 'setSMSAttributesResponse' smart constructor.
newtype SetSMSAttributesResponse = SetSMSAttributesResponse'
  { _ssmsarsResponseStatus ::
      Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'SetSMSAttributesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssmsarsResponseStatus' - -- | The response status code.
setSMSAttributesResponse ::
  -- | 'ssmsarsResponseStatus'
  Int ->
  SetSMSAttributesResponse
setSMSAttributesResponse pResponseStatus_ =
  SetSMSAttributesResponse'
    { _ssmsarsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
ssmsarsResponseStatus :: Lens' SetSMSAttributesResponse Int
ssmsarsResponseStatus = lens _ssmsarsResponseStatus (\s a -> s {_ssmsarsResponseStatus = a})

instance NFData SetSMSAttributesResponse
