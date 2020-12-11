-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeCommit.Types.ChangeTypeEnum
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeCommit.Types.ChangeTypeEnum
  ( ChangeTypeEnum
      ( ChangeTypeEnum',
        A,
        D,
        M
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype ChangeTypeEnum = ChangeTypeEnum' Lude.Text
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

pattern A :: ChangeTypeEnum
pattern A = ChangeTypeEnum' "A"

pattern D :: ChangeTypeEnum
pattern D = ChangeTypeEnum' "D"

pattern M :: ChangeTypeEnum
pattern M = ChangeTypeEnum' "M"

{-# COMPLETE
  A,
  D,
  M,
  ChangeTypeEnum'
  #-}