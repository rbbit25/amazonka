-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SWF.Types.ContinueAsNewWorkflowExecutionFailedEventAttributes
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SWF.Types.ContinueAsNewWorkflowExecutionFailedEventAttributes
  ( ContinueAsNewWorkflowExecutionFailedEventAttributes (..),

    -- * Smart constructor
    mkContinueAsNewWorkflowExecutionFailedEventAttributes,

    -- * Lenses
    canwefeaCause,
    canwefeaDecisionTaskCompletedEventId,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude
import Network.AWS.SWF.Types.ContinueAsNewWorkflowExecutionFailedCause

-- | Provides the details of the @ContinueAsNewWorkflowExecutionFailed@ event.
--
-- /See:/ 'mkContinueAsNewWorkflowExecutionFailedEventAttributes' smart constructor.
data ContinueAsNewWorkflowExecutionFailedEventAttributes = ContinueAsNewWorkflowExecutionFailedEventAttributes'
  { cause ::
      ContinueAsNewWorkflowExecutionFailedCause,
    decisionTaskCompletedEventId ::
      Lude.Integer
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass
    ( Lude.Hashable,
      Lude.NFData
    )

-- | Creates a value of 'ContinueAsNewWorkflowExecutionFailedEventAttributes' with the minimum fields required to make a request.
--
-- * 'cause' - The cause of the failure. This information is generated by the system and can be useful for diagnostic purposes.
-- * 'decisionTaskCompletedEventId' - The ID of the @DecisionTaskCompleted@ event corresponding to the decision task that resulted in the @ContinueAsNewWorkflowExecution@ decision that started this execution. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.
mkContinueAsNewWorkflowExecutionFailedEventAttributes ::
  -- | 'cause'
  ContinueAsNewWorkflowExecutionFailedCause ->
  -- | 'decisionTaskCompletedEventId'
  Lude.Integer ->
  ContinueAsNewWorkflowExecutionFailedEventAttributes
mkContinueAsNewWorkflowExecutionFailedEventAttributes
  pCause_
  pDecisionTaskCompletedEventId_ =
    ContinueAsNewWorkflowExecutionFailedEventAttributes'
      { cause =
          pCause_,
        decisionTaskCompletedEventId =
          pDecisionTaskCompletedEventId_
      }

-- | The cause of the failure. This information is generated by the system and can be useful for diagnostic purposes.
--
-- /Note:/ Consider using 'cause' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
canwefeaCause :: Lens.Lens' ContinueAsNewWorkflowExecutionFailedEventAttributes ContinueAsNewWorkflowExecutionFailedCause
canwefeaCause = Lens.lens (cause :: ContinueAsNewWorkflowExecutionFailedEventAttributes -> ContinueAsNewWorkflowExecutionFailedCause) (\s a -> s {cause = a} :: ContinueAsNewWorkflowExecutionFailedEventAttributes)
{-# DEPRECATED canwefeaCause "Use generic-lens or generic-optics with 'cause' instead." #-}

-- | The ID of the @DecisionTaskCompleted@ event corresponding to the decision task that resulted in the @ContinueAsNewWorkflowExecution@ decision that started this execution. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.
--
-- /Note:/ Consider using 'decisionTaskCompletedEventId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
canwefeaDecisionTaskCompletedEventId :: Lens.Lens' ContinueAsNewWorkflowExecutionFailedEventAttributes Lude.Integer
canwefeaDecisionTaskCompletedEventId = Lens.lens (decisionTaskCompletedEventId :: ContinueAsNewWorkflowExecutionFailedEventAttributes -> Lude.Integer) (\s a -> s {decisionTaskCompletedEventId = a} :: ContinueAsNewWorkflowExecutionFailedEventAttributes)
{-# DEPRECATED canwefeaDecisionTaskCompletedEventId "Use generic-lens or generic-optics with 'decisionTaskCompletedEventId' instead." #-}

instance
  Lude.FromJSON
    ContinueAsNewWorkflowExecutionFailedEventAttributes
  where
  parseJSON =
    Lude.withObject
      "ContinueAsNewWorkflowExecutionFailedEventAttributes"
      ( \x ->
          ContinueAsNewWorkflowExecutionFailedEventAttributes'
            Lude.<$> (x Lude..: "cause")
            Lude.<*> (x Lude..: "decisionTaskCompletedEventId")
      )