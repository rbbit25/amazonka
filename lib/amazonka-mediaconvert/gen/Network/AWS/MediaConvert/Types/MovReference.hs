-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.MovReference
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.MovReference
  ( MovReference
      ( MovReference',
        External,
        SelfContained
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

-- | Always keep the default value (SELF_CONTAINED) for this setting.
newtype MovReference = MovReference' Lude.Text
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

pattern External :: MovReference
pattern External = MovReference' "EXTERNAL"

pattern SelfContained :: MovReference
pattern SelfContained = MovReference' "SELF_CONTAINED"

{-# COMPLETE
  External,
  SelfContained,
  MovReference'
  #-}