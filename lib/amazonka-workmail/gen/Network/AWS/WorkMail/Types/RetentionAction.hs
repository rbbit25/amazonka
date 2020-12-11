-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WorkMail.Types.RetentionAction
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkMail.Types.RetentionAction
  ( RetentionAction
      ( RetentionAction',
        Delete,
        None,
        PermanentlyDelete
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype RetentionAction = RetentionAction' Lude.Text
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

pattern Delete :: RetentionAction
pattern Delete = RetentionAction' "DELETE"

pattern None :: RetentionAction
pattern None = RetentionAction' "NONE"

pattern PermanentlyDelete :: RetentionAction
pattern PermanentlyDelete = RetentionAction' "PERMANENTLY_DELETE"

{-# COMPLETE
  Delete,
  None,
  PermanentlyDelete,
  RetentionAction'
  #-}