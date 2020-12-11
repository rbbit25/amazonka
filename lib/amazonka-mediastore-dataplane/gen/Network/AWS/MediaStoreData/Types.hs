-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaStoreData.Types
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaStoreData.Types
  ( -- * Service configuration
    mediaStoreDataService,

    -- * Errors

    -- * ItemType
    ItemType (..),

    -- * StorageClass
    StorageClass (..),

    -- * UploadAvailability
    UploadAvailability (..),

    -- * Item
    Item (..),
    mkItem,
    iETag,
    iContentLength,
    iName,
    iType,
    iLastModified,
    iContentType,
  )
where

import qualified Network.AWS.Lens as Lens
import Network.AWS.MediaStoreData.Types.Item
import Network.AWS.MediaStoreData.Types.ItemType
import Network.AWS.MediaStoreData.Types.StorageClass
import Network.AWS.MediaStoreData.Types.UploadAvailability
import qualified Network.AWS.Prelude as Lude
import qualified Network.AWS.Sign.V4 as Sign

-- | API version @2017-09-01@ of the Amazon Elemental MediaStore Data Plane SDK configuration.
mediaStoreDataService :: Lude.Service
mediaStoreDataService =
  Lude.Service
    { Lude._svcAbbrev = "MediaStoreData",
      Lude._svcSigner = Sign.v4,
      Lude._svcPrefix = "data.mediastore",
      Lude._svcVersion = "2017-09-01",
      Lude._svcEndpoint = Lude.defaultEndpoint mediaStoreDataService,
      Lude._svcTimeout = Lude.Just 70,
      Lude._svcCheck = Lude.statusSuccess,
      Lude._svcError = Lude.parseJSONError "MediaStoreData",
      Lude._svcRetry = retry
    }
  where
    retry =
      Lude.Exponential
        { Lude._retryBase = 5.0e-2,
          Lude._retryGrowth = 2,
          Lude._retryAttempts = 5,
          Lude._retryCheck = check
        }
    check e
      | Lens.has
          (Lude.hasCode "ThrottledException" Lude.. Lude.hasStatus 400)
          e =
        Lude.Just "throttled_exception"
      | Lens.has (Lude.hasStatus 429) e = Lude.Just "too_many_requests"
      | Lens.has
          (Lude.hasCode "ThrottlingException" Lude.. Lude.hasStatus 400)
          e =
        Lude.Just "throttling_exception"
      | Lens.has (Lude.hasCode "Throttling" Lude.. Lude.hasStatus 400) e =
        Lude.Just "throttling"
      | Lens.has
          ( Lude.hasCode "ProvisionedThroughputExceededException"
              Lude.. Lude.hasStatus 400
          )
          e =
        Lude.Just "throughput_exceeded"
      | Lens.has (Lude.hasStatus 504) e = Lude.Just "gateway_timeout"
      | Lens.has
          ( Lude.hasCode "RequestThrottledException"
              Lude.. Lude.hasStatus 400
          )
          e =
        Lude.Just "request_throttled_exception"
      | Lens.has (Lude.hasStatus 502) e = Lude.Just "bad_gateway"
      | Lens.has (Lude.hasStatus 503) e = Lude.Just "service_unavailable"
      | Lens.has (Lude.hasStatus 500) e =
        Lude.Just "general_server_error"
      | Lens.has (Lude.hasStatus 509) e = Lude.Just "limit_exceeded"
      | Lude.otherwise = Lude.Nothing