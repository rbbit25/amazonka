-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SWF.Types.WorkflowExecutionInfo
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SWF.Types.WorkflowExecutionInfo
  ( WorkflowExecutionInfo (..),

    -- * Smart constructor
    mkWorkflowExecutionInfo,

    -- * Lenses
    weiParent,
    weiTagList,
    weiCloseStatus,
    weiCloseTimestamp,
    weiCancelRequested,
    weiExecution,
    weiWorkflowType,
    weiStartTimestamp,
    weiExecutionStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude
import Network.AWS.SWF.Types.CloseStatus
import Network.AWS.SWF.Types.ExecutionStatus
import Network.AWS.SWF.Types.WorkflowExecution
import Network.AWS.SWF.Types.WorkflowType

-- | Contains information about a workflow execution.
--
-- /See:/ 'mkWorkflowExecutionInfo' smart constructor.
data WorkflowExecutionInfo = WorkflowExecutionInfo'
  { parent ::
      Lude.Maybe WorkflowExecution,
    tagList :: Lude.Maybe [Lude.Text],
    closeStatus :: Lude.Maybe CloseStatus,
    closeTimestamp :: Lude.Maybe Lude.Timestamp,
    cancelRequested :: Lude.Maybe Lude.Bool,
    execution :: WorkflowExecution,
    workflowType :: WorkflowType,
    startTimestamp :: Lude.Timestamp,
    executionStatus :: ExecutionStatus
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'WorkflowExecutionInfo' with the minimum fields required to make a request.
--
-- * 'cancelRequested' - Set to true if a cancellation is requested for this workflow execution.
-- * 'closeStatus' - If the execution status is closed then this specifies how the execution was closed:
--
--
--     * @COMPLETED@ – the execution was successfully completed.
--
--
--     * @CANCELED@ – the execution was canceled.Cancellation allows the implementation to gracefully clean up before the execution is closed.
--
--
--     * @TERMINATED@ – the execution was force terminated.
--
--
--     * @FAILED@ – the execution failed to complete.
--
--
--     * @TIMED_OUT@ – the execution did not complete in the alloted time and was automatically timed out.
--
--
--     * @CONTINUED_AS_NEW@ – the execution is logically continued. This means the current execution was completed and a new execution was started to carry on the workflow.
--
--
-- * 'closeTimestamp' - The time when the workflow execution was closed. Set only if the execution status is CLOSED.
-- * 'execution' - The workflow execution this information is about.
-- * 'executionStatus' - The current status of the execution.
-- * 'parent' - If this workflow execution is a child of another execution then contains the workflow execution that started this execution.
-- * 'startTimestamp' - The time when the execution was started.
-- * 'tagList' - The list of tags associated with the workflow execution. Tags can be used to identify and list workflow executions of interest through the visibility APIs. A workflow execution can have a maximum of 5 tags.
-- * 'workflowType' - The type of the workflow execution.
mkWorkflowExecutionInfo ::
  -- | 'execution'
  WorkflowExecution ->
  -- | 'workflowType'
  WorkflowType ->
  -- | 'startTimestamp'
  Lude.Timestamp ->
  -- | 'executionStatus'
  ExecutionStatus ->
  WorkflowExecutionInfo
mkWorkflowExecutionInfo
  pExecution_
  pWorkflowType_
  pStartTimestamp_
  pExecutionStatus_ =
    WorkflowExecutionInfo'
      { parent = Lude.Nothing,
        tagList = Lude.Nothing,
        closeStatus = Lude.Nothing,
        closeTimestamp = Lude.Nothing,
        cancelRequested = Lude.Nothing,
        execution = pExecution_,
        workflowType = pWorkflowType_,
        startTimestamp = pStartTimestamp_,
        executionStatus = pExecutionStatus_
      }

-- | If this workflow execution is a child of another execution then contains the workflow execution that started this execution.
--
-- /Note:/ Consider using 'parent' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
weiParent :: Lens.Lens' WorkflowExecutionInfo (Lude.Maybe WorkflowExecution)
weiParent = Lens.lens (parent :: WorkflowExecutionInfo -> Lude.Maybe WorkflowExecution) (\s a -> s {parent = a} :: WorkflowExecutionInfo)
{-# DEPRECATED weiParent "Use generic-lens or generic-optics with 'parent' instead." #-}

-- | The list of tags associated with the workflow execution. Tags can be used to identify and list workflow executions of interest through the visibility APIs. A workflow execution can have a maximum of 5 tags.
--
-- /Note:/ Consider using 'tagList' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
weiTagList :: Lens.Lens' WorkflowExecutionInfo (Lude.Maybe [Lude.Text])
weiTagList = Lens.lens (tagList :: WorkflowExecutionInfo -> Lude.Maybe [Lude.Text]) (\s a -> s {tagList = a} :: WorkflowExecutionInfo)
{-# DEPRECATED weiTagList "Use generic-lens or generic-optics with 'tagList' instead." #-}

-- | If the execution status is closed then this specifies how the execution was closed:
--
--
--     * @COMPLETED@ – the execution was successfully completed.
--
--
--     * @CANCELED@ – the execution was canceled.Cancellation allows the implementation to gracefully clean up before the execution is closed.
--
--
--     * @TERMINATED@ – the execution was force terminated.
--
--
--     * @FAILED@ – the execution failed to complete.
--
--
--     * @TIMED_OUT@ – the execution did not complete in the alloted time and was automatically timed out.
--
--
--     * @CONTINUED_AS_NEW@ – the execution is logically continued. This means the current execution was completed and a new execution was started to carry on the workflow.
--
--
--
-- /Note:/ Consider using 'closeStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
weiCloseStatus :: Lens.Lens' WorkflowExecutionInfo (Lude.Maybe CloseStatus)
weiCloseStatus = Lens.lens (closeStatus :: WorkflowExecutionInfo -> Lude.Maybe CloseStatus) (\s a -> s {closeStatus = a} :: WorkflowExecutionInfo)
{-# DEPRECATED weiCloseStatus "Use generic-lens or generic-optics with 'closeStatus' instead." #-}

-- | The time when the workflow execution was closed. Set only if the execution status is CLOSED.
--
-- /Note:/ Consider using 'closeTimestamp' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
weiCloseTimestamp :: Lens.Lens' WorkflowExecutionInfo (Lude.Maybe Lude.Timestamp)
weiCloseTimestamp = Lens.lens (closeTimestamp :: WorkflowExecutionInfo -> Lude.Maybe Lude.Timestamp) (\s a -> s {closeTimestamp = a} :: WorkflowExecutionInfo)
{-# DEPRECATED weiCloseTimestamp "Use generic-lens or generic-optics with 'closeTimestamp' instead." #-}

-- | Set to true if a cancellation is requested for this workflow execution.
--
-- /Note:/ Consider using 'cancelRequested' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
weiCancelRequested :: Lens.Lens' WorkflowExecutionInfo (Lude.Maybe Lude.Bool)
weiCancelRequested = Lens.lens (cancelRequested :: WorkflowExecutionInfo -> Lude.Maybe Lude.Bool) (\s a -> s {cancelRequested = a} :: WorkflowExecutionInfo)
{-# DEPRECATED weiCancelRequested "Use generic-lens or generic-optics with 'cancelRequested' instead." #-}

-- | The workflow execution this information is about.
--
-- /Note:/ Consider using 'execution' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
weiExecution :: Lens.Lens' WorkflowExecutionInfo WorkflowExecution
weiExecution = Lens.lens (execution :: WorkflowExecutionInfo -> WorkflowExecution) (\s a -> s {execution = a} :: WorkflowExecutionInfo)
{-# DEPRECATED weiExecution "Use generic-lens or generic-optics with 'execution' instead." #-}

-- | The type of the workflow execution.
--
-- /Note:/ Consider using 'workflowType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
weiWorkflowType :: Lens.Lens' WorkflowExecutionInfo WorkflowType
weiWorkflowType = Lens.lens (workflowType :: WorkflowExecutionInfo -> WorkflowType) (\s a -> s {workflowType = a} :: WorkflowExecutionInfo)
{-# DEPRECATED weiWorkflowType "Use generic-lens or generic-optics with 'workflowType' instead." #-}

-- | The time when the execution was started.
--
-- /Note:/ Consider using 'startTimestamp' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
weiStartTimestamp :: Lens.Lens' WorkflowExecutionInfo Lude.Timestamp
weiStartTimestamp = Lens.lens (startTimestamp :: WorkflowExecutionInfo -> Lude.Timestamp) (\s a -> s {startTimestamp = a} :: WorkflowExecutionInfo)
{-# DEPRECATED weiStartTimestamp "Use generic-lens or generic-optics with 'startTimestamp' instead." #-}

-- | The current status of the execution.
--
-- /Note:/ Consider using 'executionStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
weiExecutionStatus :: Lens.Lens' WorkflowExecutionInfo ExecutionStatus
weiExecutionStatus = Lens.lens (executionStatus :: WorkflowExecutionInfo -> ExecutionStatus) (\s a -> s {executionStatus = a} :: WorkflowExecutionInfo)
{-# DEPRECATED weiExecutionStatus "Use generic-lens or generic-optics with 'executionStatus' instead." #-}

instance Lude.FromJSON WorkflowExecutionInfo where
  parseJSON =
    Lude.withObject
      "WorkflowExecutionInfo"
      ( \x ->
          WorkflowExecutionInfo'
            Lude.<$> (x Lude..:? "parent")
            Lude.<*> (x Lude..:? "tagList" Lude..!= Lude.mempty)
            Lude.<*> (x Lude..:? "closeStatus")
            Lude.<*> (x Lude..:? "closeTimestamp")
            Lude.<*> (x Lude..:? "cancelRequested")
            Lude.<*> (x Lude..: "execution")
            Lude.<*> (x Lude..: "workflowType")
            Lude.<*> (x Lude..: "startTimestamp")
            Lude.<*> (x Lude..: "executionStatus")
      )