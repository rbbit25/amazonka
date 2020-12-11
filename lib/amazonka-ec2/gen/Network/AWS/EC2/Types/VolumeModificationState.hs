-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.VolumeModificationState
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.VolumeModificationState
  ( VolumeModificationState
      ( VolumeModificationState',
        Completed,
        Failed,
        Modifying,
        Optimizing
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype VolumeModificationState = VolumeModificationState' Lude.Text
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

pattern Completed :: VolumeModificationState
pattern Completed = VolumeModificationState' "completed"

pattern Failed :: VolumeModificationState
pattern Failed = VolumeModificationState' "failed"

pattern Modifying :: VolumeModificationState
pattern Modifying = VolumeModificationState' "modifying"

pattern Optimizing :: VolumeModificationState
pattern Optimizing = VolumeModificationState' "optimizing"

{-# COMPLETE
  Completed,
  Failed,
  Modifying,
  Optimizing,
  VolumeModificationState'
  #-}