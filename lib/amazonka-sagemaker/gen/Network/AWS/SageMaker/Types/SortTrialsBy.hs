-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.SortTrialsBy
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.SortTrialsBy
  ( SortTrialsBy
      ( SortTrialsBy',
        STBCreationTime,
        STBName
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype SortTrialsBy = SortTrialsBy' Lude.Text
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

pattern STBCreationTime :: SortTrialsBy
pattern STBCreationTime = SortTrialsBy' "CreationTime"

pattern STBName :: SortTrialsBy
pattern STBName = SortTrialsBy' "Name"

{-# COMPLETE
  STBCreationTime,
  STBName,
  SortTrialsBy'
  #-}