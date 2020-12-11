-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ServiceCatalog.Types.AccessLevelFilterKey
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ServiceCatalog.Types.AccessLevelFilterKey
  ( AccessLevelFilterKey
      ( AccessLevelFilterKey',
        Account,
        Role,
        User
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype AccessLevelFilterKey = AccessLevelFilterKey' Lude.Text
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

pattern Account :: AccessLevelFilterKey
pattern Account = AccessLevelFilterKey' "Account"

pattern Role :: AccessLevelFilterKey
pattern Role = AccessLevelFilterKey' "Role"

pattern User :: AccessLevelFilterKey
pattern User = AccessLevelFilterKey' "User"

{-# COMPLETE
  Account,
  Role,
  User,
  AccessLevelFilterKey'
  #-}