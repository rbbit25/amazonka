-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Connect.Types.InstanceStatus
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Connect.Types.InstanceStatus
  ( InstanceStatus
      ( InstanceStatus',
        Active,
        CreationFailed,
        CreationInProgress
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype InstanceStatus = InstanceStatus' Lude.Text
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

pattern Active :: InstanceStatus
pattern Active = InstanceStatus' "ACTIVE"

pattern CreationFailed :: InstanceStatus
pattern CreationFailed = InstanceStatus' "CREATION_FAILED"

pattern CreationInProgress :: InstanceStatus
pattern CreationInProgress = InstanceStatus' "CREATION_IN_PROGRESS"

{-# COMPLETE
  Active,
  CreationFailed,
  CreationInProgress,
  InstanceStatus'
  #-}