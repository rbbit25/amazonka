{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.RequestSpotInstances
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a Spot Instance request.
--
-- For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-requests.html Spot Instance requests> in the /Amazon EC2 User Guide for Linux Instances/ .
module Network.AWS.EC2.RequestSpotInstances
  ( -- * Creating a request
    RequestSpotInstances (..),
    mkRequestSpotInstances,

    -- ** Request lenses
    rsisBlockDurationMinutes,
    rsisClientToken,
    rsisInstanceCount,
    rsisInstanceInterruptionBehavior,
    rsisSpotPrice,
    rsisLaunchSpecification,
    rsisAvailabilityZoneGroup,
    rsisTagSpecifications,
    rsisValidUntil,
    rsisLaunchGroup,
    rsisType,
    rsisValidFrom,
    rsisDryRun,

    -- * Destructuring the response
    RequestSpotInstancesResponse (..),
    mkRequestSpotInstancesResponse,

    -- ** Response lenses
    rsirsSpotInstanceRequests,
    rsirsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude
import qualified Network.AWS.Request as Req
import qualified Network.AWS.Response as Res

-- | Contains the parameters for RequestSpotInstances.
--
-- /See:/ 'mkRequestSpotInstances' smart constructor.
data RequestSpotInstances = RequestSpotInstances'
  { blockDurationMinutes ::
      Lude.Maybe Lude.Int,
    clientToken :: Lude.Maybe Lude.Text,
    instanceCount :: Lude.Maybe Lude.Int,
    instanceInterruptionBehavior ::
      Lude.Maybe InstanceInterruptionBehavior,
    spotPrice :: Lude.Maybe Lude.Text,
    launchSpecification ::
      Lude.Maybe RequestSpotLaunchSpecification,
    availabilityZoneGroup :: Lude.Maybe Lude.Text,
    tagSpecifications ::
      Lude.Maybe [TagSpecification],
    validUntil :: Lude.Maybe Lude.ISO8601,
    launchGroup :: Lude.Maybe Lude.Text,
    type' :: Lude.Maybe SpotInstanceType,
    validFrom :: Lude.Maybe Lude.ISO8601,
    dryRun :: Lude.Maybe Lude.Bool
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'RequestSpotInstances' with the minimum fields required to make a request.
--
-- * 'availabilityZoneGroup' - The user-specified name for a logical grouping of requests.
--
-- When you specify an Availability Zone group in a Spot Instance request, all Spot Instances in the request are launched in the same Availability Zone. Instance proximity is maintained with this parameter, but the choice of Availability Zone is not. The group applies only to requests for Spot Instances of the same instance type. Any additional Spot Instance requests that are specified with the same Availability Zone group name are launched in that same Availability Zone, as long as at least one instance from the group is still active.
-- If there is no active instance running in the Availability Zone group that you specify for a new Spot Instance request (all instances are terminated, the request is expired, or the maximum price you specified falls below current Spot price), then Amazon EC2 launches the instance in any Availability Zone where the constraint can be met. Consequently, the subsequent set of Spot Instances could be placed in a different zone from the original request, even if you specified the same Availability Zone group.
-- Default: Instances are launched in any available Availability Zone.
-- * 'blockDurationMinutes' - The required duration for the Spot Instances (also known as Spot blocks), in minutes. This value must be a multiple of 60 (60, 120, 180, 240, 300, or 360).
--
-- The duration period starts as soon as your Spot Instance receives its instance ID. At the end of the duration period, Amazon EC2 marks the Spot Instance for termination and provides a Spot Instance termination notice, which gives the instance a two-minute warning before it terminates.
-- You can't specify an Availability Zone group or a launch group if you specify a duration.
-- New accounts or accounts with no previous billing history with AWS are not eligible for Spot Instances with a defined duration (also known as Spot blocks).
-- * 'clientToken' - Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html How to Ensure Idempotency> in the /Amazon EC2 User Guide for Linux Instances/ .
-- * 'dryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
-- * 'instanceCount' - The maximum number of Spot Instances to launch.
--
-- Default: 1
-- * 'instanceInterruptionBehavior' - The behavior when a Spot Instance is interrupted. The default is @terminate@ .
-- * 'launchGroup' - The instance launch group. Launch groups are Spot Instances that launch together and terminate together.
--
-- Default: Instances are launched and terminated individually
-- * 'launchSpecification' - The launch specification.
-- * 'spotPrice' - The maximum price per hour that you are willing to pay for a Spot Instance. The default is the On-Demand price.
-- * 'tagSpecifications' - The key-value pair for tagging the Spot Instance request on creation. The value for @ResourceType@ must be @spot-instances-request@ , otherwise the Spot Instance request fails. To tag the Spot Instance request after it has been created, see <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateTags.html CreateTags> .
-- * 'type'' - The Spot Instance request type.
--
-- Default: @one-time@
-- * 'validFrom' - The start date of the request. If this is a one-time request, the request becomes active at this date and time and remains active until all instances launch, the request expires, or the request is canceled. If the request is persistent, the request becomes active at this date and time and remains active until it expires or is canceled.
--
-- The specified start date and time cannot be equal to the current date and time. You must specify a start date and time that occurs after the current date and time.
-- * 'validUntil' - The end date of the request, in UTC format (/YYYY/ -/MM/ -/DD/ T/HH/ :/MM/ :/SS/ Z).
--
--
--     * For a persistent request, the request remains active until the @ValidUntil@ date and time is reached. Otherwise, the request remains active until you cancel it.
--
--
--     * For a one-time request, the request remains active until all instances launch, the request is canceled, or the @ValidUntil@ date and time is reached. By default, the request is valid for 7 days from the date the request was created.
mkRequestSpotInstances ::
  RequestSpotInstances
mkRequestSpotInstances =
  RequestSpotInstances'
    { blockDurationMinutes = Lude.Nothing,
      clientToken = Lude.Nothing,
      instanceCount = Lude.Nothing,
      instanceInterruptionBehavior = Lude.Nothing,
      spotPrice = Lude.Nothing,
      launchSpecification = Lude.Nothing,
      availabilityZoneGroup = Lude.Nothing,
      tagSpecifications = Lude.Nothing,
      validUntil = Lude.Nothing,
      launchGroup = Lude.Nothing,
      type' = Lude.Nothing,
      validFrom = Lude.Nothing,
      dryRun = Lude.Nothing
    }

-- | The required duration for the Spot Instances (also known as Spot blocks), in minutes. This value must be a multiple of 60 (60, 120, 180, 240, 300, or 360).
--
-- The duration period starts as soon as your Spot Instance receives its instance ID. At the end of the duration period, Amazon EC2 marks the Spot Instance for termination and provides a Spot Instance termination notice, which gives the instance a two-minute warning before it terminates.
-- You can't specify an Availability Zone group or a launch group if you specify a duration.
-- New accounts or accounts with no previous billing history with AWS are not eligible for Spot Instances with a defined duration (also known as Spot blocks).
--
-- /Note:/ Consider using 'blockDurationMinutes' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rsisBlockDurationMinutes :: Lens.Lens' RequestSpotInstances (Lude.Maybe Lude.Int)
rsisBlockDurationMinutes = Lens.lens (blockDurationMinutes :: RequestSpotInstances -> Lude.Maybe Lude.Int) (\s a -> s {blockDurationMinutes = a} :: RequestSpotInstances)
{-# DEPRECATED rsisBlockDurationMinutes "Use generic-lens or generic-optics with 'blockDurationMinutes' instead." #-}

-- | Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html How to Ensure Idempotency> in the /Amazon EC2 User Guide for Linux Instances/ .
--
-- /Note:/ Consider using 'clientToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rsisClientToken :: Lens.Lens' RequestSpotInstances (Lude.Maybe Lude.Text)
rsisClientToken = Lens.lens (clientToken :: RequestSpotInstances -> Lude.Maybe Lude.Text) (\s a -> s {clientToken = a} :: RequestSpotInstances)
{-# DEPRECATED rsisClientToken "Use generic-lens or generic-optics with 'clientToken' instead." #-}

-- | The maximum number of Spot Instances to launch.
--
-- Default: 1
--
-- /Note:/ Consider using 'instanceCount' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rsisInstanceCount :: Lens.Lens' RequestSpotInstances (Lude.Maybe Lude.Int)
rsisInstanceCount = Lens.lens (instanceCount :: RequestSpotInstances -> Lude.Maybe Lude.Int) (\s a -> s {instanceCount = a} :: RequestSpotInstances)
{-# DEPRECATED rsisInstanceCount "Use generic-lens or generic-optics with 'instanceCount' instead." #-}

-- | The behavior when a Spot Instance is interrupted. The default is @terminate@ .
--
-- /Note:/ Consider using 'instanceInterruptionBehavior' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rsisInstanceInterruptionBehavior :: Lens.Lens' RequestSpotInstances (Lude.Maybe InstanceInterruptionBehavior)
rsisInstanceInterruptionBehavior = Lens.lens (instanceInterruptionBehavior :: RequestSpotInstances -> Lude.Maybe InstanceInterruptionBehavior) (\s a -> s {instanceInterruptionBehavior = a} :: RequestSpotInstances)
{-# DEPRECATED rsisInstanceInterruptionBehavior "Use generic-lens or generic-optics with 'instanceInterruptionBehavior' instead." #-}

-- | The maximum price per hour that you are willing to pay for a Spot Instance. The default is the On-Demand price.
--
-- /Note:/ Consider using 'spotPrice' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rsisSpotPrice :: Lens.Lens' RequestSpotInstances (Lude.Maybe Lude.Text)
rsisSpotPrice = Lens.lens (spotPrice :: RequestSpotInstances -> Lude.Maybe Lude.Text) (\s a -> s {spotPrice = a} :: RequestSpotInstances)
{-# DEPRECATED rsisSpotPrice "Use generic-lens or generic-optics with 'spotPrice' instead." #-}

-- | The launch specification.
--
-- /Note:/ Consider using 'launchSpecification' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rsisLaunchSpecification :: Lens.Lens' RequestSpotInstances (Lude.Maybe RequestSpotLaunchSpecification)
rsisLaunchSpecification = Lens.lens (launchSpecification :: RequestSpotInstances -> Lude.Maybe RequestSpotLaunchSpecification) (\s a -> s {launchSpecification = a} :: RequestSpotInstances)
{-# DEPRECATED rsisLaunchSpecification "Use generic-lens or generic-optics with 'launchSpecification' instead." #-}

-- | The user-specified name for a logical grouping of requests.
--
-- When you specify an Availability Zone group in a Spot Instance request, all Spot Instances in the request are launched in the same Availability Zone. Instance proximity is maintained with this parameter, but the choice of Availability Zone is not. The group applies only to requests for Spot Instances of the same instance type. Any additional Spot Instance requests that are specified with the same Availability Zone group name are launched in that same Availability Zone, as long as at least one instance from the group is still active.
-- If there is no active instance running in the Availability Zone group that you specify for a new Spot Instance request (all instances are terminated, the request is expired, or the maximum price you specified falls below current Spot price), then Amazon EC2 launches the instance in any Availability Zone where the constraint can be met. Consequently, the subsequent set of Spot Instances could be placed in a different zone from the original request, even if you specified the same Availability Zone group.
-- Default: Instances are launched in any available Availability Zone.
--
-- /Note:/ Consider using 'availabilityZoneGroup' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rsisAvailabilityZoneGroup :: Lens.Lens' RequestSpotInstances (Lude.Maybe Lude.Text)
rsisAvailabilityZoneGroup = Lens.lens (availabilityZoneGroup :: RequestSpotInstances -> Lude.Maybe Lude.Text) (\s a -> s {availabilityZoneGroup = a} :: RequestSpotInstances)
{-# DEPRECATED rsisAvailabilityZoneGroup "Use generic-lens or generic-optics with 'availabilityZoneGroup' instead." #-}

-- | The key-value pair for tagging the Spot Instance request on creation. The value for @ResourceType@ must be @spot-instances-request@ , otherwise the Spot Instance request fails. To tag the Spot Instance request after it has been created, see <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateTags.html CreateTags> .
--
-- /Note:/ Consider using 'tagSpecifications' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rsisTagSpecifications :: Lens.Lens' RequestSpotInstances (Lude.Maybe [TagSpecification])
rsisTagSpecifications = Lens.lens (tagSpecifications :: RequestSpotInstances -> Lude.Maybe [TagSpecification]) (\s a -> s {tagSpecifications = a} :: RequestSpotInstances)
{-# DEPRECATED rsisTagSpecifications "Use generic-lens or generic-optics with 'tagSpecifications' instead." #-}

-- | The end date of the request, in UTC format (/YYYY/ -/MM/ -/DD/ T/HH/ :/MM/ :/SS/ Z).
--
--
--     * For a persistent request, the request remains active until the @ValidUntil@ date and time is reached. Otherwise, the request remains active until you cancel it.
--
--
--     * For a one-time request, the request remains active until all instances launch, the request is canceled, or the @ValidUntil@ date and time is reached. By default, the request is valid for 7 days from the date the request was created.
--
--
--
-- /Note:/ Consider using 'validUntil' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rsisValidUntil :: Lens.Lens' RequestSpotInstances (Lude.Maybe Lude.ISO8601)
rsisValidUntil = Lens.lens (validUntil :: RequestSpotInstances -> Lude.Maybe Lude.ISO8601) (\s a -> s {validUntil = a} :: RequestSpotInstances)
{-# DEPRECATED rsisValidUntil "Use generic-lens or generic-optics with 'validUntil' instead." #-}

-- | The instance launch group. Launch groups are Spot Instances that launch together and terminate together.
--
-- Default: Instances are launched and terminated individually
--
-- /Note:/ Consider using 'launchGroup' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rsisLaunchGroup :: Lens.Lens' RequestSpotInstances (Lude.Maybe Lude.Text)
rsisLaunchGroup = Lens.lens (launchGroup :: RequestSpotInstances -> Lude.Maybe Lude.Text) (\s a -> s {launchGroup = a} :: RequestSpotInstances)
{-# DEPRECATED rsisLaunchGroup "Use generic-lens or generic-optics with 'launchGroup' instead." #-}

-- | The Spot Instance request type.
--
-- Default: @one-time@
--
-- /Note:/ Consider using 'type'' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rsisType :: Lens.Lens' RequestSpotInstances (Lude.Maybe SpotInstanceType)
rsisType = Lens.lens (type' :: RequestSpotInstances -> Lude.Maybe SpotInstanceType) (\s a -> s {type' = a} :: RequestSpotInstances)
{-# DEPRECATED rsisType "Use generic-lens or generic-optics with 'type'' instead." #-}

-- | The start date of the request. If this is a one-time request, the request becomes active at this date and time and remains active until all instances launch, the request expires, or the request is canceled. If the request is persistent, the request becomes active at this date and time and remains active until it expires or is canceled.
--
-- The specified start date and time cannot be equal to the current date and time. You must specify a start date and time that occurs after the current date and time.
--
-- /Note:/ Consider using 'validFrom' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rsisValidFrom :: Lens.Lens' RequestSpotInstances (Lude.Maybe Lude.ISO8601)
rsisValidFrom = Lens.lens (validFrom :: RequestSpotInstances -> Lude.Maybe Lude.ISO8601) (\s a -> s {validFrom = a} :: RequestSpotInstances)
{-# DEPRECATED rsisValidFrom "Use generic-lens or generic-optics with 'validFrom' instead." #-}

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- /Note:/ Consider using 'dryRun' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rsisDryRun :: Lens.Lens' RequestSpotInstances (Lude.Maybe Lude.Bool)
rsisDryRun = Lens.lens (dryRun :: RequestSpotInstances -> Lude.Maybe Lude.Bool) (\s a -> s {dryRun = a} :: RequestSpotInstances)
{-# DEPRECATED rsisDryRun "Use generic-lens or generic-optics with 'dryRun' instead." #-}

instance Lude.AWSRequest RequestSpotInstances where
  type Rs RequestSpotInstances = RequestSpotInstancesResponse
  request = Req.postQuery ec2Service
  response =
    Res.receiveXML
      ( \s h x ->
          RequestSpotInstancesResponse'
            Lude.<$> ( x Lude..@? "spotInstanceRequestSet" Lude..!@ Lude.mempty
                         Lude.>>= Lude.may (Lude.parseXMLList "item")
                     )
            Lude.<*> (Lude.pure (Lude.fromEnum s))
      )

instance Lude.ToHeaders RequestSpotInstances where
  toHeaders = Lude.const Lude.mempty

instance Lude.ToPath RequestSpotInstances where
  toPath = Lude.const "/"

instance Lude.ToQuery RequestSpotInstances where
  toQuery RequestSpotInstances' {..} =
    Lude.mconcat
      [ "Action" Lude.=: ("RequestSpotInstances" :: Lude.ByteString),
        "Version" Lude.=: ("2016-11-15" :: Lude.ByteString),
        "BlockDurationMinutes" Lude.=: blockDurationMinutes,
        "ClientToken" Lude.=: clientToken,
        "InstanceCount" Lude.=: instanceCount,
        "InstanceInterruptionBehavior"
          Lude.=: instanceInterruptionBehavior,
        "SpotPrice" Lude.=: spotPrice,
        "LaunchSpecification" Lude.=: launchSpecification,
        "AvailabilityZoneGroup" Lude.=: availabilityZoneGroup,
        Lude.toQuery
          (Lude.toQueryList "TagSpecification" Lude.<$> tagSpecifications),
        "ValidUntil" Lude.=: validUntil,
        "LaunchGroup" Lude.=: launchGroup,
        "Type" Lude.=: type',
        "ValidFrom" Lude.=: validFrom,
        "DryRun" Lude.=: dryRun
      ]

-- | Contains the output of RequestSpotInstances.
--
-- /See:/ 'mkRequestSpotInstancesResponse' smart constructor.
data RequestSpotInstancesResponse = RequestSpotInstancesResponse'
  { spotInstanceRequests ::
      Lude.Maybe [SpotInstanceRequest],
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

-- | Creates a value of 'RequestSpotInstancesResponse' with the minimum fields required to make a request.
--
-- * 'responseStatus' - The response status code.
-- * 'spotInstanceRequests' - One or more Spot Instance requests.
mkRequestSpotInstancesResponse ::
  -- | 'responseStatus'
  Lude.Int ->
  RequestSpotInstancesResponse
mkRequestSpotInstancesResponse pResponseStatus_ =
  RequestSpotInstancesResponse'
    { spotInstanceRequests =
        Lude.Nothing,
      responseStatus = pResponseStatus_
    }

-- | One or more Spot Instance requests.
--
-- /Note:/ Consider using 'spotInstanceRequests' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rsirsSpotInstanceRequests :: Lens.Lens' RequestSpotInstancesResponse (Lude.Maybe [SpotInstanceRequest])
rsirsSpotInstanceRequests = Lens.lens (spotInstanceRequests :: RequestSpotInstancesResponse -> Lude.Maybe [SpotInstanceRequest]) (\s a -> s {spotInstanceRequests = a} :: RequestSpotInstancesResponse)
{-# DEPRECATED rsirsSpotInstanceRequests "Use generic-lens or generic-optics with 'spotInstanceRequests' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rsirsResponseStatus :: Lens.Lens' RequestSpotInstancesResponse Lude.Int
rsirsResponseStatus = Lens.lens (responseStatus :: RequestSpotInstancesResponse -> Lude.Int) (\s a -> s {responseStatus = a} :: RequestSpotInstancesResponse)
{-# DEPRECATED rsirsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}