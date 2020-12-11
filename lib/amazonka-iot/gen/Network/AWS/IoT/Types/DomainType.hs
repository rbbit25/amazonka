-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.DomainType
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.DomainType
  ( DomainType
      ( DomainType',
        AWSManaged,
        CustomerManaged,
        Endpoint
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype DomainType = DomainType' Lude.Text
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

pattern AWSManaged :: DomainType
pattern AWSManaged = DomainType' "AWS_MANAGED"

pattern CustomerManaged :: DomainType
pattern CustomerManaged = DomainType' "CUSTOMER_MANAGED"

pattern Endpoint :: DomainType
pattern Endpoint = DomainType' "ENDPOINT"

{-# COMPLETE
  AWSManaged,
  CustomerManaged,
  Endpoint,
  DomainType'
  #-}