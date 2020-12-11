-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EMR.Types.Statistic
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EMR.Types.Statistic
  ( Statistic
      ( Statistic',
        Average,
        Maximum,
        Minimum,
        SampleCount,
        Sum
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype Statistic = Statistic' Lude.Text
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

pattern Average :: Statistic
pattern Average = Statistic' "AVERAGE"

pattern Maximum :: Statistic
pattern Maximum = Statistic' "MAXIMUM"

pattern Minimum :: Statistic
pattern Minimum = Statistic' "MINIMUM"

pattern SampleCount :: Statistic
pattern SampleCount = Statistic' "SAMPLE_COUNT"

pattern Sum :: Statistic
pattern Sum = Statistic' "SUM"

{-# COMPLETE
  Average,
  Maximum,
  Minimum,
  SampleCount,
  Sum,
  Statistic'
  #-}