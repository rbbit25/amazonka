{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Redshift.DescribeClusterParameters
-- Copyright   : (c) 2013-2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)
--
-- Returns a detailed list of parameters contained within the specified
-- Amazon Redshift parameter group. For each parameter the response
-- includes information such as parameter name, description, data type,
-- value, whether the parameter value is modifiable, and so on.
--
-- You can specify /source/ filter to retrieve parameters of only specific
-- type. For example, to retrieve parameters that were modified by a user
-- action such as from ModifyClusterParameterGroup, you can specify
-- /source/ equal to /user/.
--
-- For more information about parameters and parameter groups, go to
-- <http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html Amazon Redshift Parameter Groups>
-- in the /Amazon Redshift Cluster Management Guide/.
--
-- <http://docs.aws.amazon.com/redshift/latest/APIReference/API_DescribeClusterParameters.html>
module Network.AWS.Redshift.DescribeClusterParameters
    (
    -- * Request
      DescribeClusterParameters
    -- ** Request constructor
    , describeClusterParameters
    -- ** Request lenses
    , dcprqMaxRecords
    , dcprqMarker
    , dcprqSource
    , dcprqParameterGroupName

    -- * Response
    , DescribeClusterParametersResponse
    -- ** Response constructor
    , describeClusterParametersResponse
    -- ** Response lenses
    , dcprsParameters
    , dcprsMarker
    , dcprsStatus
    ) where

import           Network.AWS.Pager
import           Network.AWS.Prelude
import           Network.AWS.Redshift.Types
import           Network.AWS.Request
import           Network.AWS.Response

-- | /See:/ 'describeClusterParameters' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'dcprqMaxRecords'
--
-- * 'dcprqMarker'
--
-- * 'dcprqSource'
--
-- * 'dcprqParameterGroupName'
data DescribeClusterParameters = DescribeClusterParameters'
    { _dcprqMaxRecords         :: !(Maybe Int)
    , _dcprqMarker             :: !(Maybe Text)
    , _dcprqSource             :: !(Maybe Text)
    , _dcprqParameterGroupName :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | 'DescribeClusterParameters' smart constructor.
describeClusterParameters :: Text -> DescribeClusterParameters
describeClusterParameters pParameterGroupName =
    DescribeClusterParameters'
    { _dcprqMaxRecords = Nothing
    , _dcprqMarker = Nothing
    , _dcprqSource = Nothing
    , _dcprqParameterGroupName = pParameterGroupName
    }

-- | The maximum number of response records to return in each call. If the
-- number of remaining response records exceeds the specified @MaxRecords@
-- value, a value is returned in a @marker@ field of the response. You can
-- retrieve the next set of records by retrying the command with the
-- returned marker value.
--
-- Default: @100@
--
-- Constraints: minimum 20, maximum 100.
dcprqMaxRecords :: Lens' DescribeClusterParameters (Maybe Int)
dcprqMaxRecords = lens _dcprqMaxRecords (\ s a -> s{_dcprqMaxRecords = a});

-- | An optional parameter that specifies the starting point to return a set
-- of response records. When the results of a DescribeClusterParameters
-- request exceed the value specified in @MaxRecords@, AWS returns a value
-- in the @Marker@ field of the response. You can retrieve the next set of
-- response records by providing the returned marker value in the @Marker@
-- parameter and retrying the request.
dcprqMarker :: Lens' DescribeClusterParameters (Maybe Text)
dcprqMarker = lens _dcprqMarker (\ s a -> s{_dcprqMarker = a});

-- | The parameter types to return. Specify @user@ to show parameters that
-- are different form the default. Similarly, specify @engine-default@ to
-- show parameters that are the same as the default parameter group.
--
-- Default: All parameter types returned.
--
-- Valid Values: @user@ | @engine-default@
dcprqSource :: Lens' DescribeClusterParameters (Maybe Text)
dcprqSource = lens _dcprqSource (\ s a -> s{_dcprqSource = a});

-- | The name of a cluster parameter group for which to return details.
dcprqParameterGroupName :: Lens' DescribeClusterParameters Text
dcprqParameterGroupName = lens _dcprqParameterGroupName (\ s a -> s{_dcprqParameterGroupName = a});

instance AWSPager DescribeClusterParameters where
        page rq rs
          | stop (rs ^. dcprsMarker) = Nothing
          | stop (rs ^. dcprsParameters) = Nothing
          | otherwise =
            Just $ rq & dcprqMarker .~ rs ^. dcprsMarker

instance AWSRequest DescribeClusterParameters where
        type Sv DescribeClusterParameters = Redshift
        type Rs DescribeClusterParameters =
             DescribeClusterParametersResponse
        request = post
        response
          = receiveXMLWrapper "DescribeClusterParametersResult"
              (\ s h x ->
                 DescribeClusterParametersResponse' <$>
                   (x .@? "Parameters" .!@ mempty >>=
                      may (parseXMLList "Parameter"))
                     <*> (x .@? "Marker")
                     <*> (pure (fromEnum s)))

instance ToHeaders DescribeClusterParameters where
        toHeaders = const mempty

instance ToPath DescribeClusterParameters where
        toPath = const "/"

instance ToQuery DescribeClusterParameters where
        toQuery DescribeClusterParameters'{..}
          = mconcat
              ["Action" =:
                 ("DescribeClusterParameters" :: ByteString),
               "Version" =: ("2012-12-01" :: ByteString),
               "MaxRecords" =: _dcprqMaxRecords,
               "Marker" =: _dcprqMarker, "Source" =: _dcprqSource,
               "ParameterGroupName" =: _dcprqParameterGroupName]

-- | Contains the output from the DescribeClusterParameters action.
--
-- /See:/ 'describeClusterParametersResponse' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'dcprsParameters'
--
-- * 'dcprsMarker'
--
-- * 'dcprsStatus'
data DescribeClusterParametersResponse = DescribeClusterParametersResponse'
    { _dcprsParameters :: !(Maybe [Parameter])
    , _dcprsMarker     :: !(Maybe Text)
    , _dcprsStatus     :: !Int
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | 'DescribeClusterParametersResponse' smart constructor.
describeClusterParametersResponse :: Int -> DescribeClusterParametersResponse
describeClusterParametersResponse pStatus =
    DescribeClusterParametersResponse'
    { _dcprsParameters = Nothing
    , _dcprsMarker = Nothing
    , _dcprsStatus = pStatus
    }

-- | A list of Parameter instances. Each instance lists the parameters of one
-- cluster parameter group.
dcprsParameters :: Lens' DescribeClusterParametersResponse [Parameter]
dcprsParameters = lens _dcprsParameters (\ s a -> s{_dcprsParameters = a}) . _Default;

-- | A value that indicates the starting point for the next set of response
-- records in a subsequent request. If a value is returned in a response,
-- you can retrieve the next set of records by providing this returned
-- marker value in the @Marker@ parameter and retrying the command. If the
-- @Marker@ field is empty, all response records have been retrieved for
-- the request.
dcprsMarker :: Lens' DescribeClusterParametersResponse (Maybe Text)
dcprsMarker = lens _dcprsMarker (\ s a -> s{_dcprsMarker = a});

-- | FIXME: Undocumented member.
dcprsStatus :: Lens' DescribeClusterParametersResponse Int
dcprsStatus = lens _dcprsStatus (\ s a -> s{_dcprsStatus = a});
