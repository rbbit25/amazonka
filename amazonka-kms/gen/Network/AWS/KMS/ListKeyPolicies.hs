{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.KMS.ListKeyPolicies
-- Copyright   : (c) 2013-2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of policies attached to a key.
--
-- <http://docs.aws.amazon.com/kms/latest/APIReference/API_ListKeyPolicies.html>
module Network.AWS.KMS.ListKeyPolicies
    (
    -- * Request
      ListKeyPolicies
    -- ** Request constructor
    , listKeyPolicies
    -- ** Request lenses
    , lkprqMarker
    , lkprqLimit
    , lkprqKeyId

    -- * Response
    , ListKeyPoliciesResponse
    -- ** Response constructor
    , listKeyPoliciesResponse
    -- ** Response lenses
    , lkprsPolicyNames
    , lkprsTruncated
    , lkprsNextMarker
    , lkprsStatus
    ) where

import           Network.AWS.KMS.Types
import           Network.AWS.Prelude
import           Network.AWS.Request
import           Network.AWS.Response

-- | /See:/ 'listKeyPolicies' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'lkprqMarker'
--
-- * 'lkprqLimit'
--
-- * 'lkprqKeyId'
data ListKeyPolicies = ListKeyPolicies'
    { _lkprqMarker :: !(Maybe Text)
    , _lkprqLimit  :: !(Maybe Nat)
    , _lkprqKeyId  :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | 'ListKeyPolicies' smart constructor.
listKeyPolicies :: Text -> ListKeyPolicies
listKeyPolicies pKeyId =
    ListKeyPolicies'
    { _lkprqMarker = Nothing
    , _lkprqLimit = Nothing
    , _lkprqKeyId = pKeyId
    }

-- | Use this parameter only when paginating results, and only in a
-- subsequent request after you\'ve received a response where the results
-- are truncated. Set it to the value of the @NextMarker@ in the response
-- you just received.
lkprqMarker :: Lens' ListKeyPolicies (Maybe Text)
lkprqMarker = lens _lkprqMarker (\ s a -> s{_lkprqMarker = a});

-- | Specify this parameter only when paginating results to indicate the
-- maximum number of policies you want listed in the response. If there are
-- additional policies beyond the maximum you specify, the @Truncated@
-- response element will be set to @true.@
lkprqLimit :: Lens' ListKeyPolicies (Maybe Natural)
lkprqLimit = lens _lkprqLimit (\ s a -> s{_lkprqLimit = a}) . mapping _Nat;

-- | A unique identifier for the customer master key. This value can be a
-- globally unique identifier, a fully specified ARN to either an alias or
-- a key, or an alias name prefixed by \"alias\/\".
--
-- -   Key ARN Example -
--     arn:aws:kms:us-east-1:123456789012:key\/12345678-1234-1234-1234-123456789012
-- -   Alias ARN Example -
--     arn:aws:kms:us-east-1:123456789012:alias\/MyAliasName
-- -   Globally Unique Key ID Example -
--     12345678-1234-1234-1234-123456789012
-- -   Alias Name Example - alias\/MyAliasName
lkprqKeyId :: Lens' ListKeyPolicies Text
lkprqKeyId = lens _lkprqKeyId (\ s a -> s{_lkprqKeyId = a});

instance AWSRequest ListKeyPolicies where
        type Sv ListKeyPolicies = KMS
        type Rs ListKeyPolicies = ListKeyPoliciesResponse
        request = postJSON
        response
          = receiveJSON
              (\ s h x ->
                 ListKeyPoliciesResponse' <$>
                   (x .?> "PolicyNames" .!@ mempty) <*>
                     (x .?> "Truncated")
                     <*> (x .?> "NextMarker")
                     <*> (pure (fromEnum s)))

instance ToHeaders ListKeyPolicies where
        toHeaders
          = const
              (mconcat
                 ["X-Amz-Target" =#
                    ("TrentService.ListKeyPolicies" :: ByteString),
                  "Content-Type" =#
                    ("application/x-amz-json-1.1" :: ByteString)])

instance ToJSON ListKeyPolicies where
        toJSON ListKeyPolicies'{..}
          = object
              ["Marker" .= _lkprqMarker, "Limit" .= _lkprqLimit,
               "KeyId" .= _lkprqKeyId]

instance ToPath ListKeyPolicies where
        toPath = const "/"

instance ToQuery ListKeyPolicies where
        toQuery = const mempty

-- | /See:/ 'listKeyPoliciesResponse' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'lkprsPolicyNames'
--
-- * 'lkprsTruncated'
--
-- * 'lkprsNextMarker'
--
-- * 'lkprsStatus'
data ListKeyPoliciesResponse = ListKeyPoliciesResponse'
    { _lkprsPolicyNames :: !(Maybe [Text])
    , _lkprsTruncated   :: !(Maybe Bool)
    , _lkprsNextMarker  :: !(Maybe Text)
    , _lkprsStatus      :: !Int
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | 'ListKeyPoliciesResponse' smart constructor.
listKeyPoliciesResponse :: Int -> ListKeyPoliciesResponse
listKeyPoliciesResponse pStatus =
    ListKeyPoliciesResponse'
    { _lkprsPolicyNames = Nothing
    , _lkprsTruncated = Nothing
    , _lkprsNextMarker = Nothing
    , _lkprsStatus = pStatus
    }

-- | A list of policy names. Currently, there is only one policy and it is
-- named \"Default\".
lkprsPolicyNames :: Lens' ListKeyPoliciesResponse [Text]
lkprsPolicyNames = lens _lkprsPolicyNames (\ s a -> s{_lkprsPolicyNames = a}) . _Default;

-- | A flag that indicates whether there are more items in the list. If your
-- results were truncated, you can make a subsequent pagination request
-- using the @Marker@ request parameter to retrieve more policies in the
-- list.
lkprsTruncated :: Lens' ListKeyPoliciesResponse (Maybe Bool)
lkprsTruncated = lens _lkprsTruncated (\ s a -> s{_lkprsTruncated = a});

-- | If @Truncated@ is true, this value is present and contains the value to
-- use for the @Marker@ request parameter in a subsequent pagination
-- request.
lkprsNextMarker :: Lens' ListKeyPoliciesResponse (Maybe Text)
lkprsNextMarker = lens _lkprsNextMarker (\ s a -> s{_lkprsNextMarker = a});

-- | FIXME: Undocumented member.
lkprsStatus :: Lens' ListKeyPoliciesResponse Int
lkprsStatus = lens _lkprsStatus (\ s a -> s{_lkprsStatus = a});
