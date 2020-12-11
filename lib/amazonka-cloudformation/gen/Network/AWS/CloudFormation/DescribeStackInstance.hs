{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFormation.DescribeStackInstance
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the stack instance that's associated with the specified stack set, AWS account, and Region.
--
-- For a list of stack instances that are associated with a specific stack set, use 'ListStackInstances' .
module Network.AWS.CloudFormation.DescribeStackInstance
  ( -- * Creating a request
    DescribeStackInstance (..),
    mkDescribeStackInstance,

    -- ** Request lenses
    dStackSetName,
    dStackInstanceAccount,
    dStackInstanceRegion,

    -- * Destructuring the response
    DescribeStackInstanceResponse (..),
    mkDescribeStackInstanceResponse,

    -- ** Response lenses
    dsisrsStackInstance,
    dsisrsResponseStatus,
  )
where

import Network.AWS.CloudFormation.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude
import qualified Network.AWS.Request as Req
import qualified Network.AWS.Response as Res

-- | /See:/ 'mkDescribeStackInstance' smart constructor.
data DescribeStackInstance = DescribeStackInstance'
  { stackSetName ::
      Lude.Text,
    stackInstanceAccount :: Lude.Text,
    stackInstanceRegion :: Lude.Text
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'DescribeStackInstance' with the minimum fields required to make a request.
--
-- * 'stackInstanceAccount' - The ID of an AWS account that's associated with this stack instance.
-- * 'stackInstanceRegion' - The name of a Region that's associated with this stack instance.
-- * 'stackSetName' - The name or the unique stack ID of the stack set that you want to get stack instance information for.
mkDescribeStackInstance ::
  -- | 'stackSetName'
  Lude.Text ->
  -- | 'stackInstanceAccount'
  Lude.Text ->
  -- | 'stackInstanceRegion'
  Lude.Text ->
  DescribeStackInstance
mkDescribeStackInstance
  pStackSetName_
  pStackInstanceAccount_
  pStackInstanceRegion_ =
    DescribeStackInstance'
      { stackSetName = pStackSetName_,
        stackInstanceAccount = pStackInstanceAccount_,
        stackInstanceRegion = pStackInstanceRegion_
      }

-- | The name or the unique stack ID of the stack set that you want to get stack instance information for.
--
-- /Note:/ Consider using 'stackSetName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dStackSetName :: Lens.Lens' DescribeStackInstance Lude.Text
dStackSetName = Lens.lens (stackSetName :: DescribeStackInstance -> Lude.Text) (\s a -> s {stackSetName = a} :: DescribeStackInstance)
{-# DEPRECATED dStackSetName "Use generic-lens or generic-optics with 'stackSetName' instead." #-}

-- | The ID of an AWS account that's associated with this stack instance.
--
-- /Note:/ Consider using 'stackInstanceAccount' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dStackInstanceAccount :: Lens.Lens' DescribeStackInstance Lude.Text
dStackInstanceAccount = Lens.lens (stackInstanceAccount :: DescribeStackInstance -> Lude.Text) (\s a -> s {stackInstanceAccount = a} :: DescribeStackInstance)
{-# DEPRECATED dStackInstanceAccount "Use generic-lens or generic-optics with 'stackInstanceAccount' instead." #-}

-- | The name of a Region that's associated with this stack instance.
--
-- /Note:/ Consider using 'stackInstanceRegion' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dStackInstanceRegion :: Lens.Lens' DescribeStackInstance Lude.Text
dStackInstanceRegion = Lens.lens (stackInstanceRegion :: DescribeStackInstance -> Lude.Text) (\s a -> s {stackInstanceRegion = a} :: DescribeStackInstance)
{-# DEPRECATED dStackInstanceRegion "Use generic-lens or generic-optics with 'stackInstanceRegion' instead." #-}

instance Lude.AWSRequest DescribeStackInstance where
  type Rs DescribeStackInstance = DescribeStackInstanceResponse
  request = Req.postQuery cloudFormationService
  response =
    Res.receiveXMLWrapper
      "DescribeStackInstanceResult"
      ( \s h x ->
          DescribeStackInstanceResponse'
            Lude.<$> (x Lude..@? "StackInstance")
            Lude.<*> (Lude.pure (Lude.fromEnum s))
      )

instance Lude.ToHeaders DescribeStackInstance where
  toHeaders = Lude.const Lude.mempty

instance Lude.ToPath DescribeStackInstance where
  toPath = Lude.const "/"

instance Lude.ToQuery DescribeStackInstance where
  toQuery DescribeStackInstance' {..} =
    Lude.mconcat
      [ "Action" Lude.=: ("DescribeStackInstance" :: Lude.ByteString),
        "Version" Lude.=: ("2010-05-15" :: Lude.ByteString),
        "StackSetName" Lude.=: stackSetName,
        "StackInstanceAccount" Lude.=: stackInstanceAccount,
        "StackInstanceRegion" Lude.=: stackInstanceRegion
      ]

-- | /See:/ 'mkDescribeStackInstanceResponse' smart constructor.
data DescribeStackInstanceResponse = DescribeStackInstanceResponse'
  { stackInstance ::
      Lude.Maybe StackInstance,
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

-- | Creates a value of 'DescribeStackInstanceResponse' with the minimum fields required to make a request.
--
-- * 'responseStatus' - The response status code.
-- * 'stackInstance' - The stack instance that matches the specified request parameters.
mkDescribeStackInstanceResponse ::
  -- | 'responseStatus'
  Lude.Int ->
  DescribeStackInstanceResponse
mkDescribeStackInstanceResponse pResponseStatus_ =
  DescribeStackInstanceResponse'
    { stackInstance = Lude.Nothing,
      responseStatus = pResponseStatus_
    }

-- | The stack instance that matches the specified request parameters.
--
-- /Note:/ Consider using 'stackInstance' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dsisrsStackInstance :: Lens.Lens' DescribeStackInstanceResponse (Lude.Maybe StackInstance)
dsisrsStackInstance = Lens.lens (stackInstance :: DescribeStackInstanceResponse -> Lude.Maybe StackInstance) (\s a -> s {stackInstance = a} :: DescribeStackInstanceResponse)
{-# DEPRECATED dsisrsStackInstance "Use generic-lens or generic-optics with 'stackInstance' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dsisrsResponseStatus :: Lens.Lens' DescribeStackInstanceResponse Lude.Int
dsisrsResponseStatus = Lens.lens (responseStatus :: DescribeStackInstanceResponse -> Lude.Int) (\s a -> s {responseStatus = a} :: DescribeStackInstanceResponse)
{-# DEPRECATED dsisrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}