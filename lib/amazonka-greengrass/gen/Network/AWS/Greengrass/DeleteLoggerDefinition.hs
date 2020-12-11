{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Greengrass.DeleteLoggerDefinition
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a logger definition.
module Network.AWS.Greengrass.DeleteLoggerDefinition
  ( -- * Creating a request
    DeleteLoggerDefinition (..),
    mkDeleteLoggerDefinition,

    -- ** Request lenses
    dldLoggerDefinitionId,

    -- * Destructuring the response
    DeleteLoggerDefinitionResponse (..),
    mkDeleteLoggerDefinitionResponse,

    -- ** Response lenses
    dldrsResponseStatus,
  )
where

import Network.AWS.Greengrass.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude
import qualified Network.AWS.Request as Req
import qualified Network.AWS.Response as Res

-- | /See:/ 'mkDeleteLoggerDefinition' smart constructor.
newtype DeleteLoggerDefinition = DeleteLoggerDefinition'
  { loggerDefinitionId ::
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

-- | Creates a value of 'DeleteLoggerDefinition' with the minimum fields required to make a request.
--
-- * 'loggerDefinitionId' - The ID of the logger definition.
mkDeleteLoggerDefinition ::
  -- | 'loggerDefinitionId'
  Lude.Text ->
  DeleteLoggerDefinition
mkDeleteLoggerDefinition pLoggerDefinitionId_ =
  DeleteLoggerDefinition'
    { loggerDefinitionId =
        pLoggerDefinitionId_
    }

-- | The ID of the logger definition.
--
-- /Note:/ Consider using 'loggerDefinitionId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dldLoggerDefinitionId :: Lens.Lens' DeleteLoggerDefinition Lude.Text
dldLoggerDefinitionId = Lens.lens (loggerDefinitionId :: DeleteLoggerDefinition -> Lude.Text) (\s a -> s {loggerDefinitionId = a} :: DeleteLoggerDefinition)
{-# DEPRECATED dldLoggerDefinitionId "Use generic-lens or generic-optics with 'loggerDefinitionId' instead." #-}

instance Lude.AWSRequest DeleteLoggerDefinition where
  type Rs DeleteLoggerDefinition = DeleteLoggerDefinitionResponse
  request = Req.delete greengrassService
  response =
    Res.receiveEmpty
      ( \s h x ->
          DeleteLoggerDefinitionResponse'
            Lude.<$> (Lude.pure (Lude.fromEnum s))
      )

instance Lude.ToHeaders DeleteLoggerDefinition where
  toHeaders =
    Lude.const
      ( Lude.mconcat
          [ "Content-Type"
              Lude.=# ("application/x-amz-json-1.1" :: Lude.ByteString)
          ]
      )

instance Lude.ToPath DeleteLoggerDefinition where
  toPath DeleteLoggerDefinition' {..} =
    Lude.mconcat
      ["/greengrass/definition/loggers/", Lude.toBS loggerDefinitionId]

instance Lude.ToQuery DeleteLoggerDefinition where
  toQuery = Lude.const Lude.mempty

-- | /See:/ 'mkDeleteLoggerDefinitionResponse' smart constructor.
newtype DeleteLoggerDefinitionResponse = DeleteLoggerDefinitionResponse'
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

-- | Creates a value of 'DeleteLoggerDefinitionResponse' with the minimum fields required to make a request.
--
-- * 'responseStatus' - The response status code.
mkDeleteLoggerDefinitionResponse ::
  -- | 'responseStatus'
  Lude.Int ->
  DeleteLoggerDefinitionResponse
mkDeleteLoggerDefinitionResponse pResponseStatus_ =
  DeleteLoggerDefinitionResponse'
    { responseStatus =
        pResponseStatus_
    }

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dldrsResponseStatus :: Lens.Lens' DeleteLoggerDefinitionResponse Lude.Int
dldrsResponseStatus = Lens.lens (responseStatus :: DeleteLoggerDefinitionResponse -> Lude.Int) (\s a -> s {responseStatus = a} :: DeleteLoggerDefinitionResponse)
{-# DEPRECATED dldrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}