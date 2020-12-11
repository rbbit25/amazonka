-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SES.Types.NotificationType
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SES.Types.NotificationType
  ( NotificationType
      ( NotificationType',
        Bounce,
        Complaint,
        Delivery
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype NotificationType = NotificationType' Lude.Text
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

pattern Bounce :: NotificationType
pattern Bounce = NotificationType' "Bounce"

pattern Complaint :: NotificationType
pattern Complaint = NotificationType' "Complaint"

pattern Delivery :: NotificationType
pattern Delivery = NotificationType' "Delivery"

{-# COMPLETE
  Bounce,
  Complaint,
  Delivery,
  NotificationType'
  #-}