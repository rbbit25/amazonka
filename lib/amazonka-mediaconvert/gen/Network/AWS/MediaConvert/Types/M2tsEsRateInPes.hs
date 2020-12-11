-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.M2tsEsRateInPes
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.M2tsEsRateInPes
  ( M2tsEsRateInPes
      ( M2tsEsRateInPes',
        Exclude,
        Include
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

-- | Controls whether to include the ES Rate field in the PES header.
newtype M2tsEsRateInPes = M2tsEsRateInPes' Lude.Text
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

pattern Exclude :: M2tsEsRateInPes
pattern Exclude = M2tsEsRateInPes' "EXCLUDE"

pattern Include :: M2tsEsRateInPes
pattern Include = M2tsEsRateInPes' "INCLUDE"

{-# COMPLETE
  Exclude,
  Include,
  M2tsEsRateInPes'
  #-}