-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.APIGateway.Types.VPCLinkStatus
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.APIGateway.Types.VPCLinkStatus
  ( VPCLinkStatus
      ( VPCLinkStatus',
        VLSAvailable,
        VLSDeleting,
        VLSFailed,
        VLSPending
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype VPCLinkStatus = VPCLinkStatus' Lude.Text
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

pattern VLSAvailable :: VPCLinkStatus
pattern VLSAvailable = VPCLinkStatus' "AVAILABLE"

pattern VLSDeleting :: VPCLinkStatus
pattern VLSDeleting = VPCLinkStatus' "DELETING"

pattern VLSFailed :: VPCLinkStatus
pattern VLSFailed = VPCLinkStatus' "FAILED"

pattern VLSPending :: VPCLinkStatus
pattern VLSPending = VPCLinkStatus' "PENDING"

{-# COMPLETE
  VLSAvailable,
  VLSDeleting,
  VLSFailed,
  VLSPending,
  VPCLinkStatus'
  #-}