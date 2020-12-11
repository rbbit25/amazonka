-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.FMS.Types.PolicyComplianceStatusType
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.FMS.Types.PolicyComplianceStatusType
  ( PolicyComplianceStatusType
      ( PolicyComplianceStatusType',
        Compliant,
        NonCompliant
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype PolicyComplianceStatusType = PolicyComplianceStatusType' Lude.Text
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

pattern Compliant :: PolicyComplianceStatusType
pattern Compliant = PolicyComplianceStatusType' "COMPLIANT"

pattern NonCompliant :: PolicyComplianceStatusType
pattern NonCompliant = PolicyComplianceStatusType' "NON_COMPLIANT"

{-# COMPLETE
  Compliant,
  NonCompliant,
  PolicyComplianceStatusType'
  #-}