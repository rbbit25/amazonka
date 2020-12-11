-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeDeploy.Types.ListStateFilterAction
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeDeploy.Types.ListStateFilterAction
  ( ListStateFilterAction
      ( ListStateFilterAction',
        Exclude,
        Ignore,
        Include
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype ListStateFilterAction = ListStateFilterAction' Lude.Text
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

pattern Exclude :: ListStateFilterAction
pattern Exclude = ListStateFilterAction' "exclude"

pattern Ignore :: ListStateFilterAction
pattern Ignore = ListStateFilterAction' "ignore"

pattern Include :: ListStateFilterAction
pattern Include = ListStateFilterAction' "include"

{-# COMPLETE
  Exclude,
  Ignore,
  Include,
  ListStateFilterAction'
  #-}