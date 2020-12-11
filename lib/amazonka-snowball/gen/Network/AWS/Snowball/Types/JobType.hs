-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Snowball.Types.JobType
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Snowball.Types.JobType
  ( JobType
      ( JobType',
        Export,
        Import,
        LocalUse
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype JobType = JobType' Lude.Text
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

pattern Export :: JobType
pattern Export = JobType' "EXPORT"

pattern Import :: JobType
pattern Import = JobType' "IMPORT"

pattern LocalUse :: JobType
pattern LocalUse = JobType' "LOCAL_USE"

{-# COMPLETE
  Export,
  Import,
  LocalUse,
  JobType'
  #-}