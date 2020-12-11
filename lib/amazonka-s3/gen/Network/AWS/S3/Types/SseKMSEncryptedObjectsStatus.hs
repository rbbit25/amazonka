-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.S3.Types.SseKMSEncryptedObjectsStatus
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.S3.Types.SseKMSEncryptedObjectsStatus
  ( SseKMSEncryptedObjectsStatus
      ( SseKMSEncryptedObjectsStatus',
        SKEOSDisabled,
        SKEOSEnabled
      ),
  )
where

import qualified Network.AWS.Prelude as Lude
import Network.AWS.S3.Internal

newtype SseKMSEncryptedObjectsStatus = SseKMSEncryptedObjectsStatus' Lude.Text
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

pattern SKEOSDisabled :: SseKMSEncryptedObjectsStatus
pattern SKEOSDisabled = SseKMSEncryptedObjectsStatus' "Disabled"

pattern SKEOSEnabled :: SseKMSEncryptedObjectsStatus
pattern SKEOSEnabled = SseKMSEncryptedObjectsStatus' "Enabled"

{-# COMPLETE
  SKEOSDisabled,
  SKEOSEnabled,
  SseKMSEncryptedObjectsStatus'
  #-}