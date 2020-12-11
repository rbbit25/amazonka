-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeBuild.Types.EnvironmentVariableType
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeBuild.Types.EnvironmentVariableType
  ( EnvironmentVariableType
      ( EnvironmentVariableType',
        EVTParameterStore,
        EVTPlaintext,
        EVTSecretsManager
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype EnvironmentVariableType = EnvironmentVariableType' Lude.Text
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

pattern EVTParameterStore :: EnvironmentVariableType
pattern EVTParameterStore = EnvironmentVariableType' "PARAMETER_STORE"

pattern EVTPlaintext :: EnvironmentVariableType
pattern EVTPlaintext = EnvironmentVariableType' "PLAINTEXT"

pattern EVTSecretsManager :: EnvironmentVariableType
pattern EVTSecretsManager = EnvironmentVariableType' "SECRETS_MANAGER"

{-# COMPLETE
  EVTParameterStore,
  EVTPlaintext,
  EVTSecretsManager,
  EnvironmentVariableType'
  #-}