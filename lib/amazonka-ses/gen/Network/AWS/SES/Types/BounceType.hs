-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SES.Types.BounceType
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SES.Types.BounceType
  ( BounceType
      ( BounceType',
        ContentRejected,
        DoesNotExist,
        ExceededQuota,
        MessageTooLarge,
        TemporaryFailure,
        Undefined
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype BounceType = BounceType' Lude.Text
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

pattern ContentRejected :: BounceType
pattern ContentRejected = BounceType' "ContentRejected"

pattern DoesNotExist :: BounceType
pattern DoesNotExist = BounceType' "DoesNotExist"

pattern ExceededQuota :: BounceType
pattern ExceededQuota = BounceType' "ExceededQuota"

pattern MessageTooLarge :: BounceType
pattern MessageTooLarge = BounceType' "MessageTooLarge"

pattern TemporaryFailure :: BounceType
pattern TemporaryFailure = BounceType' "TemporaryFailure"

pattern Undefined :: BounceType
pattern Undefined = BounceType' "Undefined"

{-# COMPLETE
  ContentRejected,
  DoesNotExist,
  ExceededQuota,
  MessageTooLarge,
  TemporaryFailure,
  Undefined,
  BounceType'
  #-}