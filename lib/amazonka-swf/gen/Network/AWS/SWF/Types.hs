-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SWF.Types
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SWF.Types
  ( -- * Service configuration
    swfService,

    -- * Errors

    -- * ActivityTaskTimeoutType
    ActivityTaskTimeoutType (..),

    -- * CancelTimerFailedCause
    CancelTimerFailedCause (..),

    -- * CancelWorkflowExecutionFailedCause
    CancelWorkflowExecutionFailedCause (..),

    -- * ChildPolicy
    ChildPolicy (..),

    -- * CloseStatus
    CloseStatus (..),

    -- * CompleteWorkflowExecutionFailedCause
    CompleteWorkflowExecutionFailedCause (..),

    -- * ContinueAsNewWorkflowExecutionFailedCause
    ContinueAsNewWorkflowExecutionFailedCause (..),

    -- * DecisionTaskTimeoutType
    DecisionTaskTimeoutType (..),

    -- * DecisionType
    DecisionType (..),

    -- * EventType
    EventType (..),

    -- * ExecutionStatus
    ExecutionStatus (..),

    -- * FailWorkflowExecutionFailedCause
    FailWorkflowExecutionFailedCause (..),

    -- * LambdaFunctionTimeoutType
    LambdaFunctionTimeoutType (..),

    -- * RecordMarkerFailedCause
    RecordMarkerFailedCause (..),

    -- * RegistrationStatus
    RegistrationStatus (..),

    -- * RequestCancelActivityTaskFailedCause
    RequestCancelActivityTaskFailedCause (..),

    -- * RequestCancelExternalWorkflowExecutionFailedCause
    RequestCancelExternalWorkflowExecutionFailedCause (..),

    -- * ScheduleActivityTaskFailedCause
    ScheduleActivityTaskFailedCause (..),

    -- * ScheduleLambdaFunctionFailedCause
    ScheduleLambdaFunctionFailedCause (..),

    -- * SignalExternalWorkflowExecutionFailedCause
    SignalExternalWorkflowExecutionFailedCause (..),

    -- * StartChildWorkflowExecutionFailedCause
    StartChildWorkflowExecutionFailedCause (..),

    -- * StartLambdaFunctionFailedCause
    StartLambdaFunctionFailedCause (..),

    -- * StartTimerFailedCause
    StartTimerFailedCause (..),

    -- * WorkflowExecutionCancelRequestedCause
    WorkflowExecutionCancelRequestedCause (..),

    -- * WorkflowExecutionTerminatedCause
    WorkflowExecutionTerminatedCause (..),

    -- * WorkflowExecutionTimeoutType
    WorkflowExecutionTimeoutType (..),

    -- * ActivityTaskCancelRequestedEventAttributes
    ActivityTaskCancelRequestedEventAttributes (..),
    mkActivityTaskCancelRequestedEventAttributes,
    atcreaDecisionTaskCompletedEventId,
    atcreaActivityId,

    -- * ActivityTaskCanceledEventAttributes
    ActivityTaskCanceledEventAttributes (..),
    mkActivityTaskCanceledEventAttributes,
    aLatestCancelRequestedEventId,
    aDetails,
    aScheduledEventId,
    aStartedEventId,

    -- * ActivityTaskCompletedEventAttributes
    ActivityTaskCompletedEventAttributes (..),
    mkActivityTaskCompletedEventAttributes,
    atceaResult,
    atceaScheduledEventId,
    atceaStartedEventId,

    -- * ActivityTaskFailedEventAttributes
    ActivityTaskFailedEventAttributes (..),
    mkActivityTaskFailedEventAttributes,
    atfeaReason,
    atfeaDetails,
    atfeaScheduledEventId,
    atfeaStartedEventId,

    -- * ActivityTaskScheduledEventAttributes
    ActivityTaskScheduledEventAttributes (..),
    mkActivityTaskScheduledEventAttributes,
    atseaControl,
    atseaHeartbeatTimeout,
    atseaScheduleToCloseTimeout,
    atseaInput,
    atseaTaskPriority,
    atseaScheduleToStartTimeout,
    atseaStartToCloseTimeout,
    atseaActivityType,
    atseaActivityId,
    atseaTaskList,
    atseaDecisionTaskCompletedEventId,

    -- * ActivityTaskStartedEventAttributes
    ActivityTaskStartedEventAttributes (..),
    mkActivityTaskStartedEventAttributes,
    atseaIdentity,
    atseaScheduledEventId,

    -- * ActivityTaskTimedOutEventAttributes
    ActivityTaskTimedOutEventAttributes (..),
    mkActivityTaskTimedOutEventAttributes,
    attoeaDetails,
    attoeaTimeoutType,
    attoeaScheduledEventId,
    attoeaStartedEventId,

    -- * ActivityType
    ActivityType (..),
    mkActivityType,
    atName,
    atVersion,

    -- * ActivityTypeConfiguration
    ActivityTypeConfiguration (..),
    mkActivityTypeConfiguration,
    atcDefaultTaskScheduleToStartTimeout,
    atcDefaultTaskList,
    atcDefaultTaskPriority,
    atcDefaultTaskHeartbeatTimeout,
    atcDefaultTaskScheduleToCloseTimeout,
    atcDefaultTaskStartToCloseTimeout,

    -- * ActivityTypeInfo
    ActivityTypeInfo (..),
    mkActivityTypeInfo,
    atiDeprecationDate,
    atiDescription,
    atiActivityType,
    atiStatus,
    atiCreationDate,

    -- * CancelTimerDecisionAttributes
    CancelTimerDecisionAttributes (..),
    mkCancelTimerDecisionAttributes,
    ctdaTimerId,

    -- * CancelTimerFailedEventAttributes
    CancelTimerFailedEventAttributes (..),
    mkCancelTimerFailedEventAttributes,
    ctfeaTimerId,
    ctfeaCause,
    ctfeaDecisionTaskCompletedEventId,

    -- * CancelWorkflowExecutionDecisionAttributes
    CancelWorkflowExecutionDecisionAttributes (..),
    mkCancelWorkflowExecutionDecisionAttributes,
    cwedaDetails,

    -- * CancelWorkflowExecutionFailedEventAttributes
    CancelWorkflowExecutionFailedEventAttributes (..),
    mkCancelWorkflowExecutionFailedEventAttributes,
    cCause,
    cDecisionTaskCompletedEventId,

    -- * ChildWorkflowExecutionCanceledEventAttributes
    ChildWorkflowExecutionCanceledEventAttributes (..),
    mkChildWorkflowExecutionCanceledEventAttributes,
    cDetails,
    cWorkflowExecution,
    cWorkflowType,
    cInitiatedEventId,
    cStartedEventId,

    -- * ChildWorkflowExecutionCompletedEventAttributes
    ChildWorkflowExecutionCompletedEventAttributes (..),
    mkChildWorkflowExecutionCompletedEventAttributes,
    cweceaResult,
    cweceaWorkflowExecution,
    cweceaWorkflowType,
    cweceaInitiatedEventId,
    cweceaStartedEventId,

    -- * ChildWorkflowExecutionFailedEventAttributes
    ChildWorkflowExecutionFailedEventAttributes (..),
    mkChildWorkflowExecutionFailedEventAttributes,
    cwefeaReason,
    cwefeaDetails,
    cwefeaWorkflowExecution,
    cwefeaWorkflowType,
    cwefeaInitiatedEventId,
    cwefeaStartedEventId,

    -- * ChildWorkflowExecutionStartedEventAttributes
    ChildWorkflowExecutionStartedEventAttributes (..),
    mkChildWorkflowExecutionStartedEventAttributes,
    cweseaWorkflowExecution,
    cweseaWorkflowType,
    cweseaInitiatedEventId,

    -- * ChildWorkflowExecutionTerminatedEventAttributes
    ChildWorkflowExecutionTerminatedEventAttributes (..),
    mkChildWorkflowExecutionTerminatedEventAttributes,
    cweteaWorkflowExecution,
    cweteaWorkflowType,
    cweteaInitiatedEventId,
    cweteaStartedEventId,

    -- * ChildWorkflowExecutionTimedOutEventAttributes
    ChildWorkflowExecutionTimedOutEventAttributes (..),
    mkChildWorkflowExecutionTimedOutEventAttributes,
    cwetoeaWorkflowExecution,
    cwetoeaWorkflowType,
    cwetoeaTimeoutType,
    cwetoeaInitiatedEventId,
    cwetoeaStartedEventId,

    -- * CloseStatusFilter
    CloseStatusFilter (..),
    mkCloseStatusFilter,
    csfStatus,

    -- * CompleteWorkflowExecutionDecisionAttributes
    CompleteWorkflowExecutionDecisionAttributes (..),
    mkCompleteWorkflowExecutionDecisionAttributes,
    cwedaResult,

    -- * CompleteWorkflowExecutionFailedEventAttributes
    CompleteWorkflowExecutionFailedEventAttributes (..),
    mkCompleteWorkflowExecutionFailedEventAttributes,
    cwefeaCause,
    cwefeaDecisionTaskCompletedEventId,

    -- * ContinueAsNewWorkflowExecutionDecisionAttributes
    ContinueAsNewWorkflowExecutionDecisionAttributes (..),
    mkContinueAsNewWorkflowExecutionDecisionAttributes,
    canwedaTagList,
    canwedaTaskStartToCloseTimeout,
    canwedaLambdaRole,
    canwedaInput,
    canwedaWorkflowTypeVersion,
    canwedaExecutionStartToCloseTimeout,
    canwedaTaskList,
    canwedaTaskPriority,
    canwedaChildPolicy,

    -- * ContinueAsNewWorkflowExecutionFailedEventAttributes
    ContinueAsNewWorkflowExecutionFailedEventAttributes (..),
    mkContinueAsNewWorkflowExecutionFailedEventAttributes,
    canwefeaCause,
    canwefeaDecisionTaskCompletedEventId,

    -- * Decision
    Decision (..),
    mkDecision,
    dRequestCancelExternalWorkflowExecutionDecisionAttributes,
    dScheduleActivityTaskDecisionAttributes,
    dSignalExternalWorkflowExecutionDecisionAttributes,
    dStartTimerDecisionAttributes,
    dRecordMarkerDecisionAttributes,
    dFailWorkflowExecutionDecisionAttributes,
    dStartChildWorkflowExecutionDecisionAttributes,
    dCompleteWorkflowExecutionDecisionAttributes,
    dScheduleLambdaFunctionDecisionAttributes,
    dRequestCancelActivityTaskDecisionAttributes,
    dCancelWorkflowExecutionDecisionAttributes,
    dCancelTimerDecisionAttributes,
    dContinueAsNewWorkflowExecutionDecisionAttributes,
    dDecisionType,

    -- * DecisionTaskCompletedEventAttributes
    DecisionTaskCompletedEventAttributes (..),
    mkDecisionTaskCompletedEventAttributes,
    dtceaExecutionContext,
    dtceaScheduledEventId,
    dtceaStartedEventId,

    -- * DecisionTaskScheduledEventAttributes
    DecisionTaskScheduledEventAttributes (..),
    mkDecisionTaskScheduledEventAttributes,
    dtseaTaskPriority,
    dtseaStartToCloseTimeout,
    dtseaTaskList,

    -- * DecisionTaskStartedEventAttributes
    DecisionTaskStartedEventAttributes (..),
    mkDecisionTaskStartedEventAttributes,
    dtseaIdentity,
    dtseaScheduledEventId,

    -- * DecisionTaskTimedOutEventAttributes
    DecisionTaskTimedOutEventAttributes (..),
    mkDecisionTaskTimedOutEventAttributes,
    dttoeaTimeoutType,
    dttoeaScheduledEventId,
    dttoeaStartedEventId,

    -- * DomainConfiguration
    DomainConfiguration (..),
    mkDomainConfiguration,
    dcWorkflowExecutionRetentionPeriodInDays,

    -- * DomainInfo
    DomainInfo (..),
    mkDomainInfo,
    diArn,
    diDescription,
    diName,
    diStatus,

    -- * ExecutionTimeFilter
    ExecutionTimeFilter (..),
    mkExecutionTimeFilter,
    etfLatestDate,
    etfOldestDate,

    -- * ExternalWorkflowExecutionCancelRequestedEventAttributes
    ExternalWorkflowExecutionCancelRequestedEventAttributes (..),
    mkExternalWorkflowExecutionCancelRequestedEventAttributes,
    ewecreaWorkflowExecution,
    ewecreaInitiatedEventId,

    -- * ExternalWorkflowExecutionSignaledEventAttributes
    ExternalWorkflowExecutionSignaledEventAttributes (..),
    mkExternalWorkflowExecutionSignaledEventAttributes,
    eweseaWorkflowExecution,
    eweseaInitiatedEventId,

    -- * FailWorkflowExecutionDecisionAttributes
    FailWorkflowExecutionDecisionAttributes (..),
    mkFailWorkflowExecutionDecisionAttributes,
    fwedaReason,
    fwedaDetails,

    -- * FailWorkflowExecutionFailedEventAttributes
    FailWorkflowExecutionFailedEventAttributes (..),
    mkFailWorkflowExecutionFailedEventAttributes,
    fwefeaCause,
    fwefeaDecisionTaskCompletedEventId,

    -- * HistoryEvent
    HistoryEvent (..),
    mkHistoryEvent,
    heWorkflowExecutionCancelRequestedEventAttributes,
    heRecordMarkerFailedEventAttributes,
    heRequestCancelExternalWorkflowExecutionInitiatedEventAttributes,
    heLambdaFunctionStartedEventAttributes,
    heDecisionTaskScheduledEventAttributes,
    heWorkflowExecutionCompletedEventAttributes,
    heStartTimerFailedEventAttributes,
    heActivityTaskScheduledEventAttributes,
    heScheduleActivityTaskFailedEventAttributes,
    heChildWorkflowExecutionCompletedEventAttributes,
    heMarkerRecordedEventAttributes,
    heScheduleLambdaFunctionFailedEventAttributes,
    heCompleteWorkflowExecutionFailedEventAttributes,
    heLambdaFunctionCompletedEventAttributes,
    heRequestCancelExternalWorkflowExecutionFailedEventAttributes,
    heTimerCanceledEventAttributes,
    heWorkflowExecutionStartedEventAttributes,
    heActivityTaskCompletedEventAttributes,
    heDecisionTaskTimedOutEventAttributes,
    heCancelTimerFailedEventAttributes,
    heChildWorkflowExecutionStartedEventAttributes,
    heActivityTaskCanceledEventAttributes,
    heActivityTaskTimedOutEventAttributes,
    heDecisionTaskStartedEventAttributes,
    heWorkflowExecutionTerminatedEventAttributes,
    heChildWorkflowExecutionCanceledEventAttributes,
    heRequestCancelActivityTaskFailedEventAttributes,
    heLambdaFunctionScheduledEventAttributes,
    heChildWorkflowExecutionTimedOutEventAttributes,
    heCancelWorkflowExecutionFailedEventAttributes,
    heStartChildWorkflowExecutionInitiatedEventAttributes,
    heSignalExternalWorkflowExecutionFailedEventAttributes,
    heActivityTaskStartedEventAttributes,
    heStartLambdaFunctionFailedEventAttributes,
    heChildWorkflowExecutionTerminatedEventAttributes,
    heLambdaFunctionFailedEventAttributes,
    heWorkflowExecutionCanceledEventAttributes,
    heTimerStartedEventAttributes,
    heActivityTaskCancelRequestedEventAttributes,
    heWorkflowExecutionTimedOutEventAttributes,
    heWorkflowExecutionSignaledEventAttributes,
    heTimerFiredEventAttributes,
    heActivityTaskFailedEventAttributes,
    heExternalWorkflowExecutionSignaledEventAttributes,
    heDecisionTaskCompletedEventAttributes,
    heStartChildWorkflowExecutionFailedEventAttributes,
    heChildWorkflowExecutionFailedEventAttributes,
    heFailWorkflowExecutionFailedEventAttributes,
    heContinueAsNewWorkflowExecutionFailedEventAttributes,
    heSignalExternalWorkflowExecutionInitiatedEventAttributes,
    heLambdaFunctionTimedOutEventAttributes,
    heWorkflowExecutionFailedEventAttributes,
    heWorkflowExecutionContinuedAsNewEventAttributes,
    heExternalWorkflowExecutionCancelRequestedEventAttributes,
    heEventTimestamp,
    heEventType,
    heEventId,

    -- * LambdaFunctionCompletedEventAttributes
    LambdaFunctionCompletedEventAttributes (..),
    mkLambdaFunctionCompletedEventAttributes,
    lfceaResult,
    lfceaScheduledEventId,
    lfceaStartedEventId,

    -- * LambdaFunctionFailedEventAttributes
    LambdaFunctionFailedEventAttributes (..),
    mkLambdaFunctionFailedEventAttributes,
    lffeaReason,
    lffeaDetails,
    lffeaScheduledEventId,
    lffeaStartedEventId,

    -- * LambdaFunctionScheduledEventAttributes
    LambdaFunctionScheduledEventAttributes (..),
    mkLambdaFunctionScheduledEventAttributes,
    lfseaControl,
    lfseaInput,
    lfseaStartToCloseTimeout,
    lfseaId,
    lfseaName,
    lfseaDecisionTaskCompletedEventId,

    -- * LambdaFunctionStartedEventAttributes
    LambdaFunctionStartedEventAttributes (..),
    mkLambdaFunctionStartedEventAttributes,
    lfseaScheduledEventId,

    -- * LambdaFunctionTimedOutEventAttributes
    LambdaFunctionTimedOutEventAttributes (..),
    mkLambdaFunctionTimedOutEventAttributes,
    lftoeaTimeoutType,
    lftoeaScheduledEventId,
    lftoeaStartedEventId,

    -- * MarkerRecordedEventAttributes
    MarkerRecordedEventAttributes (..),
    mkMarkerRecordedEventAttributes,
    mreaDetails,
    mreaMarkerName,
    mreaDecisionTaskCompletedEventId,

    -- * PendingTaskCount
    PendingTaskCount (..),
    mkPendingTaskCount,
    ptcTruncated,
    ptcCount,

    -- * RecordMarkerDecisionAttributes
    RecordMarkerDecisionAttributes (..),
    mkRecordMarkerDecisionAttributes,
    rmdaDetails,
    rmdaMarkerName,

    -- * RecordMarkerFailedEventAttributes
    RecordMarkerFailedEventAttributes (..),
    mkRecordMarkerFailedEventAttributes,
    rmfeaMarkerName,
    rmfeaCause,
    rmfeaDecisionTaskCompletedEventId,

    -- * RequestCancelActivityTaskDecisionAttributes
    RequestCancelActivityTaskDecisionAttributes (..),
    mkRequestCancelActivityTaskDecisionAttributes,
    rcatdaActivityId,

    -- * RequestCancelActivityTaskFailedEventAttributes
    RequestCancelActivityTaskFailedEventAttributes (..),
    mkRequestCancelActivityTaskFailedEventAttributes,
    rcatfeaActivityId,
    rcatfeaCause,
    rcatfeaDecisionTaskCompletedEventId,

    -- * RequestCancelExternalWorkflowExecutionDecisionAttributes
    RequestCancelExternalWorkflowExecutionDecisionAttributes (..),
    mkRequestCancelExternalWorkflowExecutionDecisionAttributes,
    rcewedaControl,
    rcewedaRunId,
    rcewedaWorkflowId,

    -- * RequestCancelExternalWorkflowExecutionFailedEventAttributes
    RequestCancelExternalWorkflowExecutionFailedEventAttributes (..),
    mkRequestCancelExternalWorkflowExecutionFailedEventAttributes,
    rcewefeaControl,
    rcewefeaRunId,
    rcewefeaWorkflowId,
    rcewefeaCause,
    rcewefeaInitiatedEventId,
    rcewefeaDecisionTaskCompletedEventId,

    -- * RequestCancelExternalWorkflowExecutionInitiatedEventAttributes
    RequestCancelExternalWorkflowExecutionInitiatedEventAttributes (..),
    mkRequestCancelExternalWorkflowExecutionInitiatedEventAttributes,
    rceweieaControl,
    rceweieaRunId,
    rceweieaWorkflowId,
    rceweieaDecisionTaskCompletedEventId,

    -- * ResourceTag
    ResourceTag (..),
    mkResourceTag,
    rtValue,
    rtKey,

    -- * ScheduleActivityTaskDecisionAttributes
    ScheduleActivityTaskDecisionAttributes (..),
    mkScheduleActivityTaskDecisionAttributes,
    satdaControl,
    satdaHeartbeatTimeout,
    satdaScheduleToCloseTimeout,
    satdaInput,
    satdaTaskList,
    satdaTaskPriority,
    satdaScheduleToStartTimeout,
    satdaStartToCloseTimeout,
    satdaActivityType,
    satdaActivityId,

    -- * ScheduleActivityTaskFailedEventAttributes
    ScheduleActivityTaskFailedEventAttributes (..),
    mkScheduleActivityTaskFailedEventAttributes,
    satfeaActivityType,
    satfeaActivityId,
    satfeaCause,
    satfeaDecisionTaskCompletedEventId,

    -- * ScheduleLambdaFunctionDecisionAttributes
    ScheduleLambdaFunctionDecisionAttributes (..),
    mkScheduleLambdaFunctionDecisionAttributes,
    slfdaControl,
    slfdaInput,
    slfdaStartToCloseTimeout,
    slfdaId,
    slfdaName,

    -- * ScheduleLambdaFunctionFailedEventAttributes
    ScheduleLambdaFunctionFailedEventAttributes (..),
    mkScheduleLambdaFunctionFailedEventAttributes,
    slffeaId,
    slffeaName,
    slffeaCause,
    slffeaDecisionTaskCompletedEventId,

    -- * SignalExternalWorkflowExecutionDecisionAttributes
    SignalExternalWorkflowExecutionDecisionAttributes (..),
    mkSignalExternalWorkflowExecutionDecisionAttributes,
    sewedaControl,
    sewedaInput,
    sewedaRunId,
    sewedaWorkflowId,
    sewedaSignalName,

    -- * SignalExternalWorkflowExecutionFailedEventAttributes
    SignalExternalWorkflowExecutionFailedEventAttributes (..),
    mkSignalExternalWorkflowExecutionFailedEventAttributes,
    sewefeaControl,
    sewefeaRunId,
    sewefeaWorkflowId,
    sewefeaCause,
    sewefeaInitiatedEventId,
    sewefeaDecisionTaskCompletedEventId,

    -- * SignalExternalWorkflowExecutionInitiatedEventAttributes
    SignalExternalWorkflowExecutionInitiatedEventAttributes (..),
    mkSignalExternalWorkflowExecutionInitiatedEventAttributes,
    seweieaControl,
    seweieaInput,
    seweieaRunId,
    seweieaWorkflowId,
    seweieaSignalName,
    seweieaDecisionTaskCompletedEventId,

    -- * StartChildWorkflowExecutionDecisionAttributes
    StartChildWorkflowExecutionDecisionAttributes (..),
    mkStartChildWorkflowExecutionDecisionAttributes,
    scwedaControl,
    scwedaTagList,
    scwedaTaskStartToCloseTimeout,
    scwedaLambdaRole,
    scwedaInput,
    scwedaExecutionStartToCloseTimeout,
    scwedaTaskList,
    scwedaTaskPriority,
    scwedaChildPolicy,
    scwedaWorkflowType,
    scwedaWorkflowId,

    -- * StartChildWorkflowExecutionFailedEventAttributes
    StartChildWorkflowExecutionFailedEventAttributes (..),
    mkStartChildWorkflowExecutionFailedEventAttributes,
    scwefeaControl,
    scwefeaWorkflowType,
    scwefeaCause,
    scwefeaWorkflowId,
    scwefeaInitiatedEventId,
    scwefeaDecisionTaskCompletedEventId,

    -- * StartChildWorkflowExecutionInitiatedEventAttributes
    StartChildWorkflowExecutionInitiatedEventAttributes (..),
    mkStartChildWorkflowExecutionInitiatedEventAttributes,
    scweieaControl,
    scweieaTagList,
    scweieaTaskStartToCloseTimeout,
    scweieaLambdaRole,
    scweieaInput,
    scweieaExecutionStartToCloseTimeout,
    scweieaTaskPriority,
    scweieaWorkflowId,
    scweieaWorkflowType,
    scweieaTaskList,
    scweieaDecisionTaskCompletedEventId,
    scweieaChildPolicy,

    -- * StartLambdaFunctionFailedEventAttributes
    StartLambdaFunctionFailedEventAttributes (..),
    mkStartLambdaFunctionFailedEventAttributes,
    sScheduledEventId,
    sCause,
    sMessage,

    -- * StartTimerDecisionAttributes
    StartTimerDecisionAttributes (..),
    mkStartTimerDecisionAttributes,
    stdaControl,
    stdaTimerId,
    stdaStartToFireTimeout,

    -- * StartTimerFailedEventAttributes
    StartTimerFailedEventAttributes (..),
    mkStartTimerFailedEventAttributes,
    stfeaTimerId,
    stfeaCause,
    stfeaDecisionTaskCompletedEventId,

    -- * TagFilter
    TagFilter (..),
    mkTagFilter,
    tfTag,

    -- * TaskList
    TaskList (..),
    mkTaskList,
    tlName,

    -- * TimerCanceledEventAttributes
    TimerCanceledEventAttributes (..),
    mkTimerCanceledEventAttributes,
    tceaTimerId,
    tceaStartedEventId,
    tceaDecisionTaskCompletedEventId,

    -- * TimerFiredEventAttributes
    TimerFiredEventAttributes (..),
    mkTimerFiredEventAttributes,
    tfeaTimerId,
    tfeaStartedEventId,

    -- * TimerStartedEventAttributes
    TimerStartedEventAttributes (..),
    mkTimerStartedEventAttributes,
    tseaControl,
    tseaTimerId,
    tseaStartToFireTimeout,
    tseaDecisionTaskCompletedEventId,

    -- * WorkflowExecution
    WorkflowExecution (..),
    mkWorkflowExecution,
    weWorkflowId,
    weRunId,

    -- * WorkflowExecutionCancelRequestedEventAttributes
    WorkflowExecutionCancelRequestedEventAttributes (..),
    mkWorkflowExecutionCancelRequestedEventAttributes,
    wecreaExternalWorkflowExecution,
    wecreaExternalInitiatedEventId,
    wecreaCause,

    -- * WorkflowExecutionCanceledEventAttributes
    WorkflowExecutionCanceledEventAttributes (..),
    mkWorkflowExecutionCanceledEventAttributes,
    wDetails,
    wDecisionTaskCompletedEventId,

    -- * WorkflowExecutionCompletedEventAttributes
    WorkflowExecutionCompletedEventAttributes (..),
    mkWorkflowExecutionCompletedEventAttributes,
    weceaResult,
    weceaDecisionTaskCompletedEventId,

    -- * WorkflowExecutionConfiguration
    WorkflowExecutionConfiguration (..),
    mkWorkflowExecutionConfiguration,
    wecLambdaRole,
    wecTaskPriority,
    wecTaskStartToCloseTimeout,
    wecExecutionStartToCloseTimeout,
    wecTaskList,
    wecChildPolicy,

    -- * WorkflowExecutionContinuedAsNewEventAttributes
    WorkflowExecutionContinuedAsNewEventAttributes (..),
    mkWorkflowExecutionContinuedAsNewEventAttributes,
    wecaneaTagList,
    wecaneaTaskStartToCloseTimeout,
    wecaneaLambdaRole,
    wecaneaInput,
    wecaneaExecutionStartToCloseTimeout,
    wecaneaTaskPriority,
    wecaneaDecisionTaskCompletedEventId,
    wecaneaNewExecutionRunId,
    wecaneaTaskList,
    wecaneaChildPolicy,
    wecaneaWorkflowType,

    -- * WorkflowExecutionCount
    WorkflowExecutionCount (..),
    mkWorkflowExecutionCount,
    wecTruncated,
    wecCount,

    -- * WorkflowExecutionFailedEventAttributes
    WorkflowExecutionFailedEventAttributes (..),
    mkWorkflowExecutionFailedEventAttributes,
    wefeaReason,
    wefeaDetails,
    wefeaDecisionTaskCompletedEventId,

    -- * WorkflowExecutionFilter
    WorkflowExecutionFilter (..),
    mkWorkflowExecutionFilter,
    wefWorkflowId,

    -- * WorkflowExecutionInfo
    WorkflowExecutionInfo (..),
    mkWorkflowExecutionInfo,
    weiParent,
    weiTagList,
    weiCloseStatus,
    weiCloseTimestamp,
    weiCancelRequested,
    weiExecution,
    weiWorkflowType,
    weiStartTimestamp,
    weiExecutionStatus,

    -- * WorkflowExecutionInfos
    WorkflowExecutionInfos (..),
    mkWorkflowExecutionInfos,
    weiNextPageToken,
    weiExecutionInfos,

    -- * WorkflowExecutionOpenCounts
    WorkflowExecutionOpenCounts (..),
    mkWorkflowExecutionOpenCounts,
    weocOpenLambdaFunctions,
    weocOpenActivityTasks,
    weocOpenDecisionTasks,
    weocOpenTimers,
    weocOpenChildWorkflowExecutions,

    -- * WorkflowExecutionSignaledEventAttributes
    WorkflowExecutionSignaledEventAttributes (..),
    mkWorkflowExecutionSignaledEventAttributes,
    wExternalWorkflowExecution,
    wExternalInitiatedEventId,
    wInput,
    wSignalName,

    -- * WorkflowExecutionStartedEventAttributes
    WorkflowExecutionStartedEventAttributes (..),
    mkWorkflowExecutionStartedEventAttributes,
    weseaParentInitiatedEventId,
    weseaTagList,
    weseaTaskStartToCloseTimeout,
    weseaLambdaRole,
    weseaInput,
    weseaExecutionStartToCloseTimeout,
    weseaTaskPriority,
    weseaParentWorkflowExecution,
    weseaContinuedExecutionRunId,
    weseaChildPolicy,
    weseaTaskList,
    weseaWorkflowType,

    -- * WorkflowExecutionTerminatedEventAttributes
    WorkflowExecutionTerminatedEventAttributes (..),
    mkWorkflowExecutionTerminatedEventAttributes,
    weteaCause,
    weteaReason,
    weteaDetails,
    weteaChildPolicy,

    -- * WorkflowExecutionTimedOutEventAttributes
    WorkflowExecutionTimedOutEventAttributes (..),
    mkWorkflowExecutionTimedOutEventAttributes,
    wetoeaTimeoutType,
    wetoeaChildPolicy,

    -- * WorkflowType
    WorkflowType (..),
    mkWorkflowType,
    wtName,
    wtVersion,

    -- * WorkflowTypeConfiguration
    WorkflowTypeConfiguration (..),
    mkWorkflowTypeConfiguration,
    wtcDefaultLambdaRole,
    wtcDefaultChildPolicy,
    wtcDefaultTaskList,
    wtcDefaultTaskPriority,
    wtcDefaultExecutionStartToCloseTimeout,
    wtcDefaultTaskStartToCloseTimeout,

    -- * WorkflowTypeFilter
    WorkflowTypeFilter (..),
    mkWorkflowTypeFilter,
    wtfVersion,
    wtfName,

    -- * WorkflowTypeInfo
    WorkflowTypeInfo (..),
    mkWorkflowTypeInfo,
    wtiDeprecationDate,
    wtiDescription,
    wtiWorkflowType,
    wtiStatus,
    wtiCreationDate,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude
import Network.AWS.SWF.Types.ActivityTaskCancelRequestedEventAttributes
import Network.AWS.SWF.Types.ActivityTaskCanceledEventAttributes
import Network.AWS.SWF.Types.ActivityTaskCompletedEventAttributes
import Network.AWS.SWF.Types.ActivityTaskFailedEventAttributes
import Network.AWS.SWF.Types.ActivityTaskScheduledEventAttributes
import Network.AWS.SWF.Types.ActivityTaskStartedEventAttributes
import Network.AWS.SWF.Types.ActivityTaskTimedOutEventAttributes
import Network.AWS.SWF.Types.ActivityTaskTimeoutType
import Network.AWS.SWF.Types.ActivityType
import Network.AWS.SWF.Types.ActivityTypeConfiguration
import Network.AWS.SWF.Types.ActivityTypeInfo
import Network.AWS.SWF.Types.CancelTimerDecisionAttributes
import Network.AWS.SWF.Types.CancelTimerFailedCause
import Network.AWS.SWF.Types.CancelTimerFailedEventAttributes
import Network.AWS.SWF.Types.CancelWorkflowExecutionDecisionAttributes
import Network.AWS.SWF.Types.CancelWorkflowExecutionFailedCause
import Network.AWS.SWF.Types.CancelWorkflowExecutionFailedEventAttributes
import Network.AWS.SWF.Types.ChildPolicy
import Network.AWS.SWF.Types.ChildWorkflowExecutionCanceledEventAttributes
import Network.AWS.SWF.Types.ChildWorkflowExecutionCompletedEventAttributes
import Network.AWS.SWF.Types.ChildWorkflowExecutionFailedEventAttributes
import Network.AWS.SWF.Types.ChildWorkflowExecutionStartedEventAttributes
import Network.AWS.SWF.Types.ChildWorkflowExecutionTerminatedEventAttributes
import Network.AWS.SWF.Types.ChildWorkflowExecutionTimedOutEventAttributes
import Network.AWS.SWF.Types.CloseStatus
import Network.AWS.SWF.Types.CloseStatusFilter
import Network.AWS.SWF.Types.CompleteWorkflowExecutionDecisionAttributes
import Network.AWS.SWF.Types.CompleteWorkflowExecutionFailedCause
import Network.AWS.SWF.Types.CompleteWorkflowExecutionFailedEventAttributes
import Network.AWS.SWF.Types.ContinueAsNewWorkflowExecutionDecisionAttributes
import Network.AWS.SWF.Types.ContinueAsNewWorkflowExecutionFailedCause
import Network.AWS.SWF.Types.ContinueAsNewWorkflowExecutionFailedEventAttributes
import Network.AWS.SWF.Types.Decision
import Network.AWS.SWF.Types.DecisionTaskCompletedEventAttributes
import Network.AWS.SWF.Types.DecisionTaskScheduledEventAttributes
import Network.AWS.SWF.Types.DecisionTaskStartedEventAttributes
import Network.AWS.SWF.Types.DecisionTaskTimedOutEventAttributes
import Network.AWS.SWF.Types.DecisionTaskTimeoutType
import Network.AWS.SWF.Types.DecisionType
import Network.AWS.SWF.Types.DomainConfiguration
import Network.AWS.SWF.Types.DomainInfo
import Network.AWS.SWF.Types.EventType
import Network.AWS.SWF.Types.ExecutionStatus
import Network.AWS.SWF.Types.ExecutionTimeFilter
import Network.AWS.SWF.Types.ExternalWorkflowExecutionCancelRequestedEventAttributes
import Network.AWS.SWF.Types.ExternalWorkflowExecutionSignaledEventAttributes
import Network.AWS.SWF.Types.FailWorkflowExecutionDecisionAttributes
import Network.AWS.SWF.Types.FailWorkflowExecutionFailedCause
import Network.AWS.SWF.Types.FailWorkflowExecutionFailedEventAttributes
import Network.AWS.SWF.Types.HistoryEvent
import Network.AWS.SWF.Types.LambdaFunctionCompletedEventAttributes
import Network.AWS.SWF.Types.LambdaFunctionFailedEventAttributes
import Network.AWS.SWF.Types.LambdaFunctionScheduledEventAttributes
import Network.AWS.SWF.Types.LambdaFunctionStartedEventAttributes
import Network.AWS.SWF.Types.LambdaFunctionTimedOutEventAttributes
import Network.AWS.SWF.Types.LambdaFunctionTimeoutType
import Network.AWS.SWF.Types.MarkerRecordedEventAttributes
import Network.AWS.SWF.Types.PendingTaskCount
import Network.AWS.SWF.Types.RecordMarkerDecisionAttributes
import Network.AWS.SWF.Types.RecordMarkerFailedCause
import Network.AWS.SWF.Types.RecordMarkerFailedEventAttributes
import Network.AWS.SWF.Types.RegistrationStatus
import Network.AWS.SWF.Types.RequestCancelActivityTaskDecisionAttributes
import Network.AWS.SWF.Types.RequestCancelActivityTaskFailedCause
import Network.AWS.SWF.Types.RequestCancelActivityTaskFailedEventAttributes
import Network.AWS.SWF.Types.RequestCancelExternalWorkflowExecutionDecisionAttributes
import Network.AWS.SWF.Types.RequestCancelExternalWorkflowExecutionFailedCause
import Network.AWS.SWF.Types.RequestCancelExternalWorkflowExecutionFailedEventAttributes
import Network.AWS.SWF.Types.RequestCancelExternalWorkflowExecutionInitiatedEventAttributes
import Network.AWS.SWF.Types.ResourceTag
import Network.AWS.SWF.Types.ScheduleActivityTaskDecisionAttributes
import Network.AWS.SWF.Types.ScheduleActivityTaskFailedCause
import Network.AWS.SWF.Types.ScheduleActivityTaskFailedEventAttributes
import Network.AWS.SWF.Types.ScheduleLambdaFunctionDecisionAttributes
import Network.AWS.SWF.Types.ScheduleLambdaFunctionFailedCause
import Network.AWS.SWF.Types.ScheduleLambdaFunctionFailedEventAttributes
import Network.AWS.SWF.Types.SignalExternalWorkflowExecutionDecisionAttributes
import Network.AWS.SWF.Types.SignalExternalWorkflowExecutionFailedCause
import Network.AWS.SWF.Types.SignalExternalWorkflowExecutionFailedEventAttributes
import Network.AWS.SWF.Types.SignalExternalWorkflowExecutionInitiatedEventAttributes
import Network.AWS.SWF.Types.StartChildWorkflowExecutionDecisionAttributes
import Network.AWS.SWF.Types.StartChildWorkflowExecutionFailedCause
import Network.AWS.SWF.Types.StartChildWorkflowExecutionFailedEventAttributes
import Network.AWS.SWF.Types.StartChildWorkflowExecutionInitiatedEventAttributes
import Network.AWS.SWF.Types.StartLambdaFunctionFailedCause
import Network.AWS.SWF.Types.StartLambdaFunctionFailedEventAttributes
import Network.AWS.SWF.Types.StartTimerDecisionAttributes
import Network.AWS.SWF.Types.StartTimerFailedCause
import Network.AWS.SWF.Types.StartTimerFailedEventAttributes
import Network.AWS.SWF.Types.TagFilter
import Network.AWS.SWF.Types.TaskList
import Network.AWS.SWF.Types.TimerCanceledEventAttributes
import Network.AWS.SWF.Types.TimerFiredEventAttributes
import Network.AWS.SWF.Types.TimerStartedEventAttributes
import Network.AWS.SWF.Types.WorkflowExecution
import Network.AWS.SWF.Types.WorkflowExecutionCancelRequestedCause
import Network.AWS.SWF.Types.WorkflowExecutionCancelRequestedEventAttributes
import Network.AWS.SWF.Types.WorkflowExecutionCanceledEventAttributes
import Network.AWS.SWF.Types.WorkflowExecutionCompletedEventAttributes
import Network.AWS.SWF.Types.WorkflowExecutionConfiguration
import Network.AWS.SWF.Types.WorkflowExecutionContinuedAsNewEventAttributes
import Network.AWS.SWF.Types.WorkflowExecutionCount
import Network.AWS.SWF.Types.WorkflowExecutionFailedEventAttributes
import Network.AWS.SWF.Types.WorkflowExecutionFilter
import Network.AWS.SWF.Types.WorkflowExecutionInfo
import Network.AWS.SWF.Types.WorkflowExecutionInfos
import Network.AWS.SWF.Types.WorkflowExecutionOpenCounts
import Network.AWS.SWF.Types.WorkflowExecutionSignaledEventAttributes
import Network.AWS.SWF.Types.WorkflowExecutionStartedEventAttributes
import Network.AWS.SWF.Types.WorkflowExecutionTerminatedCause
import Network.AWS.SWF.Types.WorkflowExecutionTerminatedEventAttributes
import Network.AWS.SWF.Types.WorkflowExecutionTimedOutEventAttributes
import Network.AWS.SWF.Types.WorkflowExecutionTimeoutType
import Network.AWS.SWF.Types.WorkflowType
import Network.AWS.SWF.Types.WorkflowTypeConfiguration
import Network.AWS.SWF.Types.WorkflowTypeFilter
import Network.AWS.SWF.Types.WorkflowTypeInfo
import qualified Network.AWS.Sign.V4 as Sign

-- | API version @2012-01-25@ of the Amazon Simple Workflow Service SDK configuration.
swfService :: Lude.Service
swfService =
  Lude.Service
    { Lude._svcAbbrev = "SWF",
      Lude._svcSigner = Sign.v4,
      Lude._svcPrefix = "swf",
      Lude._svcVersion = "2012-01-25",
      Lude._svcEndpoint = Lude.defaultEndpoint swfService,
      Lude._svcTimeout = Lude.Just 70,
      Lude._svcCheck = Lude.statusSuccess,
      Lude._svcError = Lude.parseJSONError "SWF",
      Lude._svcRetry = retry
    }
  where
    retry =
      Lude.Exponential
        { Lude._retryBase = 5.0e-2,
          Lude._retryGrowth = 2,
          Lude._retryAttempts = 5,
          Lude._retryCheck = check
        }
    check e
      | Lens.has
          (Lude.hasCode "ThrottledException" Lude.. Lude.hasStatus 400)
          e =
        Lude.Just "throttled_exception"
      | Lens.has (Lude.hasStatus 429) e = Lude.Just "too_many_requests"
      | Lens.has
          (Lude.hasCode "ThrottlingException" Lude.. Lude.hasStatus 400)
          e =
        Lude.Just "throttling_exception"
      | Lens.has (Lude.hasCode "Throttling" Lude.. Lude.hasStatus 400) e =
        Lude.Just "throttling"
      | Lens.has
          ( Lude.hasCode "ProvisionedThroughputExceededException"
              Lude.. Lude.hasStatus 400
          )
          e =
        Lude.Just "throughput_exceeded"
      | Lens.has (Lude.hasStatus 504) e = Lude.Just "gateway_timeout"
      | Lens.has
          ( Lude.hasCode "RequestThrottledException"
              Lude.. Lude.hasStatus 400
          )
          e =
        Lude.Just "request_throttled_exception"
      | Lens.has (Lude.hasStatus 502) e = Lude.Just "bad_gateway"
      | Lens.has (Lude.hasStatus 503) e = Lude.Just "service_unavailable"
      | Lens.has (Lude.hasStatus 500) e =
        Lude.Just "general_server_error"
      | Lens.has (Lude.hasStatus 509) e = Lude.Just "limit_exceeded"
      | Lude.otherwise = Lude.Nothing