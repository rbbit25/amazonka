{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AppSync.CreateFunction
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a @Function@ object.
--
-- A function is a reusable entity. Multiple functions can be used to compose the resolver logic.
module Network.AWS.AppSync.CreateFunction
  ( -- * Creating a request
    CreateFunction (..),
    mkCreateFunction,

    -- ** Request lenses
    cfRequestMappingTemplate,
    cfResponseMappingTemplate,
    cfDescription,
    cfApiId,
    cfName,
    cfDataSourceName,
    cfFunctionVersion,

    -- * Destructuring the response
    CreateFunctionResponse (..),
    mkCreateFunctionResponse,

    -- ** Response lenses
    cfrsFunctionConfiguration,
    cfrsResponseStatus,
  )
where

import Network.AWS.AppSync.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude
import qualified Network.AWS.Request as Req
import qualified Network.AWS.Response as Res

-- | /See:/ 'mkCreateFunction' smart constructor.
data CreateFunction = CreateFunction'
  { requestMappingTemplate ::
      Lude.Maybe Lude.Text,
    responseMappingTemplate :: Lude.Maybe Lude.Text,
    description :: Lude.Maybe Lude.Text,
    apiId :: Lude.Text,
    name :: Lude.Text,
    dataSourceName :: Lude.Text,
    functionVersion :: Lude.Text
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'CreateFunction' with the minimum fields required to make a request.
--
-- * 'apiId' - The GraphQL API ID.
-- * 'dataSourceName' - The @Function@ @DataSource@ name.
-- * 'description' - The @Function@ description.
-- * 'functionVersion' - The @version@ of the request mapping template. Currently the supported value is 2018-05-29.
-- * 'name' - The @Function@ name. The function name does not have to be unique.
-- * 'requestMappingTemplate' - The @Function@ request mapping template. Functions support only the 2018-05-29 version of the request mapping template.
-- * 'responseMappingTemplate' - The @Function@ response mapping template.
mkCreateFunction ::
  -- | 'apiId'
  Lude.Text ->
  -- | 'name'
  Lude.Text ->
  -- | 'dataSourceName'
  Lude.Text ->
  -- | 'functionVersion'
  Lude.Text ->
  CreateFunction
mkCreateFunction pApiId_ pName_ pDataSourceName_ pFunctionVersion_ =
  CreateFunction'
    { requestMappingTemplate = Lude.Nothing,
      responseMappingTemplate = Lude.Nothing,
      description = Lude.Nothing,
      apiId = pApiId_,
      name = pName_,
      dataSourceName = pDataSourceName_,
      functionVersion = pFunctionVersion_
    }

-- | The @Function@ request mapping template. Functions support only the 2018-05-29 version of the request mapping template.
--
-- /Note:/ Consider using 'requestMappingTemplate' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cfRequestMappingTemplate :: Lens.Lens' CreateFunction (Lude.Maybe Lude.Text)
cfRequestMappingTemplate = Lens.lens (requestMappingTemplate :: CreateFunction -> Lude.Maybe Lude.Text) (\s a -> s {requestMappingTemplate = a} :: CreateFunction)
{-# DEPRECATED cfRequestMappingTemplate "Use generic-lens or generic-optics with 'requestMappingTemplate' instead." #-}

-- | The @Function@ response mapping template.
--
-- /Note:/ Consider using 'responseMappingTemplate' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cfResponseMappingTemplate :: Lens.Lens' CreateFunction (Lude.Maybe Lude.Text)
cfResponseMappingTemplate = Lens.lens (responseMappingTemplate :: CreateFunction -> Lude.Maybe Lude.Text) (\s a -> s {responseMappingTemplate = a} :: CreateFunction)
{-# DEPRECATED cfResponseMappingTemplate "Use generic-lens or generic-optics with 'responseMappingTemplate' instead." #-}

-- | The @Function@ description.
--
-- /Note:/ Consider using 'description' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cfDescription :: Lens.Lens' CreateFunction (Lude.Maybe Lude.Text)
cfDescription = Lens.lens (description :: CreateFunction -> Lude.Maybe Lude.Text) (\s a -> s {description = a} :: CreateFunction)
{-# DEPRECATED cfDescription "Use generic-lens or generic-optics with 'description' instead." #-}

-- | The GraphQL API ID.
--
-- /Note:/ Consider using 'apiId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cfApiId :: Lens.Lens' CreateFunction Lude.Text
cfApiId = Lens.lens (apiId :: CreateFunction -> Lude.Text) (\s a -> s {apiId = a} :: CreateFunction)
{-# DEPRECATED cfApiId "Use generic-lens or generic-optics with 'apiId' instead." #-}

-- | The @Function@ name. The function name does not have to be unique.
--
-- /Note:/ Consider using 'name' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cfName :: Lens.Lens' CreateFunction Lude.Text
cfName = Lens.lens (name :: CreateFunction -> Lude.Text) (\s a -> s {name = a} :: CreateFunction)
{-# DEPRECATED cfName "Use generic-lens or generic-optics with 'name' instead." #-}

-- | The @Function@ @DataSource@ name.
--
-- /Note:/ Consider using 'dataSourceName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cfDataSourceName :: Lens.Lens' CreateFunction Lude.Text
cfDataSourceName = Lens.lens (dataSourceName :: CreateFunction -> Lude.Text) (\s a -> s {dataSourceName = a} :: CreateFunction)
{-# DEPRECATED cfDataSourceName "Use generic-lens or generic-optics with 'dataSourceName' instead." #-}

-- | The @version@ of the request mapping template. Currently the supported value is 2018-05-29.
--
-- /Note:/ Consider using 'functionVersion' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cfFunctionVersion :: Lens.Lens' CreateFunction Lude.Text
cfFunctionVersion = Lens.lens (functionVersion :: CreateFunction -> Lude.Text) (\s a -> s {functionVersion = a} :: CreateFunction)
{-# DEPRECATED cfFunctionVersion "Use generic-lens or generic-optics with 'functionVersion' instead." #-}

instance Lude.AWSRequest CreateFunction where
  type Rs CreateFunction = CreateFunctionResponse
  request = Req.postJSON appSyncService
  response =
    Res.receiveJSON
      ( \s h x ->
          CreateFunctionResponse'
            Lude.<$> (x Lude..?> "functionConfiguration")
            Lude.<*> (Lude.pure (Lude.fromEnum s))
      )

instance Lude.ToHeaders CreateFunction where
  toHeaders =
    Lude.const
      ( Lude.mconcat
          [ "Content-Type"
              Lude.=# ("application/x-amz-json-1.1" :: Lude.ByteString)
          ]
      )

instance Lude.ToJSON CreateFunction where
  toJSON CreateFunction' {..} =
    Lude.object
      ( Lude.catMaybes
          [ ("requestMappingTemplate" Lude..=)
              Lude.<$> requestMappingTemplate,
            ("responseMappingTemplate" Lude..=)
              Lude.<$> responseMappingTemplate,
            ("description" Lude..=) Lude.<$> description,
            Lude.Just ("name" Lude..= name),
            Lude.Just ("dataSourceName" Lude..= dataSourceName),
            Lude.Just ("functionVersion" Lude..= functionVersion)
          ]
      )

instance Lude.ToPath CreateFunction where
  toPath CreateFunction' {..} =
    Lude.mconcat ["/v1/apis/", Lude.toBS apiId, "/functions"]

instance Lude.ToQuery CreateFunction where
  toQuery = Lude.const Lude.mempty

-- | /See:/ 'mkCreateFunctionResponse' smart constructor.
data CreateFunctionResponse = CreateFunctionResponse'
  { functionConfiguration ::
      Lude.Maybe FunctionConfiguration,
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

-- | Creates a value of 'CreateFunctionResponse' with the minimum fields required to make a request.
--
-- * 'functionConfiguration' - The @Function@ object.
-- * 'responseStatus' - The response status code.
mkCreateFunctionResponse ::
  -- | 'responseStatus'
  Lude.Int ->
  CreateFunctionResponse
mkCreateFunctionResponse pResponseStatus_ =
  CreateFunctionResponse'
    { functionConfiguration = Lude.Nothing,
      responseStatus = pResponseStatus_
    }

-- | The @Function@ object.
--
-- /Note:/ Consider using 'functionConfiguration' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cfrsFunctionConfiguration :: Lens.Lens' CreateFunctionResponse (Lude.Maybe FunctionConfiguration)
cfrsFunctionConfiguration = Lens.lens (functionConfiguration :: CreateFunctionResponse -> Lude.Maybe FunctionConfiguration) (\s a -> s {functionConfiguration = a} :: CreateFunctionResponse)
{-# DEPRECATED cfrsFunctionConfiguration "Use generic-lens or generic-optics with 'functionConfiguration' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cfrsResponseStatus :: Lens.Lens' CreateFunctionResponse Lude.Int
cfrsResponseStatus = Lens.lens (responseStatus :: CreateFunctionResponse -> Lude.Int) (\s a -> s {responseStatus = a} :: CreateFunctionResponse)
{-# DEPRECATED cfrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}