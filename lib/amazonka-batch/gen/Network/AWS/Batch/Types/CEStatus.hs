-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Batch.Types.CEStatus
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Batch.Types.CEStatus
  ( CEStatus
      ( CEStatus',
        CESCreating,
        CESDeleted,
        CESDeleting,
        CESInvalid,
        CESUpdating,
        CESValid
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype CEStatus = CEStatus' Lude.Text
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

pattern CESCreating :: CEStatus
pattern CESCreating = CEStatus' "CREATING"

pattern CESDeleted :: CEStatus
pattern CESDeleted = CEStatus' "DELETED"

pattern CESDeleting :: CEStatus
pattern CESDeleting = CEStatus' "DELETING"

pattern CESInvalid :: CEStatus
pattern CESInvalid = CEStatus' "INVALID"

pattern CESUpdating :: CEStatus
pattern CESUpdating = CEStatus' "UPDATING"

pattern CESValid :: CEStatus
pattern CESValid = CEStatus' "VALID"

{-# COMPLETE
  CESCreating,
  CESDeleted,
  CESDeleting,
  CESInvalid,
  CESUpdating,
  CESValid,
  CEStatus'
  #-}