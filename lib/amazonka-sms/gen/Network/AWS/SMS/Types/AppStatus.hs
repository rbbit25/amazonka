-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SMS.Types.AppStatus
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SMS.Types.AppStatus
  ( AppStatus
      ( AppStatus',
        Active,
        Creating,
        DeleteFailed,
        Deleted,
        Deleting,
        Updating
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype AppStatus = AppStatus' Lude.Text
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

pattern Active :: AppStatus
pattern Active = AppStatus' "ACTIVE"

pattern Creating :: AppStatus
pattern Creating = AppStatus' "CREATING"

pattern DeleteFailed :: AppStatus
pattern DeleteFailed = AppStatus' "DELETE_FAILED"

pattern Deleted :: AppStatus
pattern Deleted = AppStatus' "DELETED"

pattern Deleting :: AppStatus
pattern Deleting = AppStatus' "DELETING"

pattern Updating :: AppStatus
pattern Updating = AppStatus' "UPDATING"

{-# COMPLETE
  Active,
  Creating,
  DeleteFailed,
  Deleted,
  Deleting,
  Updating,
  AppStatus'
  #-}