-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MachineLearning.Types.RealtimeEndpointStatus
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MachineLearning.Types.RealtimeEndpointStatus
  ( RealtimeEndpointStatus
      ( RealtimeEndpointStatus',
        Failed,
        None,
        Ready,
        Updating
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype RealtimeEndpointStatus = RealtimeEndpointStatus' Lude.Text
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

pattern Failed :: RealtimeEndpointStatus
pattern Failed = RealtimeEndpointStatus' "FAILED"

pattern None :: RealtimeEndpointStatus
pattern None = RealtimeEndpointStatus' "NONE"

pattern Ready :: RealtimeEndpointStatus
pattern Ready = RealtimeEndpointStatus' "READY"

pattern Updating :: RealtimeEndpointStatus
pattern Updating = RealtimeEndpointStatus' "UPDATING"

{-# COMPLETE
  Failed,
  None,
  Ready,
  Updating,
  RealtimeEndpointStatus'
  #-}