{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeDeploy.DeleteDeploymentGroup
-- Copyright   : (c) 2013-2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)
--
-- Deletes a deployment group.
--
-- <http://docs.aws.amazon.com/codedeploy/latest/APIReference/API_DeleteDeploymentGroup.html>
module Network.AWS.CodeDeploy.DeleteDeploymentGroup
    (
    -- * Request
      DeleteDeploymentGroup
    -- ** Request constructor
    , deleteDeploymentGroup
    -- ** Request lenses
    , ddgrqApplicationName
    , ddgrqDeploymentGroupName

    -- * Response
    , DeleteDeploymentGroupResponse
    -- ** Response constructor
    , deleteDeploymentGroupResponse
    -- ** Response lenses
    , ddgrsHooksNotCleanedUp
    , ddgrsStatus
    ) where

import           Network.AWS.CodeDeploy.Types
import           Network.AWS.Prelude
import           Network.AWS.Request
import           Network.AWS.Response

-- | Represents the input of a delete deployment group operation.
--
-- /See:/ 'deleteDeploymentGroup' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'ddgrqApplicationName'
--
-- * 'ddgrqDeploymentGroupName'
data DeleteDeploymentGroup = DeleteDeploymentGroup'
    { _ddgrqApplicationName     :: !Text
    , _ddgrqDeploymentGroupName :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | 'DeleteDeploymentGroup' smart constructor.
deleteDeploymentGroup :: Text -> Text -> DeleteDeploymentGroup
deleteDeploymentGroup pApplicationName pDeploymentGroupName =
    DeleteDeploymentGroup'
    { _ddgrqApplicationName = pApplicationName
    , _ddgrqDeploymentGroupName = pDeploymentGroupName
    }

-- | The name of an existing AWS CodeDeploy application associated with the
-- applicable IAM user or AWS account.
ddgrqApplicationName :: Lens' DeleteDeploymentGroup Text
ddgrqApplicationName = lens _ddgrqApplicationName (\ s a -> s{_ddgrqApplicationName = a});

-- | The name of an existing deployment group for the specified application.
ddgrqDeploymentGroupName :: Lens' DeleteDeploymentGroup Text
ddgrqDeploymentGroupName = lens _ddgrqDeploymentGroupName (\ s a -> s{_ddgrqDeploymentGroupName = a});

instance AWSRequest DeleteDeploymentGroup where
        type Sv DeleteDeploymentGroup = CodeDeploy
        type Rs DeleteDeploymentGroup =
             DeleteDeploymentGroupResponse
        request = postJSON
        response
          = receiveJSON
              (\ s h x ->
                 DeleteDeploymentGroupResponse' <$>
                   (x .?> "hooksNotCleanedUp" .!@ mempty) <*>
                     (pure (fromEnum s)))

instance ToHeaders DeleteDeploymentGroup where
        toHeaders
          = const
              (mconcat
                 ["X-Amz-Target" =#
                    ("CodeDeploy_20141006.DeleteDeploymentGroup" ::
                       ByteString),
                  "Content-Type" =#
                    ("application/x-amz-json-1.1" :: ByteString)])

instance ToJSON DeleteDeploymentGroup where
        toJSON DeleteDeploymentGroup'{..}
          = object
              ["applicationName" .= _ddgrqApplicationName,
               "deploymentGroupName" .= _ddgrqDeploymentGroupName]

instance ToPath DeleteDeploymentGroup where
        toPath = const "/"

instance ToQuery DeleteDeploymentGroup where
        toQuery = const mempty

-- | Represents the output of a delete deployment group operation.
--
-- /See:/ 'deleteDeploymentGroupResponse' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'ddgrsHooksNotCleanedUp'
--
-- * 'ddgrsStatus'
data DeleteDeploymentGroupResponse = DeleteDeploymentGroupResponse'
    { _ddgrsHooksNotCleanedUp :: !(Maybe [AutoScalingGroup])
    , _ddgrsStatus            :: !Int
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | 'DeleteDeploymentGroupResponse' smart constructor.
deleteDeploymentGroupResponse :: Int -> DeleteDeploymentGroupResponse
deleteDeploymentGroupResponse pStatus =
    DeleteDeploymentGroupResponse'
    { _ddgrsHooksNotCleanedUp = Nothing
    , _ddgrsStatus = pStatus
    }

-- | If the output contains no data, and the corresponding deployment group
-- contained at least one Auto Scaling group, AWS CodeDeploy successfully
-- removed all corresponding Auto Scaling lifecycle event hooks from the
-- Amazon EC2 instances in the Auto Scaling. If the output does contain
-- data, AWS CodeDeploy could not remove some Auto Scaling lifecycle event
-- hooks from the Amazon EC2 instances in the Auto Scaling group.
ddgrsHooksNotCleanedUp :: Lens' DeleteDeploymentGroupResponse [AutoScalingGroup]
ddgrsHooksNotCleanedUp = lens _ddgrsHooksNotCleanedUp (\ s a -> s{_ddgrsHooksNotCleanedUp = a}) . _Default;

-- | FIXME: Undocumented member.
ddgrsStatus :: Lens' DeleteDeploymentGroupResponse Int
ddgrsStatus = lens _ddgrsStatus (\ s a -> s{_ddgrsStatus = a});
