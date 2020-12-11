-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AppStream.Types.VisibilityType
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppStream.Types.VisibilityType
  ( VisibilityType
      ( VisibilityType',
        Private,
        Public,
        Shared
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype VisibilityType = VisibilityType' Lude.Text
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

pattern Private :: VisibilityType
pattern Private = VisibilityType' "PRIVATE"

pattern Public :: VisibilityType
pattern Public = VisibilityType' "PUBLIC"

pattern Shared :: VisibilityType
pattern Shared = VisibilityType' "SHARED"

{-# COMPLETE
  Private,
  Public,
  Shared,
  VisibilityType'
  #-}