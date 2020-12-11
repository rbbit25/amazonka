-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.FleetEventType
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.FleetEventType
  ( FleetEventType
      ( FleetEventType',
        FETFleetChange,
        FETInstanceChange,
        FETServiceError
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype FleetEventType = FleetEventType' Lude.Text
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

pattern FETFleetChange :: FleetEventType
pattern FETFleetChange = FleetEventType' "fleet-change"

pattern FETInstanceChange :: FleetEventType
pattern FETInstanceChange = FleetEventType' "instance-change"

pattern FETServiceError :: FleetEventType
pattern FETServiceError = FleetEventType' "service-error"

{-# COMPLETE
  FETFleetChange,
  FETInstanceChange,
  FETServiceError,
  FleetEventType'
  #-}