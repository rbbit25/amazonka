-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.ComplianceQueryOperatorType
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.ComplianceQueryOperatorType
  ( ComplianceQueryOperatorType
      ( ComplianceQueryOperatorType',
        CQOTBeginWith,
        CQOTEqual,
        CQOTGreaterThan,
        CQOTLessThan,
        CQOTNotEqual
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype ComplianceQueryOperatorType = ComplianceQueryOperatorType' Lude.Text
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

pattern CQOTBeginWith :: ComplianceQueryOperatorType
pattern CQOTBeginWith = ComplianceQueryOperatorType' "BEGIN_WITH"

pattern CQOTEqual :: ComplianceQueryOperatorType
pattern CQOTEqual = ComplianceQueryOperatorType' "EQUAL"

pattern CQOTGreaterThan :: ComplianceQueryOperatorType
pattern CQOTGreaterThan = ComplianceQueryOperatorType' "GREATER_THAN"

pattern CQOTLessThan :: ComplianceQueryOperatorType
pattern CQOTLessThan = ComplianceQueryOperatorType' "LESS_THAN"

pattern CQOTNotEqual :: ComplianceQueryOperatorType
pattern CQOTNotEqual = ComplianceQueryOperatorType' "NOT_EQUAL"

{-# COMPLETE
  CQOTBeginWith,
  CQOTEqual,
  CQOTGreaterThan,
  CQOTLessThan,
  CQOTNotEqual,
  ComplianceQueryOperatorType'
  #-}