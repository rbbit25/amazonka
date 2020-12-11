-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFormation.Types.ChangeAction
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFormation.Types.ChangeAction
  ( ChangeAction
      ( ChangeAction',
        Add,
        Dynamic,
        Import,
        Modify,
        Remove
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype ChangeAction = ChangeAction' Lude.Text
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

pattern Add :: ChangeAction
pattern Add = ChangeAction' "Add"

pattern Dynamic :: ChangeAction
pattern Dynamic = ChangeAction' "Dynamic"

pattern Import :: ChangeAction
pattern Import = ChangeAction' "Import"

pattern Modify :: ChangeAction
pattern Modify = ChangeAction' "Modify"

pattern Remove :: ChangeAction
pattern Remove = ChangeAction' "Remove"

{-# COMPLETE
  Add,
  Dynamic,
  Import,
  Modify,
  Remove,
  ChangeAction'
  #-}