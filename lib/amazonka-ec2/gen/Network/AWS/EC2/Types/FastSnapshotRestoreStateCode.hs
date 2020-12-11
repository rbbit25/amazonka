-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.FastSnapshotRestoreStateCode
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.FastSnapshotRestoreStateCode
  ( FastSnapshotRestoreStateCode
      ( FastSnapshotRestoreStateCode',
        FSRSCDisabled,
        FSRSCDisabling,
        FSRSCEnabled,
        FSRSCEnabling,
        FSRSCOptimizing
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype FastSnapshotRestoreStateCode = FastSnapshotRestoreStateCode' Lude.Text
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

pattern FSRSCDisabled :: FastSnapshotRestoreStateCode
pattern FSRSCDisabled = FastSnapshotRestoreStateCode' "disabled"

pattern FSRSCDisabling :: FastSnapshotRestoreStateCode
pattern FSRSCDisabling = FastSnapshotRestoreStateCode' "disabling"

pattern FSRSCEnabled :: FastSnapshotRestoreStateCode
pattern FSRSCEnabled = FastSnapshotRestoreStateCode' "enabled"

pattern FSRSCEnabling :: FastSnapshotRestoreStateCode
pattern FSRSCEnabling = FastSnapshotRestoreStateCode' "enabling"

pattern FSRSCOptimizing :: FastSnapshotRestoreStateCode
pattern FSRSCOptimizing = FastSnapshotRestoreStateCode' "optimizing"

{-# COMPLETE
  FSRSCDisabled,
  FSRSCDisabling,
  FSRSCEnabled,
  FSRSCEnabling,
  FSRSCOptimizing,
  FastSnapshotRestoreStateCode'
  #-}