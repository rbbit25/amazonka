-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.ReportInstanceReasonCodes
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.ReportInstanceReasonCodes
  ( ReportInstanceReasonCodes
      ( ReportInstanceReasonCodes',
        InstanceStuckInState,
        NotAcceptingCredentials,
        Other,
        PasswordNotAvailable,
        PerformanceEBSVolume,
        PerformanceInstanceStore,
        PerformanceNetwork,
        PerformanceOther,
        Unresponsive
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype ReportInstanceReasonCodes = ReportInstanceReasonCodes' Lude.Text
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

pattern InstanceStuckInState :: ReportInstanceReasonCodes
pattern InstanceStuckInState = ReportInstanceReasonCodes' "instance-stuck-in-state"

pattern NotAcceptingCredentials :: ReportInstanceReasonCodes
pattern NotAcceptingCredentials = ReportInstanceReasonCodes' "not-accepting-credentials"

pattern Other :: ReportInstanceReasonCodes
pattern Other = ReportInstanceReasonCodes' "other"

pattern PasswordNotAvailable :: ReportInstanceReasonCodes
pattern PasswordNotAvailable = ReportInstanceReasonCodes' "password-not-available"

pattern PerformanceEBSVolume :: ReportInstanceReasonCodes
pattern PerformanceEBSVolume = ReportInstanceReasonCodes' "performance-ebs-volume"

pattern PerformanceInstanceStore :: ReportInstanceReasonCodes
pattern PerformanceInstanceStore = ReportInstanceReasonCodes' "performance-instance-store"

pattern PerformanceNetwork :: ReportInstanceReasonCodes
pattern PerformanceNetwork = ReportInstanceReasonCodes' "performance-network"

pattern PerformanceOther :: ReportInstanceReasonCodes
pattern PerformanceOther = ReportInstanceReasonCodes' "performance-other"

pattern Unresponsive :: ReportInstanceReasonCodes
pattern Unresponsive = ReportInstanceReasonCodes' "unresponsive"

{-# COMPLETE
  InstanceStuckInState,
  NotAcceptingCredentials,
  Other,
  PasswordNotAvailable,
  PerformanceEBSVolume,
  PerformanceInstanceStore,
  PerformanceNetwork,
  PerformanceOther,
  Unresponsive,
  ReportInstanceReasonCodes'
  #-}