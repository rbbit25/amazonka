-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.ConnectionType
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.ConnectionType
  ( ConnectionType
      ( ConnectionType',
        Jdbc,
        Kafka,
        Mongodb,
        Network,
        Sftp
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype ConnectionType = ConnectionType' Lude.Text
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

pattern Jdbc :: ConnectionType
pattern Jdbc = ConnectionType' "JDBC"

pattern Kafka :: ConnectionType
pattern Kafka = ConnectionType' "KAFKA"

pattern Mongodb :: ConnectionType
pattern Mongodb = ConnectionType' "MONGODB"

pattern Network :: ConnectionType
pattern Network = ConnectionType' "NETWORK"

pattern Sftp :: ConnectionType
pattern Sftp = ConnectionType' "SFTP"

{-# COMPLETE
  Jdbc,
  Kafka,
  Mongodb,
  Network,
  Sftp,
  ConnectionType'
  #-}