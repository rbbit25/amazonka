-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.PlacementStrategy
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.PlacementStrategy
  ( PlacementStrategy
      ( PlacementStrategy',
        Cluster,
        Partition,
        Spread
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype PlacementStrategy = PlacementStrategy' Lude.Text
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

pattern Cluster :: PlacementStrategy
pattern Cluster = PlacementStrategy' "cluster"

pattern Partition :: PlacementStrategy
pattern Partition = PlacementStrategy' "partition"

pattern Spread :: PlacementStrategy
pattern Spread = PlacementStrategy' "spread"

{-# COMPLETE
  Cluster,
  Partition,
  Spread,
  PlacementStrategy'
  #-}