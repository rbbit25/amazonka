{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CognitoIdentity.ListIdentities
-- Copyright   : (c) 2013-2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)
--
-- Lists the identities in a pool.
--
-- You must use AWS Developer credentials to call this API.
--
-- <http://docs.aws.amazon.com/cognitoidentity/latest/APIReference/API_ListIdentities.html>
module Network.AWS.CognitoIdentity.ListIdentities
    (
    -- * Request
      ListIdentities
    -- ** Request constructor
    , listIdentities
    -- ** Request lenses
    , lirqHideDisabled
    , lirqNextToken
    , lirqIdentityPoolId
    , lirqMaxResults

    -- * Response
    , ListIdentitiesResponse
    -- ** Response constructor
    , listIdentitiesResponse
    -- ** Response lenses
    , lirsIdentityPoolId
    , lirsNextToken
    , lirsIdentities
    , lirsStatus
    ) where

import           Network.AWS.CognitoIdentity.Types
import           Network.AWS.Prelude
import           Network.AWS.Request
import           Network.AWS.Response

-- | Input to the ListIdentities action.
--
-- /See:/ 'listIdentities' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'lirqHideDisabled'
--
-- * 'lirqNextToken'
--
-- * 'lirqIdentityPoolId'
--
-- * 'lirqMaxResults'
data ListIdentities = ListIdentities'
    { _lirqHideDisabled   :: !(Maybe Bool)
    , _lirqNextToken      :: !(Maybe Text)
    , _lirqIdentityPoolId :: !Text
    , _lirqMaxResults     :: !Nat
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | 'ListIdentities' smart constructor.
listIdentities :: Text -> Natural -> ListIdentities
listIdentities pIdentityPoolId pMaxResults =
    ListIdentities'
    { _lirqHideDisabled = Nothing
    , _lirqNextToken = Nothing
    , _lirqIdentityPoolId = pIdentityPoolId
    , _lirqMaxResults = _Nat # pMaxResults
    }

-- | An optional boolean parameter that allows you to hide disabled
-- identities. If omitted, the ListIdentities API will include disabled
-- identities in the response.
lirqHideDisabled :: Lens' ListIdentities (Maybe Bool)
lirqHideDisabled = lens _lirqHideDisabled (\ s a -> s{_lirqHideDisabled = a});

-- | A pagination token.
lirqNextToken :: Lens' ListIdentities (Maybe Text)
lirqNextToken = lens _lirqNextToken (\ s a -> s{_lirqNextToken = a});

-- | An identity pool ID in the format REGION:GUID.
lirqIdentityPoolId :: Lens' ListIdentities Text
lirqIdentityPoolId = lens _lirqIdentityPoolId (\ s a -> s{_lirqIdentityPoolId = a});

-- | The maximum number of identities to return.
lirqMaxResults :: Lens' ListIdentities Natural
lirqMaxResults = lens _lirqMaxResults (\ s a -> s{_lirqMaxResults = a}) . _Nat;

instance AWSRequest ListIdentities where
        type Sv ListIdentities = CognitoIdentity
        type Rs ListIdentities = ListIdentitiesResponse
        request = postJSON
        response
          = receiveJSON
              (\ s h x ->
                 ListIdentitiesResponse' <$>
                   (x .?> "IdentityPoolId") <*> (x .?> "NextToken") <*>
                     (x .?> "Identities" .!@ mempty)
                     <*> (pure (fromEnum s)))

instance ToHeaders ListIdentities where
        toHeaders
          = const
              (mconcat
                 ["X-Amz-Target" =#
                    ("AWSCognitoIdentityService.ListIdentities" ::
                       ByteString),
                  "Content-Type" =#
                    ("application/x-amz-json-1.1" :: ByteString)])

instance ToJSON ListIdentities where
        toJSON ListIdentities'{..}
          = object
              ["HideDisabled" .= _lirqHideDisabled,
               "NextToken" .= _lirqNextToken,
               "IdentityPoolId" .= _lirqIdentityPoolId,
               "MaxResults" .= _lirqMaxResults]

instance ToPath ListIdentities where
        toPath = const "/"

instance ToQuery ListIdentities where
        toQuery = const mempty

-- | The response to a ListIdentities request.
--
-- /See:/ 'listIdentitiesResponse' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'lirsIdentityPoolId'
--
-- * 'lirsNextToken'
--
-- * 'lirsIdentities'
--
-- * 'lirsStatus'
data ListIdentitiesResponse = ListIdentitiesResponse'
    { _lirsIdentityPoolId :: !(Maybe Text)
    , _lirsNextToken      :: !(Maybe Text)
    , _lirsIdentities     :: !(Maybe [IdentityDescription])
    , _lirsStatus         :: !Int
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | 'ListIdentitiesResponse' smart constructor.
listIdentitiesResponse :: Int -> ListIdentitiesResponse
listIdentitiesResponse pStatus =
    ListIdentitiesResponse'
    { _lirsIdentityPoolId = Nothing
    , _lirsNextToken = Nothing
    , _lirsIdentities = Nothing
    , _lirsStatus = pStatus
    }

-- | An identity pool ID in the format REGION:GUID.
lirsIdentityPoolId :: Lens' ListIdentitiesResponse (Maybe Text)
lirsIdentityPoolId = lens _lirsIdentityPoolId (\ s a -> s{_lirsIdentityPoolId = a});

-- | A pagination token.
lirsNextToken :: Lens' ListIdentitiesResponse (Maybe Text)
lirsNextToken = lens _lirsNextToken (\ s a -> s{_lirsNextToken = a});

-- | An object containing a set of identities and associated mappings.
lirsIdentities :: Lens' ListIdentitiesResponse [IdentityDescription]
lirsIdentities = lens _lirsIdentities (\ s a -> s{_lirsIdentities = a}) . _Default;

-- | FIXME: Undocumented member.
lirsStatus :: Lens' ListIdentitiesResponse Int
lirsStatus = lens _lirsStatus (\ s a -> s{_lirsStatus = a});
