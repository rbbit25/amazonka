-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.RDS.Types.DBProxyStatus
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.RDS.Types.DBProxyStatus
  ( DBProxyStatus
      ( DBProxyStatus',
        Available,
        Creating,
        Deleting,
        IncompatibleNetwork,
        InsufficientResourceLimits,
        Modifying,
        Reactivating,
        Suspended,
        Suspending
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype DBProxyStatus = DBProxyStatus' Lude.Text
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

pattern Available :: DBProxyStatus
pattern Available = DBProxyStatus' "available"

pattern Creating :: DBProxyStatus
pattern Creating = DBProxyStatus' "creating"

pattern Deleting :: DBProxyStatus
pattern Deleting = DBProxyStatus' "deleting"

pattern IncompatibleNetwork :: DBProxyStatus
pattern IncompatibleNetwork = DBProxyStatus' "incompatible-network"

pattern InsufficientResourceLimits :: DBProxyStatus
pattern InsufficientResourceLimits = DBProxyStatus' "insufficient-resource-limits"

pattern Modifying :: DBProxyStatus
pattern Modifying = DBProxyStatus' "modifying"

pattern Reactivating :: DBProxyStatus
pattern Reactivating = DBProxyStatus' "reactivating"

pattern Suspended :: DBProxyStatus
pattern Suspended = DBProxyStatus' "suspended"

pattern Suspending :: DBProxyStatus
pattern Suspending = DBProxyStatus' "suspending"

{-# COMPLETE
  Available,
  Creating,
  Deleting,
  IncompatibleNetwork,
  InsufficientResourceLimits,
  Modifying,
  Reactivating,
  Suspended,
  Suspending,
  DBProxyStatus'
  #-}