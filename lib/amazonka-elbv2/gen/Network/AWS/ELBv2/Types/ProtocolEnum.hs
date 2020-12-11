-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ELBv2.Types.ProtocolEnum
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ELBv2.Types.ProtocolEnum
  ( ProtocolEnum
      ( ProtocolEnum',
        Geneve,
        HTTP,
        HTTPS,
        TCP,
        TCPUdp,
        TLS,
        Udp
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype ProtocolEnum = ProtocolEnum' Lude.Text
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

pattern Geneve :: ProtocolEnum
pattern Geneve = ProtocolEnum' "GENEVE"

pattern HTTP :: ProtocolEnum
pattern HTTP = ProtocolEnum' "HTTP"

pattern HTTPS :: ProtocolEnum
pattern HTTPS = ProtocolEnum' "HTTPS"

pattern TCP :: ProtocolEnum
pattern TCP = ProtocolEnum' "TCP"

pattern TCPUdp :: ProtocolEnum
pattern TCPUdp = ProtocolEnum' "TCP_UDP"

pattern TLS :: ProtocolEnum
pattern TLS = ProtocolEnum' "TLS"

pattern Udp :: ProtocolEnum
pattern Udp = ProtocolEnum' "UDP"

{-# COMPLETE
  Geneve,
  HTTP,
  HTTPS,
  TCP,
  TCPUdp,
  TLS,
  Udp,
  ProtocolEnum'
  #-}