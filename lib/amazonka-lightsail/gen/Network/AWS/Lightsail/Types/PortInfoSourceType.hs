-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lightsail.Types.PortInfoSourceType
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.PortInfoSourceType
  ( PortInfoSourceType
      ( PortInfoSourceType',
        PISTClosed,
        PISTDefault,
        PISTInstance,
        PISTNone
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype PortInfoSourceType = PortInfoSourceType' Lude.Text
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

pattern PISTClosed :: PortInfoSourceType
pattern PISTClosed = PortInfoSourceType' "CLOSED"

pattern PISTDefault :: PortInfoSourceType
pattern PISTDefault = PortInfoSourceType' "DEFAULT"

pattern PISTInstance :: PortInfoSourceType
pattern PISTInstance = PortInfoSourceType' "INSTANCE"

pattern PISTNone :: PortInfoSourceType
pattern PISTNone = PortInfoSourceType' "NONE"

{-# COMPLETE
  PISTClosed,
  PISTDefault,
  PISTInstance,
  PISTNone,
  PortInfoSourceType'
  #-}