-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DynamoDB.Types.BackupType
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DynamoDB.Types.BackupType
  ( BackupType
      ( BackupType',
        AWSBackup,
        System,
        User
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype BackupType = BackupType' Lude.Text
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

pattern AWSBackup :: BackupType
pattern AWSBackup = BackupType' "AWS_BACKUP"

pattern System :: BackupType
pattern System = BackupType' "SYSTEM"

pattern User :: BackupType
pattern User = BackupType' "USER"

{-# COMPLETE
  AWSBackup,
  System,
  User,
  BackupType'
  #-}