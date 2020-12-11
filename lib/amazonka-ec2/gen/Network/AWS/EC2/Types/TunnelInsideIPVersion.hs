-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.TunnelInsideIPVersion
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.TunnelInsideIPVersion
  ( TunnelInsideIPVersion
      ( TunnelInsideIPVersion',
        IPV4,
        IPV6
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype TunnelInsideIPVersion = TunnelInsideIPVersion' Lude.Text
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

pattern IPV4 :: TunnelInsideIPVersion
pattern IPV4 = TunnelInsideIPVersion' "ipv4"

pattern IPV6 :: TunnelInsideIPVersion
pattern IPV6 = TunnelInsideIPVersion' "ipv6"

{-# COMPLETE
  IPV4,
  IPV6,
  TunnelInsideIPVersion'
  #-}