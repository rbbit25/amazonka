{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.APIGateway.CreateStage
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new 'Stage' resource that references a pre-existing 'Deployment' for the API.
module Network.AWS.APIGateway.CreateStage
  ( -- * Creating a request
    CreateStage (..),
    mkCreateStage,

    -- ** Request lenses
    cVariables,
    cDocumentationVersion,
    cTracingEnabled,
    cCacheClusterSize,
    cCanarySettings,
    cCacheClusterEnabled,
    cDescription,
    cTags,
    cRestAPIId,
    cStageName,
    cDeploymentId,

    -- * Destructuring the response
    Stage (..),
    mkStage,

    -- ** Response lenses
    sDeploymentId,
    sVariables,
    sAccessLogSettings,
    sDocumentationVersion,
    sClientCertificateId,
    sTracingEnabled,
    sCreatedDate,
    sCacheClusterStatus,
    sMethodSettings,
    sLastUpdatedDate,
    sCacheClusterSize,
    sWebACLARN,
    sCanarySettings,
    sCacheClusterEnabled,
    sStageName,
    sDescription,
    sTags,
  )
where

import Network.AWS.APIGateway.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude
import qualified Network.AWS.Request as Req
import qualified Network.AWS.Response as Res

-- | Requests API Gateway to create a 'Stage' resource.
--
-- /See:/ 'mkCreateStage' smart constructor.
data CreateStage = CreateStage'
  { variables ::
      Lude.Maybe (Lude.HashMap Lude.Text (Lude.Text)),
    documentationVersion :: Lude.Maybe Lude.Text,
    tracingEnabled :: Lude.Maybe Lude.Bool,
    cacheClusterSize :: Lude.Maybe CacheClusterSize,
    canarySettings :: Lude.Maybe CanarySettings,
    cacheClusterEnabled :: Lude.Maybe Lude.Bool,
    description :: Lude.Maybe Lude.Text,
    tags :: Lude.Maybe (Lude.HashMap Lude.Text (Lude.Text)),
    restAPIId :: Lude.Text,
    stageName :: Lude.Text,
    deploymentId :: Lude.Text
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'CreateStage' with the minimum fields required to make a request.
--
-- * 'cacheClusterEnabled' - Whether cache clustering is enabled for the stage.
-- * 'cacheClusterSize' - The stage's cache cluster size.
-- * 'canarySettings' - The canary deployment settings of this stage.
-- * 'deploymentId' - [Required] The identifier of the 'Deployment' resource for the 'Stage' resource.
-- * 'description' - The description of the 'Stage' resource.
-- * 'documentationVersion' - The version of the associated API documentation.
-- * 'restAPIId' - [Required] The string identifier of the associated 'RestApi' .
-- * 'stageName' - [Required] The name for the 'Stage' resource. Stage names can only contain alphanumeric characters, hyphens, and underscores. Maximum length is 128 characters.
-- * 'tags' - The key-value map of strings. The valid character set is [a-zA-Z+-=._:/]. The tag key can be up to 128 characters and must not start with @aws:@ . The tag value can be up to 256 characters.
-- * 'tracingEnabled' - Specifies whether active tracing with X-ray is enabled for the 'Stage' .
-- * 'variables' - A map that defines the stage variables for the new 'Stage' resource. Variable names can have alphanumeric and underscore characters, and the values must match @[A-Za-z0-9-._~:/?#&=,]+@ .
mkCreateStage ::
  -- | 'restAPIId'
  Lude.Text ->
  -- | 'stageName'
  Lude.Text ->
  -- | 'deploymentId'
  Lude.Text ->
  CreateStage
mkCreateStage pRestAPIId_ pStageName_ pDeploymentId_ =
  CreateStage'
    { variables = Lude.Nothing,
      documentationVersion = Lude.Nothing,
      tracingEnabled = Lude.Nothing,
      cacheClusterSize = Lude.Nothing,
      canarySettings = Lude.Nothing,
      cacheClusterEnabled = Lude.Nothing,
      description = Lude.Nothing,
      tags = Lude.Nothing,
      restAPIId = pRestAPIId_,
      stageName = pStageName_,
      deploymentId = pDeploymentId_
    }

-- | A map that defines the stage variables for the new 'Stage' resource. Variable names can have alphanumeric and underscore characters, and the values must match @[A-Za-z0-9-._~:/?#&=,]+@ .
--
-- /Note:/ Consider using 'variables' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cVariables :: Lens.Lens' CreateStage (Lude.Maybe (Lude.HashMap Lude.Text (Lude.Text)))
cVariables = Lens.lens (variables :: CreateStage -> Lude.Maybe (Lude.HashMap Lude.Text (Lude.Text))) (\s a -> s {variables = a} :: CreateStage)
{-# DEPRECATED cVariables "Use generic-lens or generic-optics with 'variables' instead." #-}

-- | The version of the associated API documentation.
--
-- /Note:/ Consider using 'documentationVersion' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cDocumentationVersion :: Lens.Lens' CreateStage (Lude.Maybe Lude.Text)
cDocumentationVersion = Lens.lens (documentationVersion :: CreateStage -> Lude.Maybe Lude.Text) (\s a -> s {documentationVersion = a} :: CreateStage)
{-# DEPRECATED cDocumentationVersion "Use generic-lens or generic-optics with 'documentationVersion' instead." #-}

-- | Specifies whether active tracing with X-ray is enabled for the 'Stage' .
--
-- /Note:/ Consider using 'tracingEnabled' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cTracingEnabled :: Lens.Lens' CreateStage (Lude.Maybe Lude.Bool)
cTracingEnabled = Lens.lens (tracingEnabled :: CreateStage -> Lude.Maybe Lude.Bool) (\s a -> s {tracingEnabled = a} :: CreateStage)
{-# DEPRECATED cTracingEnabled "Use generic-lens or generic-optics with 'tracingEnabled' instead." #-}

-- | The stage's cache cluster size.
--
-- /Note:/ Consider using 'cacheClusterSize' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cCacheClusterSize :: Lens.Lens' CreateStage (Lude.Maybe CacheClusterSize)
cCacheClusterSize = Lens.lens (cacheClusterSize :: CreateStage -> Lude.Maybe CacheClusterSize) (\s a -> s {cacheClusterSize = a} :: CreateStage)
{-# DEPRECATED cCacheClusterSize "Use generic-lens or generic-optics with 'cacheClusterSize' instead." #-}

-- | The canary deployment settings of this stage.
--
-- /Note:/ Consider using 'canarySettings' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cCanarySettings :: Lens.Lens' CreateStage (Lude.Maybe CanarySettings)
cCanarySettings = Lens.lens (canarySettings :: CreateStage -> Lude.Maybe CanarySettings) (\s a -> s {canarySettings = a} :: CreateStage)
{-# DEPRECATED cCanarySettings "Use generic-lens or generic-optics with 'canarySettings' instead." #-}

-- | Whether cache clustering is enabled for the stage.
--
-- /Note:/ Consider using 'cacheClusterEnabled' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cCacheClusterEnabled :: Lens.Lens' CreateStage (Lude.Maybe Lude.Bool)
cCacheClusterEnabled = Lens.lens (cacheClusterEnabled :: CreateStage -> Lude.Maybe Lude.Bool) (\s a -> s {cacheClusterEnabled = a} :: CreateStage)
{-# DEPRECATED cCacheClusterEnabled "Use generic-lens or generic-optics with 'cacheClusterEnabled' instead." #-}

-- | The description of the 'Stage' resource.
--
-- /Note:/ Consider using 'description' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cDescription :: Lens.Lens' CreateStage (Lude.Maybe Lude.Text)
cDescription = Lens.lens (description :: CreateStage -> Lude.Maybe Lude.Text) (\s a -> s {description = a} :: CreateStage)
{-# DEPRECATED cDescription "Use generic-lens or generic-optics with 'description' instead." #-}

-- | The key-value map of strings. The valid character set is [a-zA-Z+-=._:/]. The tag key can be up to 128 characters and must not start with @aws:@ . The tag value can be up to 256 characters.
--
-- /Note:/ Consider using 'tags' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cTags :: Lens.Lens' CreateStage (Lude.Maybe (Lude.HashMap Lude.Text (Lude.Text)))
cTags = Lens.lens (tags :: CreateStage -> Lude.Maybe (Lude.HashMap Lude.Text (Lude.Text))) (\s a -> s {tags = a} :: CreateStage)
{-# DEPRECATED cTags "Use generic-lens or generic-optics with 'tags' instead." #-}

-- | [Required] The string identifier of the associated 'RestApi' .
--
-- /Note:/ Consider using 'restAPIId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cRestAPIId :: Lens.Lens' CreateStage Lude.Text
cRestAPIId = Lens.lens (restAPIId :: CreateStage -> Lude.Text) (\s a -> s {restAPIId = a} :: CreateStage)
{-# DEPRECATED cRestAPIId "Use generic-lens or generic-optics with 'restAPIId' instead." #-}

-- | [Required] The name for the 'Stage' resource. Stage names can only contain alphanumeric characters, hyphens, and underscores. Maximum length is 128 characters.
--
-- /Note:/ Consider using 'stageName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cStageName :: Lens.Lens' CreateStage Lude.Text
cStageName = Lens.lens (stageName :: CreateStage -> Lude.Text) (\s a -> s {stageName = a} :: CreateStage)
{-# DEPRECATED cStageName "Use generic-lens or generic-optics with 'stageName' instead." #-}

-- | [Required] The identifier of the 'Deployment' resource for the 'Stage' resource.
--
-- /Note:/ Consider using 'deploymentId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cDeploymentId :: Lens.Lens' CreateStage Lude.Text
cDeploymentId = Lens.lens (deploymentId :: CreateStage -> Lude.Text) (\s a -> s {deploymentId = a} :: CreateStage)
{-# DEPRECATED cDeploymentId "Use generic-lens or generic-optics with 'deploymentId' instead." #-}

instance Lude.AWSRequest CreateStage where
  type Rs CreateStage = Stage
  request = Req.postJSON apiGatewayService
  response = Res.receiveJSON (\s h x -> Lude.eitherParseJSON x)

instance Lude.ToHeaders CreateStage where
  toHeaders =
    Lude.const
      ( Lude.mconcat
          ["Accept" Lude.=# ("application/json" :: Lude.ByteString)]
      )

instance Lude.ToJSON CreateStage where
  toJSON CreateStage' {..} =
    Lude.object
      ( Lude.catMaybes
          [ ("variables" Lude..=) Lude.<$> variables,
            ("documentationVersion" Lude..=) Lude.<$> documentationVersion,
            ("tracingEnabled" Lude..=) Lude.<$> tracingEnabled,
            ("cacheClusterSize" Lude..=) Lude.<$> cacheClusterSize,
            ("canarySettings" Lude..=) Lude.<$> canarySettings,
            ("cacheClusterEnabled" Lude..=) Lude.<$> cacheClusterEnabled,
            ("description" Lude..=) Lude.<$> description,
            ("tags" Lude..=) Lude.<$> tags,
            Lude.Just ("stageName" Lude..= stageName),
            Lude.Just ("deploymentId" Lude..= deploymentId)
          ]
      )

instance Lude.ToPath CreateStage where
  toPath CreateStage' {..} =
    Lude.mconcat ["/restapis/", Lude.toBS restAPIId, "/stages"]

instance Lude.ToQuery CreateStage where
  toQuery = Lude.const Lude.mempty