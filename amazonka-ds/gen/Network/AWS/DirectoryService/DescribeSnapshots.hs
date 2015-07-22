{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DirectoryService.DescribeSnapshots
-- Copyright   : (c) 2013-2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)
--
-- Obtains information about the directory snapshots that belong to this
-- account.
--
-- This operation supports pagination with the use of the /NextToken/
-- request and response parameters. If more results are available, the
-- /DescribeSnapshots.NextToken/ member contains a token that you pass in
-- the next call to DescribeSnapshots to retrieve the next set of items.
--
-- You can also specify a maximum number of return results with the /Limit/
-- parameter.
--
-- <http://docs.aws.amazon.com/directoryservice/latest/devguide/API_DescribeSnapshots.html>
module Network.AWS.DirectoryService.DescribeSnapshots
    (
    -- * Request
      DescribeSnapshots
    -- ** Request constructor
    , describeSnapshots
    -- ** Request lenses
    , dsrqDirectoryId
    , dsrqNextToken
    , dsrqSnapshotIds
    , dsrqLimit

    -- * Response
    , DescribeSnapshotsResponse
    -- ** Response constructor
    , describeSnapshotsResponse
    -- ** Response lenses
    , dsrsNextToken
    , dsrsSnapshots
    , dsrsStatus
    ) where

import           Network.AWS.DirectoryService.Types
import           Network.AWS.Prelude
import           Network.AWS.Request
import           Network.AWS.Response

-- | Contains the inputs for the DescribeSnapshots operation.
--
-- /See:/ 'describeSnapshots' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'dsrqDirectoryId'
--
-- * 'dsrqNextToken'
--
-- * 'dsrqSnapshotIds'
--
-- * 'dsrqLimit'
data DescribeSnapshots = DescribeSnapshots'
    { _dsrqDirectoryId :: !(Maybe Text)
    , _dsrqNextToken   :: !(Maybe Text)
    , _dsrqSnapshotIds :: !(Maybe [Text])
    , _dsrqLimit       :: !(Maybe Nat)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | 'DescribeSnapshots' smart constructor.
describeSnapshots :: DescribeSnapshots
describeSnapshots =
    DescribeSnapshots'
    { _dsrqDirectoryId = Nothing
    , _dsrqNextToken = Nothing
    , _dsrqSnapshotIds = Nothing
    , _dsrqLimit = Nothing
    }

-- | The identifier of the directory to retrieve snapshot information for.
dsrqDirectoryId :: Lens' DescribeSnapshots (Maybe Text)
dsrqDirectoryId = lens _dsrqDirectoryId (\ s a -> s{_dsrqDirectoryId = a});

-- | The /DescribeSnapshotsResult.NextToken/ value from a previous call to
-- DescribeSnapshots. Pass null if this is the first call.
dsrqNextToken :: Lens' DescribeSnapshots (Maybe Text)
dsrqNextToken = lens _dsrqNextToken (\ s a -> s{_dsrqNextToken = a});

-- | A list of identifiers of the snapshots to obtain the information for. If
-- this member is null or empty, all snapshots are returned using the
-- /Limit/ and /NextToken/ members.
dsrqSnapshotIds :: Lens' DescribeSnapshots [Text]
dsrqSnapshotIds = lens _dsrqSnapshotIds (\ s a -> s{_dsrqSnapshotIds = a}) . _Default;

-- | The maximum number of objects to return.
dsrqLimit :: Lens' DescribeSnapshots (Maybe Natural)
dsrqLimit = lens _dsrqLimit (\ s a -> s{_dsrqLimit = a}) . mapping _Nat;

instance AWSRequest DescribeSnapshots where
        type Sv DescribeSnapshots = DirectoryService
        type Rs DescribeSnapshots = DescribeSnapshotsResponse
        request = postJSON
        response
          = receiveJSON
              (\ s h x ->
                 DescribeSnapshotsResponse' <$>
                   (x .?> "NextToken") <*>
                     (x .?> "Snapshots" .!@ mempty)
                     <*> (pure (fromEnum s)))

instance ToHeaders DescribeSnapshots where
        toHeaders
          = const
              (mconcat
                 ["X-Amz-Target" =#
                    ("DirectoryService_20150416.DescribeSnapshots" ::
                       ByteString),
                  "Content-Type" =#
                    ("application/x-amz-json-1.1" :: ByteString)])

instance ToJSON DescribeSnapshots where
        toJSON DescribeSnapshots'{..}
          = object
              ["DirectoryId" .= _dsrqDirectoryId,
               "NextToken" .= _dsrqNextToken,
               "SnapshotIds" .= _dsrqSnapshotIds,
               "Limit" .= _dsrqLimit]

instance ToPath DescribeSnapshots where
        toPath = const "/"

instance ToQuery DescribeSnapshots where
        toQuery = const mempty

-- | Contains the results of the DescribeSnapshots operation.
--
-- /See:/ 'describeSnapshotsResponse' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'dsrsNextToken'
--
-- * 'dsrsSnapshots'
--
-- * 'dsrsStatus'
data DescribeSnapshotsResponse = DescribeSnapshotsResponse'
    { _dsrsNextToken :: !(Maybe Text)
    , _dsrsSnapshots :: !(Maybe [Snapshot])
    , _dsrsStatus    :: !Int
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | 'DescribeSnapshotsResponse' smart constructor.
describeSnapshotsResponse :: Int -> DescribeSnapshotsResponse
describeSnapshotsResponse pStatus =
    DescribeSnapshotsResponse'
    { _dsrsNextToken = Nothing
    , _dsrsSnapshots = Nothing
    , _dsrsStatus = pStatus
    }

-- | If not null, more results are available. Pass this value in the
-- /NextToken/ member of a subsequent call to DescribeSnapshots.
dsrsNextToken :: Lens' DescribeSnapshotsResponse (Maybe Text)
dsrsNextToken = lens _dsrsNextToken (\ s a -> s{_dsrsNextToken = a});

-- | The list of Snapshot objects that were retrieved.
--
-- It is possible that this list contains less than the number of items
-- specified in the /Limit/ member of the request. This occurs if there are
-- less than the requested number of items left to retrieve, or if the
-- limitations of the operation have been exceeded.
dsrsSnapshots :: Lens' DescribeSnapshotsResponse [Snapshot]
dsrsSnapshots = lens _dsrsSnapshots (\ s a -> s{_dsrsSnapshots = a}) . _Default;

-- | FIXME: Undocumented member.
dsrsStatus :: Lens' DescribeSnapshotsResponse Int
dsrsStatus = lens _dsrsStatus (\ s a -> s{_dsrsStatus = a});
