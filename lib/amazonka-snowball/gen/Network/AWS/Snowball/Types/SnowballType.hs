-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Snowball.Types.SnowballType
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Snowball.Types.SnowballType
  ( SnowballType
      ( SnowballType',
        Edge,
        EdgeC,
        EdgeCg,
        EdgeS,
        SNC1Hdd,
        Standard
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype SnowballType = SnowballType' Lude.Text
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

pattern Edge :: SnowballType
pattern Edge = SnowballType' "EDGE"

pattern EdgeC :: SnowballType
pattern EdgeC = SnowballType' "EDGE_C"

pattern EdgeCg :: SnowballType
pattern EdgeCg = SnowballType' "EDGE_CG"

pattern EdgeS :: SnowballType
pattern EdgeS = SnowballType' "EDGE_S"

pattern SNC1Hdd :: SnowballType
pattern SNC1Hdd = SnowballType' "SNC1_HDD"

pattern Standard :: SnowballType
pattern Standard = SnowballType' "STANDARD"

{-# COMPLETE
  Edge,
  EdgeC,
  EdgeCg,
  EdgeS,
  SNC1Hdd,
  Standard,
  SnowballType'
  #-}