-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.FMS.Types.DependentServiceName
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.FMS.Types.DependentServiceName
  ( DependentServiceName
      ( DependentServiceName',
        AWSSHieldAdvanced,
        AWSconfig,
        AWSvpc,
        AWSwaf
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype DependentServiceName = DependentServiceName' Lude.Text
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

pattern AWSSHieldAdvanced :: DependentServiceName
pattern AWSSHieldAdvanced = DependentServiceName' "AWSSHIELD_ADVANCED"

pattern AWSconfig :: DependentServiceName
pattern AWSconfig = DependentServiceName' "AWSCONFIG"

pattern AWSvpc :: DependentServiceName
pattern AWSvpc = DependentServiceName' "AWSVPC"

pattern AWSwaf :: DependentServiceName
pattern AWSwaf = DependentServiceName' "AWSWAF"

{-# COMPLETE
  AWSSHieldAdvanced,
  AWSconfig,
  AWSvpc,
  AWSwaf,
  DependentServiceName'
  #-}