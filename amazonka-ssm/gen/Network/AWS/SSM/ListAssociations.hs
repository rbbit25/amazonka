{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.ListAssociations
-- Copyright   : (c) 2013-2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)
--
-- Lists the associations for the specified configuration document or
-- instance.
--
-- <http://docs.aws.amazon.com/ssm/latest/APIReference/API_ListAssociations.html>
module Network.AWS.SSM.ListAssociations
    (
    -- * Request
      ListAssociations
    -- ** Request constructor
    , listAssociations
    -- ** Request lenses
    , larqNextToken
    , larqMaxResults
    , larqAssociationFilterList

    -- * Response
    , ListAssociationsResponse
    -- ** Response constructor
    , listAssociationsResponse
    -- ** Response lenses
    , larsNextToken
    , larsAssociations
    , larsStatus
    ) where

import           Network.AWS.Prelude
import           Network.AWS.Request
import           Network.AWS.Response
import           Network.AWS.SSM.Types

-- | /See:/ 'listAssociations' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'larqNextToken'
--
-- * 'larqMaxResults'
--
-- * 'larqAssociationFilterList'
data ListAssociations = ListAssociations'
    { _larqNextToken             :: !(Maybe Text)
    , _larqMaxResults            :: !(Maybe Nat)
    , _larqAssociationFilterList :: !(List1 AssociationFilter)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | 'ListAssociations' smart constructor.
listAssociations :: NonEmpty AssociationFilter -> ListAssociations
listAssociations pAssociationFilterList =
    ListAssociations'
    { _larqNextToken = Nothing
    , _larqMaxResults = Nothing
    , _larqAssociationFilterList = _List1 # pAssociationFilterList
    }

-- | The token for the next set of items to return. (You received this token
-- from a previous call.)
larqNextToken :: Lens' ListAssociations (Maybe Text)
larqNextToken = lens _larqNextToken (\ s a -> s{_larqNextToken = a});

-- | The maximum number of items to return for this call. The call also
-- returns a token that you can specify in a subsequent call to get the
-- next set of results.
larqMaxResults :: Lens' ListAssociations (Maybe Natural)
larqMaxResults = lens _larqMaxResults (\ s a -> s{_larqMaxResults = a}) . mapping _Nat;

-- | One or more filters. Use a filter to return a more specific list of
-- results.
larqAssociationFilterList :: Lens' ListAssociations (NonEmpty AssociationFilter)
larqAssociationFilterList = lens _larqAssociationFilterList (\ s a -> s{_larqAssociationFilterList = a}) . _List1;

instance AWSRequest ListAssociations where
        type Sv ListAssociations = SSM
        type Rs ListAssociations = ListAssociationsResponse
        request = postJSON
        response
          = receiveJSON
              (\ s h x ->
                 ListAssociationsResponse' <$>
                   (x .?> "NextToken") <*>
                     (x .?> "Associations" .!@ mempty)
                     <*> (pure (fromEnum s)))

instance ToHeaders ListAssociations where
        toHeaders
          = const
              (mconcat
                 ["X-Amz-Target" =#
                    ("AmazonSSM.ListAssociations" :: ByteString),
                  "Content-Type" =#
                    ("application/x-amz-json-1.1" :: ByteString)])

instance ToJSON ListAssociations where
        toJSON ListAssociations'{..}
          = object
              ["NextToken" .= _larqNextToken,
               "MaxResults" .= _larqMaxResults,
               "AssociationFilterList" .=
                 _larqAssociationFilterList]

instance ToPath ListAssociations where
        toPath = const "/"

instance ToQuery ListAssociations where
        toQuery = const mempty

-- | /See:/ 'listAssociationsResponse' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'larsNextToken'
--
-- * 'larsAssociations'
--
-- * 'larsStatus'
data ListAssociationsResponse = ListAssociationsResponse'
    { _larsNextToken    :: !(Maybe Text)
    , _larsAssociations :: !(Maybe [Association])
    , _larsStatus       :: !Int
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | 'ListAssociationsResponse' smart constructor.
listAssociationsResponse :: Int -> ListAssociationsResponse
listAssociationsResponse pStatus =
    ListAssociationsResponse'
    { _larsNextToken = Nothing
    , _larsAssociations = Nothing
    , _larsStatus = pStatus
    }

-- | The token to use when requesting the next set of items. If there are no
-- additional items to return, the string is empty.
larsNextToken :: Lens' ListAssociationsResponse (Maybe Text)
larsNextToken = lens _larsNextToken (\ s a -> s{_larsNextToken = a});

-- | The associations.
larsAssociations :: Lens' ListAssociationsResponse [Association]
larsAssociations = lens _larsAssociations (\ s a -> s{_larsAssociations = a}) . _Default;

-- | FIXME: Undocumented member.
larsStatus :: Lens' ListAssociationsResponse Int
larsStatus = lens _larsStatus (\ s a -> s{_larsStatus = a});
