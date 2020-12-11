-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.StepFunctions.Types.SyncExecutionStatus
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.StepFunctions.Types.SyncExecutionStatus
  ( SyncExecutionStatus
      ( SyncExecutionStatus',
        SESFailed,
        SESSucceeded,
        SESTimedOut
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype SyncExecutionStatus = SyncExecutionStatus' Lude.Text
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

pattern SESFailed :: SyncExecutionStatus
pattern SESFailed = SyncExecutionStatus' "FAILED"

pattern SESSucceeded :: SyncExecutionStatus
pattern SESSucceeded = SyncExecutionStatus' "SUCCEEDED"

pattern SESTimedOut :: SyncExecutionStatus
pattern SESTimedOut = SyncExecutionStatus' "TIMED_OUT"

{-# COMPLETE
  SESFailed,
  SESSucceeded,
  SESTimedOut,
  SyncExecutionStatus'
  #-}