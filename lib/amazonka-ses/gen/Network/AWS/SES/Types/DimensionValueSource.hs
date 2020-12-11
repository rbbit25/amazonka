-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SES.Types.DimensionValueSource
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SES.Types.DimensionValueSource
  ( DimensionValueSource
      ( DimensionValueSource',
        EmailHeader,
        LinkTag,
        MessageTag
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype DimensionValueSource = DimensionValueSource' Lude.Text
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

pattern EmailHeader :: DimensionValueSource
pattern EmailHeader = DimensionValueSource' "emailHeader"

pattern LinkTag :: DimensionValueSource
pattern LinkTag = DimensionValueSource' "linkTag"

pattern MessageTag :: DimensionValueSource
pattern MessageTag = DimensionValueSource' "messageTag"

{-# COMPLETE
  EmailHeader,
  LinkTag,
  MessageTag,
  DimensionValueSource'
  #-}