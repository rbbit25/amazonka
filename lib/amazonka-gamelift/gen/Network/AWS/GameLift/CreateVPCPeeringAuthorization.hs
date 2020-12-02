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
-- Module      : Network.AWS.GameLift.CreateVPCPeeringAuthorization
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Requests authorization to create or delete a peer connection between the VPC for your Amazon GameLift fleet and a virtual private cloud (VPC) in your AWS account. VPC peering enables the game servers on your fleet to communicate directly with other AWS resources. Once you've received authorization, call 'CreateVpcPeeringConnection' to establish the peering connection. For more information, see <https://docs.aws.amazon.com/gamelift/latest/developerguide/vpc-peering.html VPC Peering with Amazon GameLift Fleets> .
--
--
-- You can peer with VPCs that are owned by any AWS account you have access to, including the account that you use to manage your Amazon GameLift fleets. You cannot peer with VPCs that are in different Regions.
--
-- To request authorization to create a connection, call this operation from the AWS account with the VPC that you want to peer to your Amazon GameLift fleet. For example, to enable your game servers to retrieve data from a DynamoDB table, use the account that manages that DynamoDB resource. Identify the following values: (1) The ID of the VPC that you want to peer with, and (2) the ID of the AWS account that you use to manage Amazon GameLift. If successful, VPC peering is authorized for the specified VPC.
--
-- To request authorization to delete a connection, call this operation from the AWS account with the VPC that is peered with your Amazon GameLift fleet. Identify the following values: (1) VPC ID that you want to delete the peering connection for, and (2) ID of the AWS account that you use to manage Amazon GameLift.
--
-- The authorization remains valid for 24 hours unless it is canceled by a call to 'DeleteVpcPeeringAuthorization' . You must create or delete the peering connection while the authorization is valid.
--
--     * 'CreateVpcPeeringAuthorization'
--
--     * 'DescribeVpcPeeringAuthorizations'
--
--     * 'DeleteVpcPeeringAuthorization'
--
--     * 'CreateVpcPeeringConnection'
--
--     * 'DescribeVpcPeeringConnections'
--
--     * 'DeleteVpcPeeringConnection'
module Network.AWS.GameLift.CreateVPCPeeringAuthorization
  ( -- * Creating a Request
    createVPCPeeringAuthorization,
    CreateVPCPeeringAuthorization,

    -- * Request Lenses
    cvpaGameLiftAWSAccountId,
    cvpaPeerVPCId,

    -- * Destructuring the Response
    createVPCPeeringAuthorizationResponse,
    CreateVPCPeeringAuthorizationResponse,

    -- * Response Lenses
    cvparsVPCPeeringAuthorization,
    cvparsResponseStatus,
  )
where

