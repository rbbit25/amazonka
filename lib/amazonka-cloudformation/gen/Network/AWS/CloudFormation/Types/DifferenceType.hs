-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFormation.Types.DifferenceType
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFormation.Types.DifferenceType
  ( DifferenceType
      ( DifferenceType',
        DTAdd,
        DTNotEqual,
        DTRemove
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype DifferenceType = DifferenceType' Lude.Text
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

pattern DTAdd :: DifferenceType
pattern DTAdd = DifferenceType' "ADD"

pattern DTNotEqual :: DifferenceType
pattern DTNotEqual = DifferenceType' "NOT_EQUAL"

pattern DTRemove :: DifferenceType
pattern DTRemove = DifferenceType' "REMOVE"

{-# COMPLETE
  DTAdd,
  DTNotEqual,
  DTRemove,
  DifferenceType'
  #-}