-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DMS.Types.ReloadOptionValue
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DMS.Types.ReloadOptionValue
  ( ReloadOptionValue
      ( ReloadOptionValue',
        DataReload,
        ValidateOnly
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype ReloadOptionValue = ReloadOptionValue' Lude.Text
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

pattern DataReload :: ReloadOptionValue
pattern DataReload = ReloadOptionValue' "data-reload"

pattern ValidateOnly :: ReloadOptionValue
pattern ValidateOnly = ReloadOptionValue' "validate-only"

{-# COMPLETE
  DataReload,
  ValidateOnly,
  ReloadOptionValue'
  #-}