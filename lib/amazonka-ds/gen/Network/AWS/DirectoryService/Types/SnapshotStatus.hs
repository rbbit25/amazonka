-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DirectoryService.Types.SnapshotStatus
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DirectoryService.Types.SnapshotStatus
  ( SnapshotStatus
      ( SnapshotStatus',
        SSCompleted,
        SSCreating,
        SSFailed
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype SnapshotStatus = SnapshotStatus' Lude.Text
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

pattern SSCompleted :: SnapshotStatus
pattern SSCompleted = SnapshotStatus' "Completed"

pattern SSCreating :: SnapshotStatus
pattern SSCreating = SnapshotStatus' "Creating"

pattern SSFailed :: SnapshotStatus
pattern SSFailed = SnapshotStatus' "Failed"

{-# COMPLETE
  SSCompleted,
  SSCreating,
  SSFailed,
  SnapshotStatus'
  #-}