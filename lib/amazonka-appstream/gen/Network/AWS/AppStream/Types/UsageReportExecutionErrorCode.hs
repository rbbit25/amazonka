-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AppStream.Types.UsageReportExecutionErrorCode
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppStream.Types.UsageReportExecutionErrorCode
  ( UsageReportExecutionErrorCode
      ( UsageReportExecutionErrorCode',
        UREECAccessDenied,
        UREECInternalServiceError,
        UREECResourceNotFound
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype UsageReportExecutionErrorCode = UsageReportExecutionErrorCode' Lude.Text
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

pattern UREECAccessDenied :: UsageReportExecutionErrorCode
pattern UREECAccessDenied = UsageReportExecutionErrorCode' "ACCESS_DENIED"

pattern UREECInternalServiceError :: UsageReportExecutionErrorCode
pattern UREECInternalServiceError = UsageReportExecutionErrorCode' "INTERNAL_SERVICE_ERROR"

pattern UREECResourceNotFound :: UsageReportExecutionErrorCode
pattern UREECResourceNotFound = UsageReportExecutionErrorCode' "RESOURCE_NOT_FOUND"

{-# COMPLETE
  UREECAccessDenied,
  UREECInternalServiceError,
  UREECResourceNotFound,
  UsageReportExecutionErrorCode'
  #-}