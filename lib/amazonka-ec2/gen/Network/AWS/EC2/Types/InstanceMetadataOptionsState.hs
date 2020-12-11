-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.InstanceMetadataOptionsState
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.InstanceMetadataOptionsState
  ( InstanceMetadataOptionsState
      ( InstanceMetadataOptionsState',
        IMOSApplied,
        IMOSPending
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype InstanceMetadataOptionsState = InstanceMetadataOptionsState' Lude.Text
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

pattern IMOSApplied :: InstanceMetadataOptionsState
pattern IMOSApplied = InstanceMetadataOptionsState' "applied"

pattern IMOSPending :: InstanceMetadataOptionsState
pattern IMOSPending = InstanceMetadataOptionsState' "pending"

{-# COMPLETE
  IMOSApplied,
  IMOSPending,
  InstanceMetadataOptionsState'
  #-}