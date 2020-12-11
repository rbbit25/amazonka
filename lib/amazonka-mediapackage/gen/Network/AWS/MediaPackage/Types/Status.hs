-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaPackage.Types.Status
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaPackage.Types.Status
  ( Status
      ( Status',
        Failed,
        InProgress,
        Succeeded
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype Status = Status' Lude.Text
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

pattern Failed :: Status
pattern Failed = Status' "FAILED"

pattern InProgress :: Status
pattern InProgress = Status' "IN_PROGRESS"

pattern Succeeded :: Status
pattern Succeeded = Status' "SUCCEEDED"

{-# COMPLETE
  Failed,
  InProgress,
  Succeeded,
  Status'
  #-}