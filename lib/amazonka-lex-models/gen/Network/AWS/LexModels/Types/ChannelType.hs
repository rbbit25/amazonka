-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.LexModels.Types.ChannelType
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.LexModels.Types.ChannelType
  ( ChannelType
      ( ChannelType',
        Facebook,
        Kik,
        Slack,
        TwilioSms
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype ChannelType = ChannelType' Lude.Text
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving newtype
    ( Lude.Hashable,
      Lude.NFData,
      Lude.ToJSONKey,
      Lude.FromJSONKey,
      Lude.ToJSON,
      Lude.FromJSON,
      Lude.ToXML,
      Lude.FromXML,
      Lude.ToText,
      Lude.FromText,
      Lude.ToByteString,
      Lude.ToQuery,
      Lude.ToHeader
    )

pattern Facebook :: ChannelType
pattern Facebook = ChannelType' "Facebook"

pattern Kik :: ChannelType
pattern Kik = ChannelType' "Kik"

pattern Slack :: ChannelType
pattern Slack = ChannelType' "Slack"

pattern TwilioSms :: ChannelType
pattern TwilioSms = ChannelType' "Twilio-Sms"

{-# COMPLETE
  Facebook,
  Kik,
  Slack,
  TwilioSms,
  ChannelType'
  #-}