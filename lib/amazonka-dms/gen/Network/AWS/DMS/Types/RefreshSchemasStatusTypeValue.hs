-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DMS.Types.RefreshSchemasStatusTypeValue
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DMS.Types.RefreshSchemasStatusTypeValue
  ( RefreshSchemasStatusTypeValue
      ( RefreshSchemasStatusTypeValue',
        Failed,
        Refreshing,
        Successful
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype RefreshSchemasStatusTypeValue = RefreshSchemasStatusTypeValue' Lude.Text
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

pattern Failed :: RefreshSchemasStatusTypeValue
pattern Failed = RefreshSchemasStatusTypeValue' "failed"

pattern Refreshing :: RefreshSchemasStatusTypeValue
pattern Refreshing = RefreshSchemasStatusTypeValue' "refreshing"

pattern Successful :: RefreshSchemasStatusTypeValue
pattern Successful = RefreshSchemasStatusTypeValue' "successful"

{-# COMPLETE
  Failed,
  Refreshing,
  Successful,
  RefreshSchemasStatusTypeValue'
  #-}