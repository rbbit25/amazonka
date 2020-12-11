-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeDeploy.Types.GreenFleetProvisioningAction
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeDeploy.Types.GreenFleetProvisioningAction
  ( GreenFleetProvisioningAction
      ( GreenFleetProvisioningAction',
        CopyAutoScalingGroup,
        DiscoverExisting
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype GreenFleetProvisioningAction = GreenFleetProvisioningAction' Lude.Text
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

pattern CopyAutoScalingGroup :: GreenFleetProvisioningAction
pattern CopyAutoScalingGroup = GreenFleetProvisioningAction' "COPY_AUTO_SCALING_GROUP"

pattern DiscoverExisting :: GreenFleetProvisioningAction
pattern DiscoverExisting = GreenFleetProvisioningAction' "DISCOVER_EXISTING"

{-# COMPLETE
  CopyAutoScalingGroup,
  DiscoverExisting,
  GreenFleetProvisioningAction'
  #-}