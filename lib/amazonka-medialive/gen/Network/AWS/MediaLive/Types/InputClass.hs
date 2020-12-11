-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.InputClass
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.InputClass
  ( InputClass
      ( InputClass',
        ICSinglePipeline,
        ICStandard
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

-- | A standard input has two sources and a single pipeline input only has one.
newtype InputClass = InputClass' Lude.Text
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

pattern ICSinglePipeline :: InputClass
pattern ICSinglePipeline = InputClass' "SINGLE_PIPELINE"

pattern ICStandard :: InputClass
pattern ICStandard = InputClass' "STANDARD"

{-# COMPLETE
  ICSinglePipeline,
  ICStandard,
  InputClass'
  #-}