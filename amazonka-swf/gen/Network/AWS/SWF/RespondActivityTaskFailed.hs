{-# LANGUAGE DataKinds                   #-}
{-# LANGUAGE DeriveGeneric               #-}
{-# LANGUAGE FlexibleInstances           #-}
{-# LANGUAGE GeneralizedNewtypeDeriving  #-}
{-# LANGUAGE LambdaCase                  #-}
{-# LANGUAGE NoImplicitPrelude           #-}
{-# LANGUAGE OverloadedStrings           #-}
{-# LANGUAGE RecordWildCards             #-}
{-# LANGUAGE TypeFamilies                #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Module      : Network.AWS.SWF.RespondActivityTaskFailed
-- Copyright   : (c) 2013-2014 Brendan Hay <brendan.g.hay@gmail.com>
-- License     : This Source Code Form is subject to the terms of
--               the Mozilla Public License, v. 2.0.
--               A copy of the MPL can be found in the LICENSE file or
--               you can obtain it at http://mozilla.org/MPL/2.0/.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)

-- | Used by workers to tell the service that the 'ActivityTask' identified by the 'taskToken' has failed with 'reason' (if specified). The 'reason' and 'details' appear in the 'ActivityTaskFailed' event added to the workflow history.
--
-- A task is considered open from the time that it is scheduled until it is
-- closed. Therefore a task is reported as open while a worker is processing it.
-- A task is closed after it has been specified in a call to 'RespondActivityTaskCompleted', 'RespondActivityTaskCanceled', RespondActivityTaskFailed, or the task has <http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dg-basic.html#swf-dev-timeout-types timed out>.
--
-- Access Control
--
-- You can use IAM policies to control this action's access to Amazon SWF
-- resources as follows:
--
-- Use a 'Resource' element with the domain name to limit the action to only
-- specified domains. Use an 'Action' element to allow or deny permission to call
-- this action. You cannot use an IAM policy to constrain this action's
-- parameters.  If the caller does not have sufficient permissions to invoke the
-- action, or the parameter values fall outside the specified constraints, the
-- action fails by throwing 'OperationNotPermitted'. For details and example IAM
-- policies, see <http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html Using IAM to Manage Access to Amazon SWF Workflows>.
--
-- <http://docs.aws.amazon.com/amazonswf/latest/apireference/API_RespondActivityTaskFailed.html>
module Network.AWS.SWF.RespondActivityTaskFailed
    (
    -- * Request
      RespondActivityTaskFailed
    -- ** Request constructor
    , respondActivityTaskFailed
    -- ** Request lenses
    , ratfDetails
    , ratfReason
    , ratfTaskToken

    -- * Response
    , RespondActivityTaskFailedResponse
    -- ** Response constructor
    , respondActivityTaskFailedResponse
    ) where

import Network.AWS.Prelude
import Network.AWS.Request.JSON
import Network.AWS.SWF.Types
import qualified GHC.Exts

data RespondActivityTaskFailed = RespondActivityTaskFailed
    { _ratfDetails   :: Maybe Text
    , _ratfReason    :: Maybe Text
    , _ratfTaskToken :: Text
    } deriving (Eq, Ord, Show)

-- | 'RespondActivityTaskFailed' constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'ratfDetails' @::@ 'Maybe' 'Text'
--
-- * 'ratfReason' @::@ 'Maybe' 'Text'
--
-- * 'ratfTaskToken' @::@ 'Text'
--
respondActivityTaskFailed :: Text -- ^ 'ratfTaskToken'
                          -> RespondActivityTaskFailed
respondActivityTaskFailed p1 = RespondActivityTaskFailed
    { _ratfTaskToken = p1
    , _ratfReason    = Nothing
    , _ratfDetails   = Nothing
    }

-- | Optional detailed information about the failure.
ratfDetails :: Lens' RespondActivityTaskFailed (Maybe Text)
ratfDetails = lens _ratfDetails (\s a -> s { _ratfDetails = a })

-- | Description of the error that may assist in diagnostics.
ratfReason :: Lens' RespondActivityTaskFailed (Maybe Text)
ratfReason = lens _ratfReason (\s a -> s { _ratfReason = a })

-- | The 'taskToken' of the 'ActivityTask'.
--
-- The 'taskToken' is generated by the service and should be treated as an
-- opaque value. If the task is passed to another process, its 'taskToken' must
-- also be passed. This enables it to provide its progress and respond with
-- results.
ratfTaskToken :: Lens' RespondActivityTaskFailed Text
ratfTaskToken = lens _ratfTaskToken (\s a -> s { _ratfTaskToken = a })

data RespondActivityTaskFailedResponse = RespondActivityTaskFailedResponse
    deriving (Eq, Ord, Show, Generic)

-- | 'RespondActivityTaskFailedResponse' constructor.
respondActivityTaskFailedResponse :: RespondActivityTaskFailedResponse
respondActivityTaskFailedResponse = RespondActivityTaskFailedResponse

instance ToPath RespondActivityTaskFailed where
    toPath = const "/"

instance ToQuery RespondActivityTaskFailed where
    toQuery = const mempty

instance ToHeaders RespondActivityTaskFailed

instance ToJSON RespondActivityTaskFailed where
    toJSON RespondActivityTaskFailed{..} = object
        [ "taskToken" .= _ratfTaskToken
        , "reason"    .= _ratfReason
        , "details"   .= _ratfDetails
        ]

instance AWSRequest RespondActivityTaskFailed where
    type Sv RespondActivityTaskFailed = SWF
    type Rs RespondActivityTaskFailed = RespondActivityTaskFailedResponse

    request  = post "RespondActivityTaskFailed"
    response = nullResponse RespondActivityTaskFailedResponse
