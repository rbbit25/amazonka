{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.CreateVPCEndpoint
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a VPC endpoint for a specified service. An endpoint enables you to create a private connection between your VPC and the service. The service may be provided by AWS, an AWS Marketplace Partner, or another AWS account. For more information, see <https://docs.aws.amazon.com/vpc/latest/userguide/vpc-endpoints.html VPC Endpoints> in the /Amazon Virtual Private Cloud User Guide/ .
--
-- A @gateway@ endpoint serves as a target for a route in your route table for traffic destined for the AWS service. You can specify an endpoint policy to attach to the endpoint, which will control access to the service from your VPC. You can also specify the VPC route tables that use the endpoint.
-- An @interface@ endpoint is a network interface in your subnet that serves as an endpoint for communicating with the specified service. You can specify the subnets in which to create an endpoint, and the security groups to associate with the endpoint network interface.
-- A @GatewayLoadBalancer@ endpoint is a network interface in your subnet that serves an endpoint for communicating with a Gateway Load Balancer that you've configured as a VPC endpoint service.
-- Use 'DescribeVpcEndpointServices' to get a list of supported services.
module Network.AWS.EC2.CreateVPCEndpoint
  ( -- * Creating a request
    CreateVPCEndpoint (..),
    mkCreateVPCEndpoint,

    -- ** Request lenses
    cvpcePolicyDocument,
    cvpceSecurityGroupIds,
    cvpceClientToken,
    cvpceSubnetIds,
    cvpceVPCEndpointType,
    cvpcePrivateDNSEnabled,
    cvpceTagSpecifications,
    cvpceDryRun,
    cvpceRouteTableIds,
    cvpceVPCId,
    cvpceServiceName,

    -- * Destructuring the response
    CreateVPCEndpointResponse (..),
    mkCreateVPCEndpointResponse,

    -- ** Response lenses
    cversClientToken,
    cversVPCEndpoint,
    cversResponseStatus,
  )
where

import Network.AWS.EC2.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude
import qualified Network.AWS.Request as Req
import qualified Network.AWS.Response as Res

-- | Contains the parameters for CreateVpcEndpoint.
--
-- /See:/ 'mkCreateVPCEndpoint' smart constructor.
data CreateVPCEndpoint = CreateVPCEndpoint'
  { policyDocument ::
      Lude.Maybe Lude.Text,
    securityGroupIds :: Lude.Maybe [Lude.Text],
    clientToken :: Lude.Maybe Lude.Text,
    subnetIds :: Lude.Maybe [Lude.Text],
    vpcEndpointType :: Lude.Maybe VPCEndpointType,
    privateDNSEnabled :: Lude.Maybe Lude.Bool,
    tagSpecifications :: Lude.Maybe [TagSpecification],
    dryRun :: Lude.Maybe Lude.Bool,
    routeTableIds :: Lude.Maybe [Lude.Text],
    vpcId :: Lude.Text,
    serviceName :: Lude.Text
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'CreateVPCEndpoint' with the minimum fields required to make a request.
--
-- * 'clientToken' - Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html How to Ensure Idempotency> .
-- * 'dryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
-- * 'policyDocument' - (Interface and gateway endpoints) A policy to attach to the endpoint that controls access to the service. The policy must be in valid JSON format. If this parameter is not specified, we attach a default policy that allows full access to the service.
-- * 'privateDNSEnabled' - (Interface endpoint) Indicates whether to associate a private hosted zone with the specified VPC. The private hosted zone contains a record set for the default public DNS name for the service for the Region (for example, @kinesis.us-east-1.amazonaws.com@ ), which resolves to the private IP addresses of the endpoint network interfaces in the VPC. This enables you to make requests to the default public DNS name for the service instead of the public DNS names that are automatically generated by the VPC endpoint service.
--
-- To use a private hosted zone, you must set the following VPC attributes to @true@ : @enableDnsHostnames@ and @enableDnsSupport@ . Use 'ModifyVpcAttribute' to set the VPC attributes.
-- Default: @true@
-- * 'routeTableIds' - (Gateway endpoint) One or more route table IDs.
-- * 'securityGroupIds' - (Interface endpoint) The ID of one or more security groups to associate with the endpoint network interface.
-- * 'serviceName' - The service name. To get a list of available services, use the 'DescribeVpcEndpointServices' request, or get the name from the service provider.
-- * 'subnetIds' - (Interface and Gateway Load Balancer endpoints) The ID of one or more subnets in which to create an endpoint network interface. For a Gateway Load Balancer endpoint, you can specify one subnet only.
-- * 'tagSpecifications' - The tags to associate with the endpoint.
-- * 'vpcEndpointType' - The type of endpoint.
--
-- Default: Gateway
-- * 'vpcId' - The ID of the VPC in which the endpoint will be used.
mkCreateVPCEndpoint ::
  -- | 'vpcId'
  Lude.Text ->
  -- | 'serviceName'
  Lude.Text ->
  CreateVPCEndpoint
mkCreateVPCEndpoint pVPCId_ pServiceName_ =
  CreateVPCEndpoint'
    { policyDocument = Lude.Nothing,
      securityGroupIds = Lude.Nothing,
      clientToken = Lude.Nothing,
      subnetIds = Lude.Nothing,
      vpcEndpointType = Lude.Nothing,
      privateDNSEnabled = Lude.Nothing,
      tagSpecifications = Lude.Nothing,
      dryRun = Lude.Nothing,
      routeTableIds = Lude.Nothing,
      vpcId = pVPCId_,
      serviceName = pServiceName_
    }

-- | (Interface and gateway endpoints) A policy to attach to the endpoint that controls access to the service. The policy must be in valid JSON format. If this parameter is not specified, we attach a default policy that allows full access to the service.
--
-- /Note:/ Consider using 'policyDocument' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cvpcePolicyDocument :: Lens.Lens' CreateVPCEndpoint (Lude.Maybe Lude.Text)
cvpcePolicyDocument = Lens.lens (policyDocument :: CreateVPCEndpoint -> Lude.Maybe Lude.Text) (\s a -> s {policyDocument = a} :: CreateVPCEndpoint)
{-# DEPRECATED cvpcePolicyDocument "Use generic-lens or generic-optics with 'policyDocument' instead." #-}

-- | (Interface endpoint) The ID of one or more security groups to associate with the endpoint network interface.
--
-- /Note:/ Consider using 'securityGroupIds' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cvpceSecurityGroupIds :: Lens.Lens' CreateVPCEndpoint (Lude.Maybe [Lude.Text])
cvpceSecurityGroupIds = Lens.lens (securityGroupIds :: CreateVPCEndpoint -> Lude.Maybe [Lude.Text]) (\s a -> s {securityGroupIds = a} :: CreateVPCEndpoint)
{-# DEPRECATED cvpceSecurityGroupIds "Use generic-lens or generic-optics with 'securityGroupIds' instead." #-}

-- | Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html How to Ensure Idempotency> .
--
-- /Note:/ Consider using 'clientToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cvpceClientToken :: Lens.Lens' CreateVPCEndpoint (Lude.Maybe Lude.Text)
cvpceClientToken = Lens.lens (clientToken :: CreateVPCEndpoint -> Lude.Maybe Lude.Text) (\s a -> s {clientToken = a} :: CreateVPCEndpoint)
{-# DEPRECATED cvpceClientToken "Use generic-lens or generic-optics with 'clientToken' instead." #-}

-- | (Interface and Gateway Load Balancer endpoints) The ID of one or more subnets in which to create an endpoint network interface. For a Gateway Load Balancer endpoint, you can specify one subnet only.
--
-- /Note:/ Consider using 'subnetIds' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cvpceSubnetIds :: Lens.Lens' CreateVPCEndpoint (Lude.Maybe [Lude.Text])
cvpceSubnetIds = Lens.lens (subnetIds :: CreateVPCEndpoint -> Lude.Maybe [Lude.Text]) (\s a -> s {subnetIds = a} :: CreateVPCEndpoint)
{-# DEPRECATED cvpceSubnetIds "Use generic-lens or generic-optics with 'subnetIds' instead." #-}

-- | The type of endpoint.
--
-- Default: Gateway
--
-- /Note:/ Consider using 'vpcEndpointType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cvpceVPCEndpointType :: Lens.Lens' CreateVPCEndpoint (Lude.Maybe VPCEndpointType)
cvpceVPCEndpointType = Lens.lens (vpcEndpointType :: CreateVPCEndpoint -> Lude.Maybe VPCEndpointType) (\s a -> s {vpcEndpointType = a} :: CreateVPCEndpoint)
{-# DEPRECATED cvpceVPCEndpointType "Use generic-lens or generic-optics with 'vpcEndpointType' instead." #-}

-- | (Interface endpoint) Indicates whether to associate a private hosted zone with the specified VPC. The private hosted zone contains a record set for the default public DNS name for the service for the Region (for example, @kinesis.us-east-1.amazonaws.com@ ), which resolves to the private IP addresses of the endpoint network interfaces in the VPC. This enables you to make requests to the default public DNS name for the service instead of the public DNS names that are automatically generated by the VPC endpoint service.
--
-- To use a private hosted zone, you must set the following VPC attributes to @true@ : @enableDnsHostnames@ and @enableDnsSupport@ . Use 'ModifyVpcAttribute' to set the VPC attributes.
-- Default: @true@
--
-- /Note:/ Consider using 'privateDNSEnabled' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cvpcePrivateDNSEnabled :: Lens.Lens' CreateVPCEndpoint (Lude.Maybe Lude.Bool)
cvpcePrivateDNSEnabled = Lens.lens (privateDNSEnabled :: CreateVPCEndpoint -> Lude.Maybe Lude.Bool) (\s a -> s {privateDNSEnabled = a} :: CreateVPCEndpoint)
{-# DEPRECATED cvpcePrivateDNSEnabled "Use generic-lens or generic-optics with 'privateDNSEnabled' instead." #-}

-- | The tags to associate with the endpoint.
--
-- /Note:/ Consider using 'tagSpecifications' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cvpceTagSpecifications :: Lens.Lens' CreateVPCEndpoint (Lude.Maybe [TagSpecification])
cvpceTagSpecifications = Lens.lens (tagSpecifications :: CreateVPCEndpoint -> Lude.Maybe [TagSpecification]) (\s a -> s {tagSpecifications = a} :: CreateVPCEndpoint)
{-# DEPRECATED cvpceTagSpecifications "Use generic-lens or generic-optics with 'tagSpecifications' instead." #-}

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- /Note:/ Consider using 'dryRun' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cvpceDryRun :: Lens.Lens' CreateVPCEndpoint (Lude.Maybe Lude.Bool)
cvpceDryRun = Lens.lens (dryRun :: CreateVPCEndpoint -> Lude.Maybe Lude.Bool) (\s a -> s {dryRun = a} :: CreateVPCEndpoint)
{-# DEPRECATED cvpceDryRun "Use generic-lens or generic-optics with 'dryRun' instead." #-}

-- | (Gateway endpoint) One or more route table IDs.
--
-- /Note:/ Consider using 'routeTableIds' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cvpceRouteTableIds :: Lens.Lens' CreateVPCEndpoint (Lude.Maybe [Lude.Text])
cvpceRouteTableIds = Lens.lens (routeTableIds :: CreateVPCEndpoint -> Lude.Maybe [Lude.Text]) (\s a -> s {routeTableIds = a} :: CreateVPCEndpoint)
{-# DEPRECATED cvpceRouteTableIds "Use generic-lens or generic-optics with 'routeTableIds' instead." #-}

-- | The ID of the VPC in which the endpoint will be used.
--
-- /Note:/ Consider using 'vpcId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cvpceVPCId :: Lens.Lens' CreateVPCEndpoint Lude.Text
cvpceVPCId = Lens.lens (vpcId :: CreateVPCEndpoint -> Lude.Text) (\s a -> s {vpcId = a} :: CreateVPCEndpoint)
{-# DEPRECATED cvpceVPCId "Use generic-lens or generic-optics with 'vpcId' instead." #-}

-- | The service name. To get a list of available services, use the 'DescribeVpcEndpointServices' request, or get the name from the service provider.
--
-- /Note:/ Consider using 'serviceName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cvpceServiceName :: Lens.Lens' CreateVPCEndpoint Lude.Text
cvpceServiceName = Lens.lens (serviceName :: CreateVPCEndpoint -> Lude.Text) (\s a -> s {serviceName = a} :: CreateVPCEndpoint)
{-# DEPRECATED cvpceServiceName "Use generic-lens or generic-optics with 'serviceName' instead." #-}

instance Lude.AWSRequest CreateVPCEndpoint where
  type Rs CreateVPCEndpoint = CreateVPCEndpointResponse
  request = Req.postQuery ec2Service
  response =
    Res.receiveXML
      ( \s h x ->
          CreateVPCEndpointResponse'
            Lude.<$> (x Lude..@? "clientToken")
            Lude.<*> (x Lude..@? "vpcEndpoint")
            Lude.<*> (Lude.pure (Lude.fromEnum s))
      )

instance Lude.ToHeaders CreateVPCEndpoint where
  toHeaders = Lude.const Lude.mempty

instance Lude.ToPath CreateVPCEndpoint where
  toPath = Lude.const "/"

instance Lude.ToQuery CreateVPCEndpoint where
  toQuery CreateVPCEndpoint' {..} =
    Lude.mconcat
      [ "Action" Lude.=: ("CreateVpcEndpoint" :: Lude.ByteString),
        "Version" Lude.=: ("2016-11-15" :: Lude.ByteString),
        "PolicyDocument" Lude.=: policyDocument,
        Lude.toQuery
          (Lude.toQueryList "SecurityGroupId" Lude.<$> securityGroupIds),
        "ClientToken" Lude.=: clientToken,
        Lude.toQuery (Lude.toQueryList "SubnetId" Lude.<$> subnetIds),
        "VpcEndpointType" Lude.=: vpcEndpointType,
        "PrivateDnsEnabled" Lude.=: privateDNSEnabled,
        Lude.toQuery
          (Lude.toQueryList "TagSpecification" Lude.<$> tagSpecifications),
        "DryRun" Lude.=: dryRun,
        Lude.toQuery
          (Lude.toQueryList "RouteTableId" Lude.<$> routeTableIds),
        "VpcId" Lude.=: vpcId,
        "ServiceName" Lude.=: serviceName
      ]

-- | Contains the output of CreateVpcEndpoint.
--
-- /See:/ 'mkCreateVPCEndpointResponse' smart constructor.
data CreateVPCEndpointResponse = CreateVPCEndpointResponse'
  { clientToken ::
      Lude.Maybe Lude.Text,
    vpcEndpoint :: Lude.Maybe VPCEndpoint,
    responseStatus :: Lude.Int
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'CreateVPCEndpointResponse' with the minimum fields required to make a request.
--
-- * 'clientToken' - Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.
-- * 'responseStatus' - The response status code.
-- * 'vpcEndpoint' - Information about the endpoint.
mkCreateVPCEndpointResponse ::
  -- | 'responseStatus'
  Lude.Int ->
  CreateVPCEndpointResponse
mkCreateVPCEndpointResponse pResponseStatus_ =
  CreateVPCEndpointResponse'
    { clientToken = Lude.Nothing,
      vpcEndpoint = Lude.Nothing,
      responseStatus = pResponseStatus_
    }

-- | Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.
--
-- /Note:/ Consider using 'clientToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cversClientToken :: Lens.Lens' CreateVPCEndpointResponse (Lude.Maybe Lude.Text)
cversClientToken = Lens.lens (clientToken :: CreateVPCEndpointResponse -> Lude.Maybe Lude.Text) (\s a -> s {clientToken = a} :: CreateVPCEndpointResponse)
{-# DEPRECATED cversClientToken "Use generic-lens or generic-optics with 'clientToken' instead." #-}

-- | Information about the endpoint.
--
-- /Note:/ Consider using 'vpcEndpoint' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cversVPCEndpoint :: Lens.Lens' CreateVPCEndpointResponse (Lude.Maybe VPCEndpoint)
cversVPCEndpoint = Lens.lens (vpcEndpoint :: CreateVPCEndpointResponse -> Lude.Maybe VPCEndpoint) (\s a -> s {vpcEndpoint = a} :: CreateVPCEndpointResponse)
{-# DEPRECATED cversVPCEndpoint "Use generic-lens or generic-optics with 'vpcEndpoint' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cversResponseStatus :: Lens.Lens' CreateVPCEndpointResponse Lude.Int
cversResponseStatus = Lens.lens (responseStatus :: CreateVPCEndpointResponse -> Lude.Int) (\s a -> s {responseStatus = a} :: CreateVPCEndpointResponse)
{-# DEPRECATED cversResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}