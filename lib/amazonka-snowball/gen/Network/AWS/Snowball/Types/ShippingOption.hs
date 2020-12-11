-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Snowball.Types.ShippingOption
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Snowball.Types.ShippingOption
  ( ShippingOption
      ( ShippingOption',
        SOExpress,
        SONextDay,
        SOSecondDay,
        SOStandard
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype ShippingOption = ShippingOption' Lude.Text
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

pattern SOExpress :: ShippingOption
pattern SOExpress = ShippingOption' "EXPRESS"

pattern SONextDay :: ShippingOption
pattern SONextDay = ShippingOption' "NEXT_DAY"

pattern SOSecondDay :: ShippingOption
pattern SOSecondDay = ShippingOption' "SECOND_DAY"

pattern SOStandard :: ShippingOption
pattern SOStandard = ShippingOption' "STANDARD"

{-# COMPLETE
  SOExpress,
  SONextDay,
  SOSecondDay,
  SOStandard,
  ShippingOption'
  #-}