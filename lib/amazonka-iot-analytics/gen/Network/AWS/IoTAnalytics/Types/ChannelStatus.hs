-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoTAnalytics.Types.ChannelStatus
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTAnalytics.Types.ChannelStatus
  ( ChannelStatus
      ( ChannelStatus',
        CSActive,
        CSCreating,
        CSDeleting
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype ChannelStatus = ChannelStatus' Lude.Text
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

pattern CSActive :: ChannelStatus
pattern CSActive = ChannelStatus' "ACTIVE"

pattern CSCreating :: ChannelStatus
pattern CSCreating = ChannelStatus' "CREATING"

pattern CSDeleting :: ChannelStatus
pattern CSDeleting = ChannelStatus' "DELETING"

{-# COMPLETE
  CSActive,
  CSCreating,
  CSDeleting,
  ChannelStatus'
  #-}