import Network.AWS.GameLift.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents the input for a request operation.
--
--
--
-- /See:/ 'createVPCPeeringAuthorization' smart constructor.
data CreateVPCPeeringAuthorization = CreateVPCPeeringAuthorization'
  { _cvpaGameLiftAWSAccountId ::
      !Text,
    _cvpaPeerVPCId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateVPCPeeringAuthorization' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cvpaGameLiftAWSAccountId' - A unique identifier for the AWS account that you use to manage your Amazon GameLift fleet. You can find your Account ID in the AWS Management Console under account settings.
--
-- * 'cvpaPeerVPCId' - A unique identifier for a VPC with resources to be accessed by your Amazon GameLift fleet. The VPC must be in the same Region where your fleet is deployed. Look up a VPC ID using the <https://console.aws.amazon.com/vpc/ VPC Dashboard> in the AWS Management Console. Learn more about VPC peering in <https://docs.aws.amazon.com/gamelift/latest/developerguide/vpc-peering.html VPC Peering with Amazon GameLift Fleets> .
createVPCPeeringAuthorization ::
  -- | 'cvpaGameLiftAWSAccountId'
  Text ->
  -- | 'cvpaPeerVPCId'
  Text ->
  CreateVPCPeeringAuthorization
createVPCPeeringAuthorization pGameLiftAWSAccountId_ pPeerVPCId_ =
  CreateVPCPeeringAuthorization'
    { _cvpaGameLiftAWSAccountId =
        pGameLiftAWSAccountId_,
      _cvpaPeerVPCId = pPeerVPCId_
    }

-- | A unique identifier for the AWS account that you use to manage your Amazon GameLift fleet. You can find your Account ID in the AWS Management Console under account settings.
cvpaGameLiftAWSAccountId :: Lens' CreateVPCPeeringAuthorization Text
cvpaGameLiftAWSAccountId = lens _cvpaGameLiftAWSAccountId (\s a -> s {_cvpaGameLiftAWSAccountId = a})

-- | A unique identifier for a VPC with resources to be accessed by your Amazon GameLift fleet. The VPC must be in the same Region where your fleet is deployed. Look up a VPC ID using the <https://console.aws.amazon.com/vpc/ VPC Dashboard> in the AWS Management Console. Learn more about VPC peering in <https://docs.aws.amazon.com/gamelift/latest/developerguide/vpc-peering.html VPC Peering with Amazon GameLift Fleets> .
cvpaPeerVPCId :: Lens' CreateVPCPeeringAuthorization Text
cvpaPeerVPCId = lens _cvpaPeerVPCId (\s a -> s {_cvpaPeerVPCId = a})

instance AWSRequest CreateVPCPeeringAuthorization where
  type
    Rs CreateVPCPeeringAuthorization =
      CreateVPCPeeringAuthorizationResponse
  request = postJSON gameLift
  response =
    receiveJSON
      ( \s h x ->
          CreateVPCPeeringAuthorizationResponse'
            <$> (x .?> "VpcPeeringAuthorization") <*> (pure (fromEnum s))
      )

instance Hashable CreateVPCPeeringAuthorization

instance NFData CreateVPCPeeringAuthorization

instance ToHeaders CreateVPCPeeringAuthorization where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("GameLift.CreateVpcPeeringAuthorization" :: ByteString),
            "Content-Type" =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateVPCPeeringAuthorization where
  toJSON CreateVPCPeeringAuthorization' {..} =
    object
      ( catMaybes
          [ Just ("GameLiftAwsAccountId" .= _cvpaGameLiftAWSAccountId),
            Just ("PeerVpcId" .= _cvpaPeerVPCId)
          ]
      )

instance ToPath CreateVPCPeeringAuthorization where
  toPath = const "/"

instance ToQuery CreateVPCPeeringAuthorization where
  toQuery = const mempty

-- | Represents the returned data in response to a request operation.
--
--
--
-- /See:/ 'createVPCPeeringAuthorizationResponse' smart constructor.
data CreateVPCPeeringAuthorizationResponse = CreateVPCPeeringAuthorizationResponse'
  { _cvparsVPCPeeringAuthorization ::
      !( Maybe
           VPCPeeringAuthorization
       ),
    _cvparsResponseStatus ::
      !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateVPCPeeringAuthorizationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cvparsVPCPeeringAuthorization' - Details on the requested VPC peering authorization, including expiration.
--
-- * 'cvparsResponseStatus' - -- | The response status code.
createVPCPeeringAuthorizationResponse ::
  -- | 'cvparsResponseStatus'
  Int ->
  CreateVPCPeeringAuthorizationResponse
createVPCPeeringAuthorizationResponse pResponseStatus_ =
  CreateVPCPeeringAuthorizationResponse'
    { _cvparsVPCPeeringAuthorization =
        Nothing,
      _cvparsResponseStatus = pResponseStatus_
    }

-- | Details on the requested VPC peering authorization, including expiration.
cvparsVPCPeeringAuthorization :: Lens' CreateVPCPeeringAuthorizationResponse (Maybe VPCPeeringAuthorization)
cvparsVPCPeeringAuthorization = lens _cvparsVPCPeeringAuthorization (\s a -> s {_cvparsVPCPeeringAuthorization = a})

-- | -- | The response status code.
cvparsResponseStatus :: Lens' CreateVPCPeeringAuthorizationResponse Int
cvparsResponseStatus = lens _cvparsResponseStatus (\s a -> s {_cvparsResponseStatus = a})

instance NFData CreateVPCPeeringAuthorizationResponse
