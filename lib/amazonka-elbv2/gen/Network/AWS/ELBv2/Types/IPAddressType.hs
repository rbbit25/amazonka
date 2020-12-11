-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ELBv2.Types.IPAddressType
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ELBv2.Types.IPAddressType
  ( IPAddressType
      ( IPAddressType',
        Dualstack,
        IPV4
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype IPAddressType = IPAddressType' Lude.Text
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

pattern Dualstack :: IPAddressType
pattern Dualstack = IPAddressType' "dualstack"

pattern IPV4 :: IPAddressType
pattern IPV4 = IPAddressType' "ipv4"

{-# COMPLETE
  Dualstack,
  IPV4,
  IPAddressType'
  #-}