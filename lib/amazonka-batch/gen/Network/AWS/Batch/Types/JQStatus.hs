-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Batch.Types.JQStatus
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Batch.Types.JQStatus
  ( JQStatus
      ( JQStatus',
        Creating,
        Deleted,
        Deleting,
        Invalid,
        Updating,
        Valid
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype JQStatus = JQStatus' Lude.Text
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

pattern Creating :: JQStatus
pattern Creating = JQStatus' "CREATING"

pattern Deleted :: JQStatus
pattern Deleted = JQStatus' "DELETED"

pattern Deleting :: JQStatus
pattern Deleting = JQStatus' "DELETING"

pattern Invalid :: JQStatus
pattern Invalid = JQStatus' "INVALID"

pattern Updating :: JQStatus
pattern Updating = JQStatus' "UPDATING"

pattern Valid :: JQStatus
pattern Valid = JQStatus' "VALID"

{-# COMPLETE
  Creating,
  Deleted,
  Deleting,
  Invalid,
  Updating,
  Valid,
  JQStatus'
  #-}