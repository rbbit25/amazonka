-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECS.Types.DeploymentRolloutState
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECS.Types.DeploymentRolloutState
  ( DeploymentRolloutState
      ( DeploymentRolloutState',
        Completed,
        Failed,
        InProgress
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype DeploymentRolloutState = DeploymentRolloutState' Lude.Text
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

pattern Completed :: DeploymentRolloutState
pattern Completed = DeploymentRolloutState' "COMPLETED"

pattern Failed :: DeploymentRolloutState
pattern Failed = DeploymentRolloutState' "FAILED"

pattern InProgress :: DeploymentRolloutState
pattern InProgress = DeploymentRolloutState' "IN_PROGRESS"

{-# COMPLETE
  Completed,
  Failed,
  InProgress,
  DeploymentRolloutState'
  #-}