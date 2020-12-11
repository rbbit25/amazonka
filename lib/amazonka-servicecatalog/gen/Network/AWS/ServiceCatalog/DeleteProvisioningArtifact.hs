{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ServiceCatalog.DeleteProvisioningArtifact
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified provisioning artifact (also known as a version) for the specified product.
--
-- You cannot delete a provisioning artifact associated with a product that was shared with you. You cannot delete the last provisioning artifact for a product, because a product must have at least one provisioning artifact.
module Network.AWS.ServiceCatalog.DeleteProvisioningArtifact
  ( -- * Creating a request
    DeleteProvisioningArtifact (..),
    mkDeleteProvisioningArtifact,

    -- ** Request lenses
    dpapAcceptLanguage,
    dpapProductId,
    dpapProvisioningArtifactId,

    -- * Destructuring the response
    DeleteProvisioningArtifactResponse (..),
    mkDeleteProvisioningArtifactResponse,

    -- ** Response lenses
    dparsResponseStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude
import qualified Network.AWS.Request as Req
import qualified Network.AWS.Response as Res
import Network.AWS.ServiceCatalog.Types

-- | /See:/ 'mkDeleteProvisioningArtifact' smart constructor.
data DeleteProvisioningArtifact = DeleteProvisioningArtifact'
  { acceptLanguage ::
      Lude.Maybe Lude.Text,
    productId :: Lude.Text,
    provisioningArtifactId :: Lude.Text
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'DeleteProvisioningArtifact' with the minimum fields required to make a request.
--
-- * 'acceptLanguage' - The language code.
--
--
--     * @en@ - English (default)
--
--
--     * @jp@ - Japanese
--
--
--     * @zh@ - Chinese
--
--
-- * 'productId' - The product identifier.
-- * 'provisioningArtifactId' - The identifier of the provisioning artifact.
mkDeleteProvisioningArtifact ::
  -- | 'productId'
  Lude.Text ->
  -- | 'provisioningArtifactId'
  Lude.Text ->
  DeleteProvisioningArtifact
mkDeleteProvisioningArtifact pProductId_ pProvisioningArtifactId_ =
  DeleteProvisioningArtifact'
    { acceptLanguage = Lude.Nothing,
      productId = pProductId_,
      provisioningArtifactId = pProvisioningArtifactId_
    }

-- | The language code.
--
--
--     * @en@ - English (default)
--
--
--     * @jp@ - Japanese
--
--
--     * @zh@ - Chinese
--
--
--
-- /Note:/ Consider using 'acceptLanguage' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dpapAcceptLanguage :: Lens.Lens' DeleteProvisioningArtifact (Lude.Maybe Lude.Text)
dpapAcceptLanguage = Lens.lens (acceptLanguage :: DeleteProvisioningArtifact -> Lude.Maybe Lude.Text) (\s a -> s {acceptLanguage = a} :: DeleteProvisioningArtifact)
{-# DEPRECATED dpapAcceptLanguage "Use generic-lens or generic-optics with 'acceptLanguage' instead." #-}

-- | The product identifier.
--
-- /Note:/ Consider using 'productId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dpapProductId :: Lens.Lens' DeleteProvisioningArtifact Lude.Text
dpapProductId = Lens.lens (productId :: DeleteProvisioningArtifact -> Lude.Text) (\s a -> s {productId = a} :: DeleteProvisioningArtifact)
{-# DEPRECATED dpapProductId "Use generic-lens or generic-optics with 'productId' instead." #-}

-- | The identifier of the provisioning artifact.
--
-- /Note:/ Consider using 'provisioningArtifactId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dpapProvisioningArtifactId :: Lens.Lens' DeleteProvisioningArtifact Lude.Text
dpapProvisioningArtifactId = Lens.lens (provisioningArtifactId :: DeleteProvisioningArtifact -> Lude.Text) (\s a -> s {provisioningArtifactId = a} :: DeleteProvisioningArtifact)
{-# DEPRECATED dpapProvisioningArtifactId "Use generic-lens or generic-optics with 'provisioningArtifactId' instead." #-}

instance Lude.AWSRequest DeleteProvisioningArtifact where
  type
    Rs DeleteProvisioningArtifact =
      DeleteProvisioningArtifactResponse
  request = Req.postJSON serviceCatalogService
  response =
    Res.receiveEmpty
      ( \s h x ->
          DeleteProvisioningArtifactResponse'
            Lude.<$> (Lude.pure (Lude.fromEnum s))
      )

instance Lude.ToHeaders DeleteProvisioningArtifact where
  toHeaders =
    Lude.const
      ( Lude.mconcat
          [ "X-Amz-Target"
              Lude.=# ( "AWS242ServiceCatalogService.DeleteProvisioningArtifact" ::
                          Lude.ByteString
                      ),
            "Content-Type"
              Lude.=# ("application/x-amz-json-1.1" :: Lude.ByteString)
          ]
      )

instance Lude.ToJSON DeleteProvisioningArtifact where
  toJSON DeleteProvisioningArtifact' {..} =
    Lude.object
      ( Lude.catMaybes
          [ ("AcceptLanguage" Lude..=) Lude.<$> acceptLanguage,
            Lude.Just ("ProductId" Lude..= productId),
            Lude.Just
              ("ProvisioningArtifactId" Lude..= provisioningArtifactId)
          ]
      )

instance Lude.ToPath DeleteProvisioningArtifact where
  toPath = Lude.const "/"

instance Lude.ToQuery DeleteProvisioningArtifact where
  toQuery = Lude.const Lude.mempty

-- | /See:/ 'mkDeleteProvisioningArtifactResponse' smart constructor.
newtype DeleteProvisioningArtifactResponse = DeleteProvisioningArtifactResponse'
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

-- | Creates a value of 'DeleteProvisioningArtifactResponse' with the minimum fields required to make a request.
--
-- * 'responseStatus' - The response status code.
mkDeleteProvisioningArtifactResponse ::
  -- | 'responseStatus'
  Lude.Int ->
  DeleteProvisioningArtifactResponse
mkDeleteProvisioningArtifactResponse pResponseStatus_ =
  DeleteProvisioningArtifactResponse'
    { responseStatus =
        pResponseStatus_
    }

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dparsResponseStatus :: Lens.Lens' DeleteProvisioningArtifactResponse Lude.Int
dparsResponseStatus = Lens.lens (responseStatus :: DeleteProvisioningArtifactResponse -> Lude.Int) (\s a -> s {responseStatus = a} :: DeleteProvisioningArtifactResponse)
{-# DEPRECATED dparsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}