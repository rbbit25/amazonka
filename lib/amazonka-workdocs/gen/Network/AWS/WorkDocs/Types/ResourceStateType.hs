-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WorkDocs.Types.ResourceStateType
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkDocs.Types.ResourceStateType
  ( ResourceStateType
      ( ResourceStateType',
        RSTActive,
        RSTRecycled,
        RSTRecycling,
        RSTRestoring
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype ResourceStateType = ResourceStateType' Lude.Text
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

pattern RSTActive :: ResourceStateType
pattern RSTActive = ResourceStateType' "ACTIVE"

pattern RSTRecycled :: ResourceStateType
pattern RSTRecycled = ResourceStateType' "RECYCLED"

pattern RSTRecycling :: ResourceStateType
pattern RSTRecycling = ResourceStateType' "RECYCLING"

pattern RSTRestoring :: ResourceStateType
pattern RSTRestoring = ResourceStateType' "RESTORING"

{-# COMPLETE
  RSTActive,
  RSTRecycled,
  RSTRecycling,
  RSTRestoring,
  ResourceStateType'
  #-}