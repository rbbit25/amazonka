-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.HlsCaptionLanguageSetting
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.HlsCaptionLanguageSetting
  ( HlsCaptionLanguageSetting
      ( HlsCaptionLanguageSetting',
        HCLSInsert,
        HCLSNone,
        HCLSOmit
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

-- | Hls Caption Language Setting
newtype HlsCaptionLanguageSetting = HlsCaptionLanguageSetting' Lude.Text
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

pattern HCLSInsert :: HlsCaptionLanguageSetting
pattern HCLSInsert = HlsCaptionLanguageSetting' "INSERT"

pattern HCLSNone :: HlsCaptionLanguageSetting
pattern HCLSNone = HlsCaptionLanguageSetting' "NONE"

pattern HCLSOmit :: HlsCaptionLanguageSetting
pattern HCLSOmit = HlsCaptionLanguageSetting' "OMIT"

{-# COMPLETE
  HCLSInsert,
  HCLSNone,
  HCLSOmit,
  HlsCaptionLanguageSetting'
  #-}