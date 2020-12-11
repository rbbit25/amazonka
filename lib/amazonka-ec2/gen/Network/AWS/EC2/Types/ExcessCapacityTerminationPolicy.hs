-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.ExcessCapacityTerminationPolicy
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.ExcessCapacityTerminationPolicy
  ( ExcessCapacityTerminationPolicy
      ( ExcessCapacityTerminationPolicy',
        ECTPDefault,
        ECTPNoTermination
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype ExcessCapacityTerminationPolicy = ExcessCapacityTerminationPolicy' Lude.Text
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

pattern ECTPDefault :: ExcessCapacityTerminationPolicy
pattern ECTPDefault = ExcessCapacityTerminationPolicy' "default"

pattern ECTPNoTermination :: ExcessCapacityTerminationPolicy
pattern ECTPNoTermination = ExcessCapacityTerminationPolicy' "noTermination"

{-# COMPLETE
  ECTPDefault,
  ECTPNoTermination,
  ExcessCapacityTerminationPolicy'
  #-}