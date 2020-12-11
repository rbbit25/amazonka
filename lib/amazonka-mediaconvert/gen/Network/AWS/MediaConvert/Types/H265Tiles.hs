-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.H265Tiles
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.H265Tiles
  ( H265Tiles
      ( H265Tiles',
        HTDisabled,
        HTEnabled
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

-- | Enable use of tiles, allowing horizontal as well as vertical subdivision of the encoded pictures.
newtype H265Tiles = H265Tiles' Lude.Text
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

pattern HTDisabled :: H265Tiles
pattern HTDisabled = H265Tiles' "DISABLED"

pattern HTEnabled :: H265Tiles
pattern HTEnabled = H265Tiles' "ENABLED"

{-# COMPLETE
  HTDisabled,
  HTEnabled,
  H265Tiles'
  #-}