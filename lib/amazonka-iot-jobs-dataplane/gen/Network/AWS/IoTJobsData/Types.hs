{-# LANGUAGE OverloadedStrings #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoTJobsData.Types
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTJobsData.Types
  ( -- * Service Configuration
    ioTJobsData,

    -- * Errors

    -- * JobExecutionStatus
    JobExecutionStatus (..),

    -- * JobExecution
    JobExecution,
    jobExecution,
    jeStatus,
    jeJobId,
    jeLastUpdatedAt,
    jeApproximateSecondsBeforeTimedOut,
    jeQueuedAt,
    jeJobDocument,
    jeStatusDetails,
    jeExecutionNumber,
    jeVersionNumber,
    jeStartedAt,
    jeThingName,

    -- * JobExecutionState
    JobExecutionState,
    jobExecutionState,
    jesStatus,
    jesStatusDetails,
    jesVersionNumber,

    -- * JobExecutionSummary
    JobExecutionSummary,
    jobExecutionSummary,
    jJobId,
    jLastUpdatedAt,
    jQueuedAt,
    jExecutionNumber,
    jVersionNumber,
    jStartedAt,
  )
where

import Network.AWS.IoTJobsData.Types.JobExecution
import Network.AWS.IoTJobsData.Types.JobExecutionState
import Network.AWS.IoTJobsData.Types.JobExecutionStatus
import Network.AWS.IoTJobsData.Types.JobExecutionSummary
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Sign.V4

-- | API version @2017-09-29@ of the Amazon IoT Jobs Data Plane SDK configuration.
ioTJobsData :: Service
ioTJobsData =
  Service
    { _svcAbbrev = "IoTJobsData",
      _svcSigner = v4,
      _svcPrefix = "data.jobs.iot",
      _svcVersion = "2017-09-29",
      _svcEndpoint = defaultEndpoint ioTJobsData,
      _svcTimeout = Just 70,
      _svcCheck = statusSuccess,
      _svcError = parseJSONError "IoTJobsData",
      _svcRetry = retry
    }
  where
    retry =
      Exponential
        { _retryBase = 5.0e-2,
          _retryGrowth = 2,
          _retryAttempts = 5,
          _retryCheck = check
        }
    check e
      | has (hasCode "ThrottledException" . hasStatus 400) e =
        Just "throttled_exception"
      | has (hasStatus 429) e = Just "too_many_requests"
      | has (hasCode "ThrottlingException" . hasStatus 400) e =
        Just "throttling_exception"
      | has (hasCode "Throttling" . hasStatus 400) e = Just "throttling"
      | has
          (hasCode "ProvisionedThroughputExceededException" . hasStatus 400)
          e =
        Just "throughput_exceeded"
      | has (hasStatus 504) e = Just "gateway_timeout"
      | has (hasCode "RequestThrottledException" . hasStatus 400) e =
        Just "request_throttled_exception"
      | has (hasStatus 502) e = Just "bad_gateway"
      | has (hasStatus 503) e = Just "service_unavailable"
      | has (hasStatus 500) e = Just "general_server_error"
      | has (hasStatus 509) e = Just "limit_exceeded"
      | otherwise = Nothing
