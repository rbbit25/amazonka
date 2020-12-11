-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.ScheduleState
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.ScheduleState
  ( ScheduleState
      ( ScheduleState',
        SSNotScheduled,
        SSScheduled,
        SSTransitioning
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype ScheduleState = ScheduleState' Lude.Text
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

pattern SSNotScheduled :: ScheduleState
pattern SSNotScheduled = ScheduleState' "NOT_SCHEDULED"

pattern SSScheduled :: ScheduleState
pattern SSScheduled = ScheduleState' "SCHEDULED"

pattern SSTransitioning :: ScheduleState
pattern SSTransitioning = ScheduleState' "TRANSITIONING"

{-# COMPLETE
  SSNotScheduled,
  SSScheduled,
  SSTransitioning,
  ScheduleState'
  #-}