-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.M2tsEbpPlacement
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.M2tsEbpPlacement
  ( M2tsEbpPlacement
      ( M2tsEbpPlacement',
        VideoAndAudioPids,
        VideoPid
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

-- | M2ts Ebp Placement
newtype M2tsEbpPlacement = M2tsEbpPlacement' Lude.Text
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

pattern VideoAndAudioPids :: M2tsEbpPlacement
pattern VideoAndAudioPids = M2tsEbpPlacement' "VIDEO_AND_AUDIO_PIDS"

pattern VideoPid :: M2tsEbpPlacement
pattern VideoPid = M2tsEbpPlacement' "VIDEO_PID"

{-# COMPLETE
  VideoAndAudioPids,
  VideoPid,
  M2tsEbpPlacement'
  #-}