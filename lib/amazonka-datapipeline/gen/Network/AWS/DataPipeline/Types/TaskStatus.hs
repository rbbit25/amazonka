-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DataPipeline.Types.TaskStatus
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DataPipeline.Types.TaskStatus
  ( TaskStatus
      ( TaskStatus',
        Failed,
        False,
        Finished
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype TaskStatus = TaskStatus' Lude.Text
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

pattern Failed :: TaskStatus
pattern Failed = TaskStatus' "FAILED"

pattern False :: TaskStatus
pattern False = TaskStatus' "FALSE"

pattern Finished :: TaskStatus
pattern Finished = TaskStatus' "FINISHED"

{-# COMPLETE
  Failed,
  False,
  Finished,
  TaskStatus'
  #-}