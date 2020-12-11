-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EMR.Types.InstanceFleetStateChangeReasonCode
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EMR.Types.InstanceFleetStateChangeReasonCode
  ( InstanceFleetStateChangeReasonCode
      ( InstanceFleetStateChangeReasonCode',
        IFSCRCClusterTerminated,
        IFSCRCInstanceFailure,
        IFSCRCInternalError,
        IFSCRCValidationError
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype InstanceFleetStateChangeReasonCode = InstanceFleetStateChangeReasonCode' Lude.Text
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

pattern IFSCRCClusterTerminated :: InstanceFleetStateChangeReasonCode
pattern IFSCRCClusterTerminated = InstanceFleetStateChangeReasonCode' "CLUSTER_TERMINATED"

pattern IFSCRCInstanceFailure :: InstanceFleetStateChangeReasonCode
pattern IFSCRCInstanceFailure = InstanceFleetStateChangeReasonCode' "INSTANCE_FAILURE"

pattern IFSCRCInternalError :: InstanceFleetStateChangeReasonCode
pattern IFSCRCInternalError = InstanceFleetStateChangeReasonCode' "INTERNAL_ERROR"

pattern IFSCRCValidationError :: InstanceFleetStateChangeReasonCode
pattern IFSCRCValidationError = InstanceFleetStateChangeReasonCode' "VALIDATION_ERROR"

{-# COMPLETE
  IFSCRCClusterTerminated,
  IFSCRCInstanceFailure,
  IFSCRCInternalError,
  IFSCRCValidationError,
  InstanceFleetStateChangeReasonCode'
  #-}