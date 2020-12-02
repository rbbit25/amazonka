{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IAM.CreateServiceLinkedRole
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an IAM role that is linked to a specific AWS service. The service controls the attached policies and when the role can be deleted. This helps ensure that the service is not broken by an unexpectedly changed or deleted role, which could put your AWS resources into an unknown state. Allowing the service to control the role helps improve service stability and proper cleanup when a service and its role are no longer needed. For more information, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/using-service-linked-roles.html Using Service-Linked Roles> in the /IAM User Guide/ .
--
--
-- To attach a policy to this service-linked role, you must make the request using the AWS service that depends on this role.
module Network.AWS.IAM.CreateServiceLinkedRole
  ( -- * Creating a Request
    createServiceLinkedRole,
    CreateServiceLinkedRole,

    -- * Request Lenses
    cslrCustomSuffix,
    cslrDescription,
    cslrAWSServiceName,

    -- * Destructuring the Response
    createServiceLinkedRoleResponse,
    CreateServiceLinkedRoleResponse,

    -- * Response Lenses
    cslrrsRole,
    cslrrsResponseStatus,
  )
where

import Network.AWS.IAM.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createServiceLinkedRole' smart constructor.
data CreateServiceLinkedRole = CreateServiceLinkedRole'
  { _cslrCustomSuffix ::
      !(Maybe Text),
    _cslrDescription :: !(Maybe Text),
    _cslrAWSServiceName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateServiceLinkedRole' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cslrCustomSuffix' -  A string that you provide, which is combined with the service-provided prefix to form the complete role name. If you make multiple requests for the same service, then you must supply a different @CustomSuffix@ for each request. Otherwise the request fails with a duplicate role name error. For example, you could add @-1@ or @-debug@ to the suffix. Some services do not support the @CustomSuffix@ parameter. If you provide an optional suffix and the operation fails, try the operation again without the suffix.
--
-- * 'cslrDescription' - The description of the role.
--
-- * 'cslrAWSServiceName' - The service principal for the AWS service to which this role is attached. You use a string similar to a URL but without the http:// in front. For example: @elasticbeanstalk.amazonaws.com@ .  Service principals are unique and case-sensitive. To find the exact service principal for your service-linked role, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-services-that-work-with-iam.html AWS Services That Work with IAM> in the /IAM User Guide/ . Look for the services that have __Yes __ in the __Service-Linked Role__ column. Choose the __Yes__ link to view the service-linked role documentation for that service.
createServiceLinkedRole ::
  -- | 'cslrAWSServiceName'
  Text ->
  CreateServiceLinkedRole
createServiceLinkedRole pAWSServiceName_ =
  CreateServiceLinkedRole'
    { _cslrCustomSuffix = Nothing,
      _cslrDescription = Nothing,
      _cslrAWSServiceName = pAWSServiceName_
    }

-- |  A string that you provide, which is combined with the service-provided prefix to form the complete role name. If you make multiple requests for the same service, then you must supply a different @CustomSuffix@ for each request. Otherwise the request fails with a duplicate role name error. For example, you could add @-1@ or @-debug@ to the suffix. Some services do not support the @CustomSuffix@ parameter. If you provide an optional suffix and the operation fails, try the operation again without the suffix.
cslrCustomSuffix :: Lens' CreateServiceLinkedRole (Maybe Text)
cslrCustomSuffix = lens _cslrCustomSuffix (\s a -> s {_cslrCustomSuffix = a})

-- | The description of the role.
cslrDescription :: Lens' CreateServiceLinkedRole (Maybe Text)
cslrDescription = lens _cslrDescription (\s a -> s {_cslrDescription = a})

-- | The service principal for the AWS service to which this role is attached. You use a string similar to a URL but without the http:// in front. For example: @elasticbeanstalk.amazonaws.com@ .  Service principals are unique and case-sensitive. To find the exact service principal for your service-linked role, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-services-that-work-with-iam.html AWS Services That Work with IAM> in the /IAM User Guide/ . Look for the services that have __Yes __ in the __Service-Linked Role__ column. Choose the __Yes__ link to view the service-linked role documentation for that service.
cslrAWSServiceName :: Lens' CreateServiceLinkedRole Text
cslrAWSServiceName = lens _cslrAWSServiceName (\s a -> s {_cslrAWSServiceName = a})

instance AWSRequest CreateServiceLinkedRole where
  type Rs CreateServiceLinkedRole = CreateServiceLinkedRoleResponse
  request = postQuery iam
  response =
    receiveXMLWrapper
      "CreateServiceLinkedRoleResult"
      ( \s h x ->
          CreateServiceLinkedRoleResponse'
            <$> (x .@? "Role") <*> (pure (fromEnum s))
      )

instance Hashable CreateServiceLinkedRole

instance NFData CreateServiceLinkedRole

instance ToHeaders CreateServiceLinkedRole where
  toHeaders = const mempty

instance ToPath CreateServiceLinkedRole where
  toPath = const "/"

instance ToQuery CreateServiceLinkedRole where
  toQuery CreateServiceLinkedRole' {..} =
    mconcat
      [ "Action" =: ("CreateServiceLinkedRole" :: ByteString),
        "Version" =: ("2010-05-08" :: ByteString),
        "CustomSuffix" =: _cslrCustomSuffix,
        "Description" =: _cslrDescription,
        "AWSServiceName" =: _cslrAWSServiceName
      ]

-- | /See:/ 'createServiceLinkedRoleResponse' smart constructor.
data CreateServiceLinkedRoleResponse = CreateServiceLinkedRoleResponse'
  { _cslrrsRole ::
      !(Maybe Role),
    _cslrrsResponseStatus ::
      !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateServiceLinkedRoleResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cslrrsRole' - A 'Role' object that contains details about the newly created role.
--
-- * 'cslrrsResponseStatus' - -- | The response status code.
createServiceLinkedRoleResponse ::
  -- | 'cslrrsResponseStatus'
  Int ->
  CreateServiceLinkedRoleResponse
createServiceLinkedRoleResponse pResponseStatus_ =
  CreateServiceLinkedRoleResponse'
    { _cslrrsRole = Nothing,
      _cslrrsResponseStatus = pResponseStatus_
    }

-- | A 'Role' object that contains details about the newly created role.
cslrrsRole :: Lens' CreateServiceLinkedRoleResponse (Maybe Role)
cslrrsRole = lens _cslrrsRole (\s a -> s {_cslrrsRole = a})

-- | -- | The response status code.
cslrrsResponseStatus :: Lens' CreateServiceLinkedRoleResponse Int
cslrrsResponseStatus = lens _cslrrsResponseStatus (\s a -> s {_cslrrsResponseStatus = a})

instance NFData CreateServiceLinkedRoleResponse
