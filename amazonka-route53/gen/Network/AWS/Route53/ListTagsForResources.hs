{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Route53.ListTagsForResources
-- Copyright   : (c) 2013-2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)
--
-- FIXME: Undocumented operation.
--
-- <http://docs.aws.amazon.com/Route53/latest/APIReference/API_ListTagsForResources.html>
module Network.AWS.Route53.ListTagsForResources
    (
    -- * Request
      ListTagsForResources
    -- ** Request constructor
    , listTagsForResources
    -- ** Request lenses
    , lrqResourceType
    , lrqResourceIds

    -- * Response
    , ListTagsForResourcesResponse
    -- ** Response constructor
    , listTagsForResourcesResponse
    -- ** Response lenses
    , lrsStatus
    , lrsResourceTagSets
    ) where

import           Network.AWS.Prelude
import           Network.AWS.Request
import           Network.AWS.Response
import           Network.AWS.Route53.Types

-- | A complex type containing information about a request for a list of the
-- tags that are associated with up to 10 specified resources.
--
-- /See:/ 'listTagsForResources' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'lrqResourceType'
--
-- * 'lrqResourceIds'
data ListTagsForResources = ListTagsForResources'
    { _lrqResourceType :: !TagResourceType
    , _lrqResourceIds  :: !(List1 Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | 'ListTagsForResources' smart constructor.
listTagsForResources :: TagResourceType -> NonEmpty Text -> ListTagsForResources
listTagsForResources pResourceType pResourceIds =
    ListTagsForResources'
    { _lrqResourceType = pResourceType
    , _lrqResourceIds = _List1 # pResourceIds
    }

-- | The type of the resources.
--
-- - The resource type for health checks is @healthcheck@.
--
-- - The resource type for hosted zones is @hostedzone@.
lrqResourceType :: Lens' ListTagsForResources TagResourceType
lrqResourceType = lens _lrqResourceType (\ s a -> s{_lrqResourceType = a});

-- | A complex type that contains the ResourceId element for each resource
-- for which you want to get a list of tags.
lrqResourceIds :: Lens' ListTagsForResources (NonEmpty Text)
lrqResourceIds = lens _lrqResourceIds (\ s a -> s{_lrqResourceIds = a}) . _List1;

instance AWSRequest ListTagsForResources where
        type Sv ListTagsForResources = Route53
        type Rs ListTagsForResources =
             ListTagsForResourcesResponse
        request = postXML
        response
          = receiveXML
              (\ s h x ->
                 ListTagsForResourcesResponse' <$>
                   (pure (fromEnum s)) <*>
                     (x .@? "ResourceTagSets" .!@ mempty >>=
                        parseXMLList "ResourceTagSet"))

instance ToElement ListTagsForResources where
        toElement
          = mkElement
              "{https://route53.amazonaws.com/doc/2013-04-01/}ListTagsForResourcesRequest"

instance ToHeaders ListTagsForResources where
        toHeaders = const mempty

instance ToPath ListTagsForResources where
        toPath ListTagsForResources'{..}
          = mconcat
              ["/2013-04-01/tags/", toText _lrqResourceType]

instance ToQuery ListTagsForResources where
        toQuery = const mempty

instance ToXML ListTagsForResources where
        toXML ListTagsForResources'{..}
          = mconcat
              ["ResourceIds" @=
                 toXMLList "ResourceId" _lrqResourceIds]

-- | A complex type containing tags for the specified resources.
--
-- /See:/ 'listTagsForResourcesResponse' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'lrsStatus'
--
-- * 'lrsResourceTagSets'
data ListTagsForResourcesResponse = ListTagsForResourcesResponse'
    { _lrsStatus          :: !Int
    , _lrsResourceTagSets :: ![ResourceTagSet]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | 'ListTagsForResourcesResponse' smart constructor.
listTagsForResourcesResponse :: Int -> ListTagsForResourcesResponse
listTagsForResourcesResponse pStatus =
    ListTagsForResourcesResponse'
    { _lrsStatus = pStatus
    , _lrsResourceTagSets = mempty
    }

-- | FIXME: Undocumented member.
lrsStatus :: Lens' ListTagsForResourcesResponse Int
lrsStatus = lens _lrsStatus (\ s a -> s{_lrsStatus = a});

-- | A list of @ResourceTagSet@s containing tags associated with the
-- specified resources.
lrsResourceTagSets :: Lens' ListTagsForResourcesResponse [ResourceTagSet]
lrsResourceTagSets = lens _lrsResourceTagSets (\ s a -> s{_lrsResourceTagSets = a});
