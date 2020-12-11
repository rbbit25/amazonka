-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Budgets.Types.ActionType
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Budgets.Types.ActionType
  ( ActionType
      ( ActionType',
        ApplyIAMPolicy,
        ApplyScpPolicy,
        RunSsmDocuments
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype ActionType = ActionType' Lude.Text
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

pattern ApplyIAMPolicy :: ActionType
pattern ApplyIAMPolicy = ActionType' "APPLY_IAM_POLICY"

pattern ApplyScpPolicy :: ActionType
pattern ApplyScpPolicy = ActionType' "APPLY_SCP_POLICY"

pattern RunSsmDocuments :: ActionType
pattern RunSsmDocuments = ActionType' "RUN_SSM_DOCUMENTS"

{-# COMPLETE
  ApplyIAMPolicy,
  ApplyScpPolicy,
  RunSsmDocuments,
  ActionType'
  #-}