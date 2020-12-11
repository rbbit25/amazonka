-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.InputDeviceConnectionState
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.InputDeviceConnectionState
  ( InputDeviceConnectionState
      ( InputDeviceConnectionState',
        Connected,
        Disconnected
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

-- | The state of the connection between the input device and AWS.
newtype InputDeviceConnectionState = InputDeviceConnectionState' Lude.Text
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

pattern Connected :: InputDeviceConnectionState
pattern Connected = InputDeviceConnectionState' "CONNECTED"

pattern Disconnected :: InputDeviceConnectionState
pattern Disconnected = InputDeviceConnectionState' "DISCONNECTED"

{-# COMPLETE
  Connected,
  Disconnected,
  InputDeviceConnectionState'
  #-}