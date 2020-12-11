-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.GlobalConfigurationOutputLockingMode
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.GlobalConfigurationOutputLockingMode
  ( GlobalConfigurationOutputLockingMode
      ( GlobalConfigurationOutputLockingMode',
        EpochLocking,
        PipelineLocking
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

-- | Global Configuration Output Locking Mode
newtype GlobalConfigurationOutputLockingMode = GlobalConfigurationOutputLockingMode' Lude.Text
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

pattern EpochLocking :: GlobalConfigurationOutputLockingMode
pattern EpochLocking = GlobalConfigurationOutputLockingMode' "EPOCH_LOCKING"

pattern PipelineLocking :: GlobalConfigurationOutputLockingMode
pattern PipelineLocking = GlobalConfigurationOutputLockingMode' "PIPELINE_LOCKING"

{-# COMPLETE
  EpochLocking,
  PipelineLocking,
  GlobalConfigurationOutputLockingMode'
  #-}