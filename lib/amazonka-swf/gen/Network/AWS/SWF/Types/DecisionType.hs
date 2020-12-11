-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SWF.Types.DecisionType
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SWF.Types.DecisionType
  ( DecisionType
      ( DecisionType',
        CancelTimer,
        CancelWorkflowExecution,
        CompleteWorkflowExecution,
        ContinueAsNewWorkflowExecution,
        FailWorkflowExecution,
        RecordMarker,
        RequestCancelActivityTask,
        RequestCancelExternalWorkflowExecution,
        ScheduleActivityTask,
        ScheduleLambdaFunction,
        SignalExternalWorkflowExecution,
        StartChildWorkflowExecution,
        StartTimer
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype DecisionType = DecisionType' Lude.Text
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

pattern CancelTimer :: DecisionType
pattern CancelTimer = DecisionType' "CancelTimer"

pattern CancelWorkflowExecution :: DecisionType
pattern CancelWorkflowExecution = DecisionType' "CancelWorkflowExecution"

pattern CompleteWorkflowExecution :: DecisionType
pattern CompleteWorkflowExecution = DecisionType' "CompleteWorkflowExecution"

pattern ContinueAsNewWorkflowExecution :: DecisionType
pattern ContinueAsNewWorkflowExecution = DecisionType' "ContinueAsNewWorkflowExecution"

pattern FailWorkflowExecution :: DecisionType
pattern FailWorkflowExecution = DecisionType' "FailWorkflowExecution"

pattern RecordMarker :: DecisionType
pattern RecordMarker = DecisionType' "RecordMarker"

pattern RequestCancelActivityTask :: DecisionType
pattern RequestCancelActivityTask = DecisionType' "RequestCancelActivityTask"

pattern RequestCancelExternalWorkflowExecution :: DecisionType
pattern RequestCancelExternalWorkflowExecution = DecisionType' "RequestCancelExternalWorkflowExecution"

pattern ScheduleActivityTask :: DecisionType
pattern ScheduleActivityTask = DecisionType' "ScheduleActivityTask"

pattern ScheduleLambdaFunction :: DecisionType
pattern ScheduleLambdaFunction = DecisionType' "ScheduleLambdaFunction"

pattern SignalExternalWorkflowExecution :: DecisionType
pattern SignalExternalWorkflowExecution = DecisionType' "SignalExternalWorkflowExecution"

pattern StartChildWorkflowExecution :: DecisionType
pattern StartChildWorkflowExecution = DecisionType' "StartChildWorkflowExecution"

pattern StartTimer :: DecisionType
pattern StartTimer = DecisionType' "StartTimer"

{-# COMPLETE
  CancelTimer,
  CancelWorkflowExecution,
  CompleteWorkflowExecution,
  ContinueAsNewWorkflowExecution,
  FailWorkflowExecution,
  RecordMarker,
  RequestCancelActivityTask,
  RequestCancelExternalWorkflowExecution,
  ScheduleActivityTask,
  ScheduleLambdaFunction,
  SignalExternalWorkflowExecution,
  StartChildWorkflowExecution,
  StartTimer,
  DecisionType'
  #-}