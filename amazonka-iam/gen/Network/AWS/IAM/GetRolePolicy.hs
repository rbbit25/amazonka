{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IAM.GetRolePolicy
-- Copyright   : (c) 2013-2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the specified inline policy document that is embedded with the
-- specified role.
--
-- A role can also have managed policies attached to it. To retrieve a
-- managed policy document that is attached to a role, use GetPolicy to
-- determine the policy\'s default version, then use GetPolicyVersion to
-- retrieve the policy document.
--
-- For more information about policies, refer to
-- <http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html Managed Policies and Inline Policies>
-- in the /Using IAM/ guide.
--
-- For more information about roles, go to
-- <http://docs.aws.amazon.com/IAM/latest/UserGuide/roles-toplevel.html Using Roles to Delegate Permissions and Federate Identities>.
--
-- <http://docs.aws.amazon.com/IAM/latest/APIReference/API_GetRolePolicy.html>
module Network.AWS.IAM.GetRolePolicy
    (
    -- * Request
      GetRolePolicy
    -- ** Request constructor
    , getRolePolicy
    -- ** Request lenses
    , grprqRoleName
    , grprqPolicyName

    -- * Response
    , GetRolePolicyResponse
    -- ** Response constructor
    , getRolePolicyResponse
    -- ** Response lenses
    , grprsStatus
    , grprsRoleName
    , grprsPolicyName
    , grprsPolicyDocument
    ) where

import           Network.AWS.IAM.Types
import           Network.AWS.Prelude
import           Network.AWS.Request
import           Network.AWS.Response

-- | /See:/ 'getRolePolicy' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'grprqRoleName'
--
-- * 'grprqPolicyName'
data GetRolePolicy = GetRolePolicy'
    { _grprqRoleName   :: !Text
    , _grprqPolicyName :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | 'GetRolePolicy' smart constructor.
getRolePolicy :: Text -> Text -> GetRolePolicy
getRolePolicy pRoleName pPolicyName =
    GetRolePolicy'
    { _grprqRoleName = pRoleName
    , _grprqPolicyName = pPolicyName
    }

-- | The name of the role associated with the policy.
grprqRoleName :: Lens' GetRolePolicy Text
grprqRoleName = lens _grprqRoleName (\ s a -> s{_grprqRoleName = a});

-- | The name of the policy document to get.
grprqPolicyName :: Lens' GetRolePolicy Text
grprqPolicyName = lens _grprqPolicyName (\ s a -> s{_grprqPolicyName = a});

instance AWSRequest GetRolePolicy where
        type Sv GetRolePolicy = IAM
        type Rs GetRolePolicy = GetRolePolicyResponse
        request = post
        response
          = receiveXMLWrapper "GetRolePolicyResult"
              (\ s h x ->
                 GetRolePolicyResponse' <$>
                   (pure (fromEnum s)) <*> (x .@ "RoleName") <*>
                     (x .@ "PolicyName")
                     <*> (x .@ "PolicyDocument"))

instance ToHeaders GetRolePolicy where
        toHeaders = const mempty

instance ToPath GetRolePolicy where
        toPath = const "/"

instance ToQuery GetRolePolicy where
        toQuery GetRolePolicy'{..}
          = mconcat
              ["Action" =: ("GetRolePolicy" :: ByteString),
               "Version" =: ("2010-05-08" :: ByteString),
               "RoleName" =: _grprqRoleName,
               "PolicyName" =: _grprqPolicyName]

-- | Contains the response to a successful GetRolePolicy request.
--
-- /See:/ 'getRolePolicyResponse' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'grprsStatus'
--
-- * 'grprsRoleName'
--
-- * 'grprsPolicyName'
--
-- * 'grprsPolicyDocument'
data GetRolePolicyResponse = GetRolePolicyResponse'
    { _grprsStatus         :: !Int
    , _grprsRoleName       :: !Text
    , _grprsPolicyName     :: !Text
    , _grprsPolicyDocument :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | 'GetRolePolicyResponse' smart constructor.
getRolePolicyResponse :: Int -> Text -> Text -> Text -> GetRolePolicyResponse
getRolePolicyResponse pStatus pRoleName pPolicyName pPolicyDocument =
    GetRolePolicyResponse'
    { _grprsStatus = pStatus
    , _grprsRoleName = pRoleName
    , _grprsPolicyName = pPolicyName
    , _grprsPolicyDocument = pPolicyDocument
    }

-- | FIXME: Undocumented member.
grprsStatus :: Lens' GetRolePolicyResponse Int
grprsStatus = lens _grprsStatus (\ s a -> s{_grprsStatus = a});

-- | The role the policy is associated with.
grprsRoleName :: Lens' GetRolePolicyResponse Text
grprsRoleName = lens _grprsRoleName (\ s a -> s{_grprsRoleName = a});

-- | The name of the policy.
grprsPolicyName :: Lens' GetRolePolicyResponse Text
grprsPolicyName = lens _grprsPolicyName (\ s a -> s{_grprsPolicyName = a});

-- | The policy document.
grprsPolicyDocument :: Lens' GetRolePolicyResponse Text
grprsPolicyDocument = lens _grprsPolicyDocument (\ s a -> s{_grprsPolicyDocument = a});
