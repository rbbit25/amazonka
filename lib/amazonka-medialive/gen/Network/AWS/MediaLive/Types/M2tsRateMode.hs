-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.M2tsRateMode
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.M2tsRateMode
  ( M2tsRateMode
      ( M2tsRateMode',
        MRMCbr,
        MRMVbr
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

-- | M2ts Rate Mode
newtype M2tsRateMode = M2tsRateMode' Lude.Text
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

pattern MRMCbr :: M2tsRateMode
pattern MRMCbr = M2tsRateMode' "CBR"

pattern MRMVbr :: M2tsRateMode
pattern MRMVbr = M2tsRateMode' "VBR"

{-# COMPLETE
  MRMCbr,
  MRMVbr,
  M2tsRateMode'
  #-}