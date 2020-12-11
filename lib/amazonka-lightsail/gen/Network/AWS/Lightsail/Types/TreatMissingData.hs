-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lightsail.Types.TreatMissingData
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.TreatMissingData
  ( TreatMissingData
      ( TreatMissingData',
        Breaching,
        Ignore,
        Missing,
        NotBreaching
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype TreatMissingData = TreatMissingData' Lude.Text
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

pattern Breaching :: TreatMissingData
pattern Breaching = TreatMissingData' "breaching"

pattern Ignore :: TreatMissingData
pattern Ignore = TreatMissingData' "ignore"

pattern Missing :: TreatMissingData
pattern Missing = TreatMissingData' "missing"

pattern NotBreaching :: TreatMissingData
pattern NotBreaching = TreatMissingData' "notBreaching"

{-# COMPLETE
  Breaching,
  Ignore,
  Missing,
  NotBreaching,
  TreatMissingData'
  #-}