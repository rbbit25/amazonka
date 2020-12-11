-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.BundleTaskState
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.BundleTaskState
  ( BundleTaskState
      ( BundleTaskState',
        BTSBundling,
        BTSCancelling,
        BTSComplete,
        BTSFailed,
        BTSPending,
        BTSStoring,
        BTSWaitingForShutdown
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype BundleTaskState = BundleTaskState' Lude.Text
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

pattern BTSBundling :: BundleTaskState
pattern BTSBundling = BundleTaskState' "bundling"

pattern BTSCancelling :: BundleTaskState
pattern BTSCancelling = BundleTaskState' "cancelling"

pattern BTSComplete :: BundleTaskState
pattern BTSComplete = BundleTaskState' "complete"

pattern BTSFailed :: BundleTaskState
pattern BTSFailed = BundleTaskState' "failed"

pattern BTSPending :: BundleTaskState
pattern BTSPending = BundleTaskState' "pending"

pattern BTSStoring :: BundleTaskState
pattern BTSStoring = BundleTaskState' "storing"

pattern BTSWaitingForShutdown :: BundleTaskState
pattern BTSWaitingForShutdown = BundleTaskState' "waiting-for-shutdown"

{-# COMPLETE
  BTSBundling,
  BTSCancelling,
  BTSComplete,
  BTSFailed,
  BTSPending,
  BTSStoring,
  BTSWaitingForShutdown,
  BundleTaskState'
  #-}