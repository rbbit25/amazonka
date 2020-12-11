-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AutoScalingPlans.Types.ScalingPlanStatusCode
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AutoScalingPlans.Types.ScalingPlanStatusCode
  ( ScalingPlanStatusCode
      ( ScalingPlanStatusCode',
        SPSCActive,
        SPSCActiveWithProblems,
        SPSCCreationFailed,
        SPSCCreationInProgress,
        SPSCDeletionFailed,
        SPSCDeletionInProgress,
        SPSCUpdateFailed,
        SPSCUpdateInProgress
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype ScalingPlanStatusCode = ScalingPlanStatusCode' Lude.Text
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

pattern SPSCActive :: ScalingPlanStatusCode
pattern SPSCActive = ScalingPlanStatusCode' "Active"

pattern SPSCActiveWithProblems :: ScalingPlanStatusCode
pattern SPSCActiveWithProblems = ScalingPlanStatusCode' "ActiveWithProblems"

pattern SPSCCreationFailed :: ScalingPlanStatusCode
pattern SPSCCreationFailed = ScalingPlanStatusCode' "CreationFailed"

pattern SPSCCreationInProgress :: ScalingPlanStatusCode
pattern SPSCCreationInProgress = ScalingPlanStatusCode' "CreationInProgress"

pattern SPSCDeletionFailed :: ScalingPlanStatusCode
pattern SPSCDeletionFailed = ScalingPlanStatusCode' "DeletionFailed"

pattern SPSCDeletionInProgress :: ScalingPlanStatusCode
pattern SPSCDeletionInProgress = ScalingPlanStatusCode' "DeletionInProgress"

pattern SPSCUpdateFailed :: ScalingPlanStatusCode
pattern SPSCUpdateFailed = ScalingPlanStatusCode' "UpdateFailed"

pattern SPSCUpdateInProgress :: ScalingPlanStatusCode
pattern SPSCUpdateInProgress = ScalingPlanStatusCode' "UpdateInProgress"

{-# COMPLETE
  SPSCActive,
  SPSCActiveWithProblems,
  SPSCCreationFailed,
  SPSCCreationInProgress,
  SPSCDeletionFailed,
  SPSCDeletionInProgress,
  SPSCUpdateFailed,
  SPSCUpdateInProgress,
  ScalingPlanStatusCode'
  #-}