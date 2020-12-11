-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DirectConnect.Types.InterconnectState
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DirectConnect.Types.InterconnectState
  ( InterconnectState
      ( InterconnectState',
        ISAvailable,
        ISDeleted,
        ISDeleting,
        ISDown,
        ISPending,
        ISRequested,
        ISUnknown
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype InterconnectState = InterconnectState' Lude.Text
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

pattern ISAvailable :: InterconnectState
pattern ISAvailable = InterconnectState' "available"

pattern ISDeleted :: InterconnectState
pattern ISDeleted = InterconnectState' "deleted"

pattern ISDeleting :: InterconnectState
pattern ISDeleting = InterconnectState' "deleting"

pattern ISDown :: InterconnectState
pattern ISDown = InterconnectState' "down"

pattern ISPending :: InterconnectState
pattern ISPending = InterconnectState' "pending"

pattern ISRequested :: InterconnectState
pattern ISRequested = InterconnectState' "requested"

pattern ISUnknown :: InterconnectState
pattern ISUnknown = InterconnectState' "unknown"

{-# COMPLETE
  ISAvailable,
  ISDeleted,
  ISDeleting,
  ISDown,
  ISPending,
  ISRequested,
  ISUnknown,
  InterconnectState'
  #-}