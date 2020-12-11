-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.KinesisVideoMedia.Types.StartSelectorType
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KinesisVideoMedia.Types.StartSelectorType
  ( StartSelectorType
      ( StartSelectorType',
        ContinuationToken,
        Earliest,
        FragmentNumber,
        Now,
        ProducerTimestamp,
        ServerTimestamp
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype StartSelectorType = StartSelectorType' Lude.Text
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

pattern ContinuationToken :: StartSelectorType
pattern ContinuationToken = StartSelectorType' "CONTINUATION_TOKEN"

pattern Earliest :: StartSelectorType
pattern Earliest = StartSelectorType' "EARLIEST"

pattern FragmentNumber :: StartSelectorType
pattern FragmentNumber = StartSelectorType' "FRAGMENT_NUMBER"

pattern Now :: StartSelectorType
pattern Now = StartSelectorType' "NOW"

pattern ProducerTimestamp :: StartSelectorType
pattern ProducerTimestamp = StartSelectorType' "PRODUCER_TIMESTAMP"

pattern ServerTimestamp :: StartSelectorType
pattern ServerTimestamp = StartSelectorType' "SERVER_TIMESTAMP"

{-# COMPLETE
  ContinuationToken,
  Earliest,
  FragmentNumber,
  Now,
  ProducerTimestamp,
  ServerTimestamp,
  StartSelectorType'
  #-}