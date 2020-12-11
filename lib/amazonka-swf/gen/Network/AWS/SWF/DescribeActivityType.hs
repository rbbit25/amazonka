{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SWF.DescribeActivityType
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about the specified activity type. This includes configuration settings provided when the type was registered and other general information about the type.
--
-- __Access Control__
-- You can use IAM policies to control this action's access to Amazon SWF resources as follows:
--
--     * Use a @Resource@ element with the domain name to limit the action to only specified domains.
--
--
--     * Use an @Action@ element to allow or deny permission to call this action.
--
--
--     * Constrain the following parameters by using a @Condition@ element with the appropriate keys.
--
--     * @activityType.name@ : String constraint. The key is @swf:activityType.name@ .
--
--
--     * @activityType.version@ : String constraint. The key is @swf:activityType.version@ .
--
--
--
--
-- If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's @cause@ parameter is set to @OPERATION_NOT_PERMITTED@ . For details and example IAM policies, see <https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html Using IAM to Manage Access to Amazon SWF Workflows> in the /Amazon SWF Developer Guide/ .
module Network.AWS.SWF.DescribeActivityType
  ( -- * Creating a request
    DescribeActivityType (..),
    mkDescribeActivityType,

    -- ** Request lenses
    datDomain,
    datActivityType,

    -- * Destructuring the response
    DescribeActivityTypeResponse (..),
    mkDescribeActivityTypeResponse,

    -- ** Response lenses
    datrsResponseStatus,
    datrsTypeInfo,
    datrsConfiguration,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude
import qualified Network.AWS.Request as Req
import qualified Network.AWS.Response as Res
import Network.AWS.SWF.Types

-- | /See:/ 'mkDescribeActivityType' smart constructor.
data DescribeActivityType = DescribeActivityType'
  { domain ::
      Lude.Text,
    activityType :: ActivityType
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'DescribeActivityType' with the minimum fields required to make a request.
--
-- * 'activityType' - The activity type to get information about. Activity types are identified by the @name@ and @version@ that were supplied when the activity was registered.
-- * 'domain' - The name of the domain in which the activity type is registered.
mkDescribeActivityType ::
  -- | 'domain'
  Lude.Text ->
  -- | 'activityType'
  ActivityType ->
  DescribeActivityType
mkDescribeActivityType pDomain_ pActivityType_ =
  DescribeActivityType'
    { domain = pDomain_,
      activityType = pActivityType_
    }

-- | The name of the domain in which the activity type is registered.
--
-- /Note:/ Consider using 'domain' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
datDomain :: Lens.Lens' DescribeActivityType Lude.Text
datDomain = Lens.lens (domain :: DescribeActivityType -> Lude.Text) (\s a -> s {domain = a} :: DescribeActivityType)
{-# DEPRECATED datDomain "Use generic-lens or generic-optics with 'domain' instead." #-}

-- | The activity type to get information about. Activity types are identified by the @name@ and @version@ that were supplied when the activity was registered.
--
-- /Note:/ Consider using 'activityType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
datActivityType :: Lens.Lens' DescribeActivityType ActivityType
datActivityType = Lens.lens (activityType :: DescribeActivityType -> ActivityType) (\s a -> s {activityType = a} :: DescribeActivityType)
{-# DEPRECATED datActivityType "Use generic-lens or generic-optics with 'activityType' instead." #-}

instance Lude.AWSRequest DescribeActivityType where
  type Rs DescribeActivityType = DescribeActivityTypeResponse
  request = Req.postJSON swfService
  response =
    Res.receiveJSON
      ( \s h x ->
          DescribeActivityTypeResponse'
            Lude.<$> (Lude.pure (Lude.fromEnum s))
            Lude.<*> (x Lude..:> "typeInfo")
            Lude.<*> (x Lude..:> "configuration")
      )

instance Lude.ToHeaders DescribeActivityType where
  toHeaders =
    Lude.const
      ( Lude.mconcat
          [ "X-Amz-Target"
              Lude.=# ("SimpleWorkflowService.DescribeActivityType" :: Lude.ByteString),
            "Content-Type"
              Lude.=# ("application/x-amz-json-1.0" :: Lude.ByteString)
          ]
      )

instance Lude.ToJSON DescribeActivityType where
  toJSON DescribeActivityType' {..} =
    Lude.object
      ( Lude.catMaybes
          [ Lude.Just ("domain" Lude..= domain),
            Lude.Just ("activityType" Lude..= activityType)
          ]
      )

instance Lude.ToPath DescribeActivityType where
  toPath = Lude.const "/"

instance Lude.ToQuery DescribeActivityType where
  toQuery = Lude.const Lude.mempty

-- | Detailed information about an activity type.
--
-- /See:/ 'mkDescribeActivityTypeResponse' smart constructor.
data DescribeActivityTypeResponse = DescribeActivityTypeResponse'
  { responseStatus ::
      Lude.Int,
    typeInfo :: ActivityTypeInfo,
    configuration ::
      ActivityTypeConfiguration
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'DescribeActivityTypeResponse' with the minimum fields required to make a request.
--
-- * 'configuration' - The configuration settings registered with the activity type.
-- * 'responseStatus' - The response status code.
-- * 'typeInfo' - General information about the activity type.
--
-- The status of activity type (returned in the ActivityTypeInfo structure) can be one of the following.
--
--     * @REGISTERED@ – The type is registered and available. Workers supporting this type should be running.
--
--
--     * @DEPRECATED@ – The type was deprecated using 'DeprecateActivityType' , but is still in use. You should keep workers supporting this type running. You cannot create new tasks of this type.
mkDescribeActivityTypeResponse ::
  -- | 'responseStatus'
  Lude.Int ->
  -- | 'typeInfo'
  ActivityTypeInfo ->
  -- | 'configuration'
  ActivityTypeConfiguration ->
  DescribeActivityTypeResponse
mkDescribeActivityTypeResponse
  pResponseStatus_
  pTypeInfo_
  pConfiguration_ =
    DescribeActivityTypeResponse'
      { responseStatus = pResponseStatus_,
        typeInfo = pTypeInfo_,
        configuration = pConfiguration_
      }

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
datrsResponseStatus :: Lens.Lens' DescribeActivityTypeResponse Lude.Int
datrsResponseStatus = Lens.lens (responseStatus :: DescribeActivityTypeResponse -> Lude.Int) (\s a -> s {responseStatus = a} :: DescribeActivityTypeResponse)
{-# DEPRECATED datrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}

-- | General information about the activity type.
--
-- The status of activity type (returned in the ActivityTypeInfo structure) can be one of the following.
--
--     * @REGISTERED@ – The type is registered and available. Workers supporting this type should be running.
--
--
--     * @DEPRECATED@ – The type was deprecated using 'DeprecateActivityType' , but is still in use. You should keep workers supporting this type running. You cannot create new tasks of this type.
--
--
--
-- /Note:/ Consider using 'typeInfo' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
datrsTypeInfo :: Lens.Lens' DescribeActivityTypeResponse ActivityTypeInfo
datrsTypeInfo = Lens.lens (typeInfo :: DescribeActivityTypeResponse -> ActivityTypeInfo) (\s a -> s {typeInfo = a} :: DescribeActivityTypeResponse)
{-# DEPRECATED datrsTypeInfo "Use generic-lens or generic-optics with 'typeInfo' instead." #-}

-- | The configuration settings registered with the activity type.
--
-- /Note:/ Consider using 'configuration' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
datrsConfiguration :: Lens.Lens' DescribeActivityTypeResponse ActivityTypeConfiguration
datrsConfiguration = Lens.lens (configuration :: DescribeActivityTypeResponse -> ActivityTypeConfiguration) (\s a -> s {configuration = a} :: DescribeActivityTypeResponse)
{-# DEPRECATED datrsConfiguration "Use generic-lens or generic-optics with 'configuration' instead." #-}