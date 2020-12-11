-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.KinesisAnalytics.Types.ApplicationStatus
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KinesisAnalytics.Types.ApplicationStatus
  ( ApplicationStatus
      ( ApplicationStatus',
        Deleting,
        Ready,
        Running,
        Starting,
        Stopping,
        Updating
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype ApplicationStatus = ApplicationStatus' Lude.Text
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

pattern Deleting :: ApplicationStatus
pattern Deleting = ApplicationStatus' "DELETING"

pattern Ready :: ApplicationStatus
pattern Ready = ApplicationStatus' "READY"

pattern Running :: ApplicationStatus
pattern Running = ApplicationStatus' "RUNNING"

pattern Starting :: ApplicationStatus
pattern Starting = ApplicationStatus' "STARTING"

pattern Stopping :: ApplicationStatus
pattern Stopping = ApplicationStatus' "STOPPING"

pattern Updating :: ApplicationStatus
pattern Updating = ApplicationStatus' "UPDATING"

{-# COMPLETE
  Deleting,
  Ready,
  Running,
  Starting,
  Stopping,
  Updating,
  ApplicationStatus'
  #-}