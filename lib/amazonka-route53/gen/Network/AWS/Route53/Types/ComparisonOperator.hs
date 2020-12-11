-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Route53.Types.ComparisonOperator
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Route53.Types.ComparisonOperator
  ( ComparisonOperator
      ( ComparisonOperator',
        GreaterThanOrEqualToThreshold,
        GreaterThanThreshold,
        LessThanOrEqualToThreshold,
        LessThanThreshold
      ),
  )
where

import qualified Network.AWS.Prelude as Lude
import Network.AWS.Route53.Internal

newtype ComparisonOperator = ComparisonOperator' Lude.Text
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

pattern GreaterThanOrEqualToThreshold :: ComparisonOperator
pattern GreaterThanOrEqualToThreshold = ComparisonOperator' "GreaterThanOrEqualToThreshold"

pattern GreaterThanThreshold :: ComparisonOperator
pattern GreaterThanThreshold = ComparisonOperator' "GreaterThanThreshold"

pattern LessThanOrEqualToThreshold :: ComparisonOperator
pattern LessThanOrEqualToThreshold = ComparisonOperator' "LessThanOrEqualToThreshold"

pattern LessThanThreshold :: ComparisonOperator
pattern LessThanThreshold = ComparisonOperator' "LessThanThreshold"

{-# COMPLETE
  GreaterThanOrEqualToThreshold,
  GreaterThanThreshold,
  LessThanOrEqualToThreshold,
  LessThanThreshold,
  ComparisonOperator'
  #-}