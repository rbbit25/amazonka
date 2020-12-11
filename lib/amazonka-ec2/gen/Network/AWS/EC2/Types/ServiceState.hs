-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.ServiceState
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.ServiceState
  ( ServiceState
      ( ServiceState',
        SerAvailable,
        SerDeleted,
        SerDeleting,
        SerFailed,
        SerPending
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype ServiceState = ServiceState' Lude.Text
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

pattern SerAvailable :: ServiceState
pattern SerAvailable = ServiceState' "Available"

pattern SerDeleted :: ServiceState
pattern SerDeleted = ServiceState' "Deleted"

pattern SerDeleting :: ServiceState
pattern SerDeleting = ServiceState' "Deleting"

pattern SerFailed :: ServiceState
pattern SerFailed = ServiceState' "Failed"

pattern SerPending :: ServiceState
pattern SerPending = ServiceState' "Pending"

{-# COMPLETE
  SerAvailable,
  SerDeleted,
  SerDeleting,
  SerFailed,
  SerPending,
  ServiceState'
  #-}