{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFront.CreateInvalidation
-- Copyright   : (c) 2013-2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)
--
-- Create a new invalidation.
--
-- <http://docs.aws.amazon.com/AmazonCloudFront/latest/APIReference/CreateInvalidation.html>
module Network.AWS.CloudFront.CreateInvalidation
    (
    -- * Request
      CreateInvalidation
    -- ** Request constructor
    , createInvalidation
    -- ** Request lenses
    , cirqDistributionId
    , cirqInvalidationBatch

    -- * Response
    , CreateInvalidationResponse
    -- ** Response constructor
    , createInvalidationResponse
    -- ** Response lenses
    , cirsInvalidation
    , cirsLocation
    , cirsStatus
    ) where

import           Network.AWS.CloudFront.Types
import           Network.AWS.Prelude
import           Network.AWS.Request
import           Network.AWS.Response

-- | The request to create an invalidation.
--
-- /See:/ 'createInvalidation' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'cirqDistributionId'
--
-- * 'cirqInvalidationBatch'
data CreateInvalidation = CreateInvalidation'
    { _cirqDistributionId    :: !Text
    , _cirqInvalidationBatch :: !InvalidationBatch
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | 'CreateInvalidation' smart constructor.
createInvalidation :: Text -> InvalidationBatch -> CreateInvalidation
createInvalidation pDistributionId pInvalidationBatch =
    CreateInvalidation'
    { _cirqDistributionId = pDistributionId
    , _cirqInvalidationBatch = pInvalidationBatch
    }

-- | The distribution\'s id.
cirqDistributionId :: Lens' CreateInvalidation Text
cirqDistributionId = lens _cirqDistributionId (\ s a -> s{_cirqDistributionId = a});

-- | The batch information for the invalidation.
cirqInvalidationBatch :: Lens' CreateInvalidation InvalidationBatch
cirqInvalidationBatch = lens _cirqInvalidationBatch (\ s a -> s{_cirqInvalidationBatch = a});

instance AWSRequest CreateInvalidation where
        type Sv CreateInvalidation = CloudFront
        type Rs CreateInvalidation =
             CreateInvalidationResponse
        request = postXML
        response
          = receiveXML
              (\ s h x ->
                 CreateInvalidationResponse' <$>
                   (parseXML x) <*> (h .#? "Location") <*>
                     (pure (fromEnum s)))

instance ToElement CreateInvalidation where
        toElement
          = mkElement
              "{http://cloudfront.amazonaws.com/doc/2015-04-17/}InvalidationBatch"
              .
              _cirqInvalidationBatch

instance ToHeaders CreateInvalidation where
        toHeaders = const mempty

instance ToPath CreateInvalidation where
        toPath CreateInvalidation'{..}
          = mconcat
              ["/2015-04-17/distribution/",
               toText _cirqDistributionId, "/invalidation"]

instance ToQuery CreateInvalidation where
        toQuery = const mempty

-- | The returned result of the corresponding request.
--
-- /See:/ 'createInvalidationResponse' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'cirsInvalidation'
--
-- * 'cirsLocation'
--
-- * 'cirsStatus'
data CreateInvalidationResponse = CreateInvalidationResponse'
    { _cirsInvalidation :: !(Maybe Invalidation)
    , _cirsLocation     :: !(Maybe Text)
    , _cirsStatus       :: !Int
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | 'CreateInvalidationResponse' smart constructor.
createInvalidationResponse :: Int -> CreateInvalidationResponse
createInvalidationResponse pStatus =
    CreateInvalidationResponse'
    { _cirsInvalidation = Nothing
    , _cirsLocation = Nothing
    , _cirsStatus = pStatus
    }

-- | The invalidation\'s information.
cirsInvalidation :: Lens' CreateInvalidationResponse (Maybe Invalidation)
cirsInvalidation = lens _cirsInvalidation (\ s a -> s{_cirsInvalidation = a});

-- | The fully qualified URI of the distribution and invalidation batch
-- request, including the Invalidation ID.
cirsLocation :: Lens' CreateInvalidationResponse (Maybe Text)
cirsLocation = lens _cirsLocation (\ s a -> s{_cirsLocation = a});

-- | FIXME: Undocumented member.
cirsStatus :: Lens' CreateInvalidationResponse Int
cirsStatus = lens _cirsStatus (\ s a -> s{_cirsStatus = a});
