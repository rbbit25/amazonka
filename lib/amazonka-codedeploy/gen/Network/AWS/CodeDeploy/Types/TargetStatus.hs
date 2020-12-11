-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeDeploy.Types.TargetStatus
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeDeploy.Types.TargetStatus
  ( TargetStatus
      ( TargetStatus',
        TSFailed,
        TSInProgress,
        TSPending,
        TSReady,
        TSSkipped,
        TSSucceeded,
        TSUnknown
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype TargetStatus = TargetStatus' Lude.Text
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

pattern TSFailed :: TargetStatus
pattern TSFailed = TargetStatus' "Failed"

pattern TSInProgress :: TargetStatus
pattern TSInProgress = TargetStatus' "InProgress"

pattern TSPending :: TargetStatus
pattern TSPending = TargetStatus' "Pending"

pattern TSReady :: TargetStatus
pattern TSReady = TargetStatus' "Ready"

pattern TSSkipped :: TargetStatus
pattern TSSkipped = TargetStatus' "Skipped"

pattern TSSucceeded :: TargetStatus
pattern TSSucceeded = TargetStatus' "Succeeded"

pattern TSUnknown :: TargetStatus
pattern TSUnknown = TargetStatus' "Unknown"

{-# COMPLETE
  TSFailed,
  TSInProgress,
  TSPending,
  TSReady,
  TSSkipped,
  TSSucceeded,
  TSUnknown,
  TargetStatus'
  #-}