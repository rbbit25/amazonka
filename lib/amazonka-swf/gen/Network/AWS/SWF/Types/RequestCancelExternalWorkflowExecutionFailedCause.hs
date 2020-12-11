-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SWF.Types.RequestCancelExternalWorkflowExecutionFailedCause
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SWF.Types.RequestCancelExternalWorkflowExecutionFailedCause
  ( RequestCancelExternalWorkflowExecutionFailedCause
      ( RequestCancelExternalWorkflowExecutionFailedCause',
        RCEWEFCOperationNotPermitted,
        RCEWEFCRequestCancelExternalWorkflowExecutionRateExceeded,
        RCEWEFCUnknownExternalWorkflowExecution
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype RequestCancelExternalWorkflowExecutionFailedCause = RequestCancelExternalWorkflowExecutionFailedCause' Lude.Text
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

pattern RCEWEFCOperationNotPermitted :: RequestCancelExternalWorkflowExecutionFailedCause
pattern RCEWEFCOperationNotPermitted = RequestCancelExternalWorkflowExecutionFailedCause' "OPERATION_NOT_PERMITTED"

pattern RCEWEFCRequestCancelExternalWorkflowExecutionRateExceeded :: RequestCancelExternalWorkflowExecutionFailedCause
pattern RCEWEFCRequestCancelExternalWorkflowExecutionRateExceeded = RequestCancelExternalWorkflowExecutionFailedCause' "REQUEST_CANCEL_EXTERNAL_WORKFLOW_EXECUTION_RATE_EXCEEDED"

pattern RCEWEFCUnknownExternalWorkflowExecution :: RequestCancelExternalWorkflowExecutionFailedCause
pattern RCEWEFCUnknownExternalWorkflowExecution = RequestCancelExternalWorkflowExecutionFailedCause' "UNKNOWN_EXTERNAL_WORKFLOW_EXECUTION"

{-# COMPLETE
  RCEWEFCOperationNotPermitted,
  RCEWEFCRequestCancelExternalWorkflowExecutionRateExceeded,
  RCEWEFCUnknownExternalWorkflowExecution,
  RequestCancelExternalWorkflowExecutionFailedCause'
  #-}