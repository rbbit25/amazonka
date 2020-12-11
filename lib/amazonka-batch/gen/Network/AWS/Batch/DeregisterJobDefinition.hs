{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Batch.DeregisterJobDefinition
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deregisters an AWS Batch job definition. Job definitions will be permanently deleted after 180 days.
module Network.AWS.Batch.DeregisterJobDefinition
  ( -- * Creating a request
    DeregisterJobDefinition (..),
    mkDeregisterJobDefinition,

    -- ** Request lenses
    djdJobDefinition,

    -- * Destructuring the response
    DeregisterJobDefinitionResponse (..),
    mkDeregisterJobDefinitionResponse,

    -- ** Response lenses
    derrsResponseStatus,
  )
where

import Network.AWS.Batch.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude
import qualified Network.AWS.Request as Req
import qualified Network.AWS.Response as Res

-- | /See:/ 'mkDeregisterJobDefinition' smart constructor.
newtype DeregisterJobDefinition = DeregisterJobDefinition'
  { jobDefinition ::
      Lude.Text
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving newtype (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'DeregisterJobDefinition' with the minimum fields required to make a request.
--
-- * 'jobDefinition' - The name and revision (@name:revision@ ) or full Amazon Resource Name (ARN) of the job definition to deregister.
mkDeregisterJobDefinition ::
  -- | 'jobDefinition'
  Lude.Text ->
  DeregisterJobDefinition
mkDeregisterJobDefinition pJobDefinition_ =
  DeregisterJobDefinition' {jobDefinition = pJobDefinition_}

-- | The name and revision (@name:revision@ ) or full Amazon Resource Name (ARN) of the job definition to deregister.
--
-- /Note:/ Consider using 'jobDefinition' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
djdJobDefinition :: Lens.Lens' DeregisterJobDefinition Lude.Text
djdJobDefinition = Lens.lens (jobDefinition :: DeregisterJobDefinition -> Lude.Text) (\s a -> s {jobDefinition = a} :: DeregisterJobDefinition)
{-# DEPRECATED djdJobDefinition "Use generic-lens or generic-optics with 'jobDefinition' instead." #-}

instance Lude.AWSRequest DeregisterJobDefinition where
  type Rs DeregisterJobDefinition = DeregisterJobDefinitionResponse
  request = Req.postJSON batchService
  response =
    Res.receiveEmpty
      ( \s h x ->
          DeregisterJobDefinitionResponse'
            Lude.<$> (Lude.pure (Lude.fromEnum s))
      )

instance Lude.ToHeaders DeregisterJobDefinition where
  toHeaders =
    Lude.const
      ( Lude.mconcat
          [ "Content-Type"
              Lude.=# ("application/x-amz-json-1.1" :: Lude.ByteString)
          ]
      )

instance Lude.ToJSON DeregisterJobDefinition where
  toJSON DeregisterJobDefinition' {..} =
    Lude.object
      ( Lude.catMaybes
          [Lude.Just ("jobDefinition" Lude..= jobDefinition)]
      )

instance Lude.ToPath DeregisterJobDefinition where
  toPath = Lude.const "/v1/deregisterjobdefinition"

instance Lude.ToQuery DeregisterJobDefinition where
  toQuery = Lude.const Lude.mempty

-- | /See:/ 'mkDeregisterJobDefinitionResponse' smart constructor.
newtype DeregisterJobDefinitionResponse = DeregisterJobDefinitionResponse'
  { responseStatus ::
      Lude.Int
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving newtype (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'DeregisterJobDefinitionResponse' with the minimum fields required to make a request.
--
-- * 'responseStatus' - The response status code.
mkDeregisterJobDefinitionResponse ::
  -- | 'responseStatus'
  Lude.Int ->
  DeregisterJobDefinitionResponse
mkDeregisterJobDefinitionResponse pResponseStatus_ =
  DeregisterJobDefinitionResponse'
    { responseStatus =
        pResponseStatus_
    }

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
derrsResponseStatus :: Lens.Lens' DeregisterJobDefinitionResponse Lude.Int
derrsResponseStatus = Lens.lens (responseStatus :: DeregisterJobDefinitionResponse -> Lude.Int) (\s a -> s {responseStatus = a} :: DeregisterJobDefinitionResponse)
{-# DEPRECATED derrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}