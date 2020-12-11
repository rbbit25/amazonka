-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeDeploy.Types.DeploymentStatus
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeDeploy.Types.DeploymentStatus
  ( DeploymentStatus
      ( DeploymentStatus',
        Baking,
        Created,
        Failed,
        InProgress,
        Queued,
        Ready,
        Stopped,
        Succeeded
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype DeploymentStatus = DeploymentStatus' Lude.Text
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

pattern Baking :: DeploymentStatus
pattern Baking = DeploymentStatus' "Baking"

pattern Created :: DeploymentStatus
pattern Created = DeploymentStatus' "Created"

pattern Failed :: DeploymentStatus
pattern Failed = DeploymentStatus' "Failed"

pattern InProgress :: DeploymentStatus
pattern InProgress = DeploymentStatus' "InProgress"

pattern Queued :: DeploymentStatus
pattern Queued = DeploymentStatus' "Queued"

pattern Ready :: DeploymentStatus
pattern Ready = DeploymentStatus' "Ready"

pattern Stopped :: DeploymentStatus
pattern Stopped = DeploymentStatus' "Stopped"

pattern Succeeded :: DeploymentStatus
pattern Succeeded = DeploymentStatus' "Succeeded"

{-# COMPLETE
  Baking,
  Created,
  Failed,
  InProgress,
  Queued,
  Ready,
  Stopped,
  Succeeded,
  DeploymentStatus'
  #-}