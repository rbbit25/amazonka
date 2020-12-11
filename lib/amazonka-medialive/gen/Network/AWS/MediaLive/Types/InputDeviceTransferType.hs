-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.InputDeviceTransferType
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.InputDeviceTransferType
  ( InputDeviceTransferType
      ( InputDeviceTransferType',
        Incoming,
        Outgoing
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

-- | The type of device transfer. INCOMING for an input device that is being transferred to you, OUTGOING for an input device that you are transferring to another AWS account.
newtype InputDeviceTransferType = InputDeviceTransferType' Lude.Text
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

pattern Incoming :: InputDeviceTransferType
pattern Incoming = InputDeviceTransferType' "INCOMING"

pattern Outgoing :: InputDeviceTransferType
pattern Outgoing = InputDeviceTransferType' "OUTGOING"

{-# COMPLETE
  Incoming,
  Outgoing,
  InputDeviceTransferType'
  #-}