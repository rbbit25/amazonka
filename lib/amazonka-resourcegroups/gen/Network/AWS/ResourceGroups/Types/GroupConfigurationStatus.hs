-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ResourceGroups.Types.GroupConfigurationStatus
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ResourceGroups.Types.GroupConfigurationStatus
  ( GroupConfigurationStatus
      ( GroupConfigurationStatus',
        UpdateComplete,
        UpdateFailed,
        Updating
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype GroupConfigurationStatus = GroupConfigurationStatus' Lude.Text
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

pattern UpdateComplete :: GroupConfigurationStatus
pattern UpdateComplete = GroupConfigurationStatus' "UPDATE_COMPLETE"

pattern UpdateFailed :: GroupConfigurationStatus
pattern UpdateFailed = GroupConfigurationStatus' "UPDATE_FAILED"

pattern Updating :: GroupConfigurationStatus
pattern Updating = GroupConfigurationStatus' "UPDATING"

{-# COMPLETE
  UpdateComplete,
  UpdateFailed,
  Updating,
  GroupConfigurationStatus'
  #-}