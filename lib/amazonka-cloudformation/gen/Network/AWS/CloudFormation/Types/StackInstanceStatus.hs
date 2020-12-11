-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFormation.Types.StackInstanceStatus
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFormation.Types.StackInstanceStatus
  ( StackInstanceStatus
      ( StackInstanceStatus',
        Current,
        Inoperable,
        Outdated
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype StackInstanceStatus = StackInstanceStatus' Lude.Text
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

pattern Current :: StackInstanceStatus
pattern Current = StackInstanceStatus' "CURRENT"

pattern Inoperable :: StackInstanceStatus
pattern Inoperable = StackInstanceStatus' "INOPERABLE"

pattern Outdated :: StackInstanceStatus
pattern Outdated = StackInstanceStatus' "OUTDATED"

{-# COMPLETE
  Current,
  Inoperable,
  Outdated,
  StackInstanceStatus'
  #-}