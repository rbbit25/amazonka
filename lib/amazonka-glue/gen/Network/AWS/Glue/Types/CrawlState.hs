-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.CrawlState
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.CrawlState
  ( CrawlState
      ( CrawlState',
        CSCancelled,
        CSCancelling,
        CSFailed,
        CSRunning,
        CSSucceeded
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype CrawlState = CrawlState' Lude.Text
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

pattern CSCancelled :: CrawlState
pattern CSCancelled = CrawlState' "CANCELLED"

pattern CSCancelling :: CrawlState
pattern CSCancelling = CrawlState' "CANCELLING"

pattern CSFailed :: CrawlState
pattern CSFailed = CrawlState' "FAILED"

pattern CSRunning :: CrawlState
pattern CSRunning = CrawlState' "RUNNING"

pattern CSSucceeded :: CrawlState
pattern CSSucceeded = CrawlState' "SUCCEEDED"

{-# COMPLETE
  CSCancelled,
  CSCancelling,
  CSFailed,
  CSRunning,
  CSSucceeded,
  CrawlState'
  #-}