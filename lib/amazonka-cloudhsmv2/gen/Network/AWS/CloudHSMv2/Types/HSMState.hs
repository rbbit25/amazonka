-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudHSMv2.Types.HSMState
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudHSMv2.Types.HSMState
  ( HSMState
      ( HSMState',
        HSActive,
        HSCreateInProgress,
        HSDegraded,
        HSDeleteInProgress,
        HSDeleted
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype HSMState = HSMState' Lude.Text
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

pattern HSActive :: HSMState
pattern HSActive = HSMState' "ACTIVE"

pattern HSCreateInProgress :: HSMState
pattern HSCreateInProgress = HSMState' "CREATE_IN_PROGRESS"

pattern HSDegraded :: HSMState
pattern HSDegraded = HSMState' "DEGRADED"

pattern HSDeleteInProgress :: HSMState
pattern HSDeleteInProgress = HSMState' "DELETE_IN_PROGRESS"

pattern HSDeleted :: HSMState
pattern HSDeleted = HSMState' "DELETED"

{-# COMPLETE
  HSActive,
  HSCreateInProgress,
  HSDegraded,
  HSDeleteInProgress,
  HSDeleted,
  HSMState'
  #-}