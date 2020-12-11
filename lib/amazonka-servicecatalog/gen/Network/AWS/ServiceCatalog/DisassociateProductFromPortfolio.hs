{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ServiceCatalog.DisassociateProductFromPortfolio
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Disassociates the specified product from the specified portfolio.
--
-- A delegated admin is authorized to invoke this command.
module Network.AWS.ServiceCatalog.DisassociateProductFromPortfolio
  ( -- * Creating a request
    DisassociateProductFromPortfolio (..),
    mkDisassociateProductFromPortfolio,

    -- ** Request lenses
    dpfpAcceptLanguage,
    dpfpProductId,
    dpfpPortfolioId,

    -- * Destructuring the response
    DisassociateProductFromPortfolioResponse (..),
    mkDisassociateProductFromPortfolioResponse,

    -- ** Response lenses
    disrsResponseStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude
import qualified Network.AWS.Request as Req
import qualified Network.AWS.Response as Res
import Network.AWS.ServiceCatalog.Types

-- | /See:/ 'mkDisassociateProductFromPortfolio' smart constructor.
data DisassociateProductFromPortfolio = DisassociateProductFromPortfolio'
  { acceptLanguage ::
      Lude.Maybe Lude.Text,
    productId :: Lude.Text,
    portfolioId :: Lude.Text
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'DisassociateProductFromPortfolio' with the minimum fields required to make a request.
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
-- * 'portfolioId' - The portfolio identifier.
-- * 'productId' - The product identifier.
mkDisassociateProductFromPortfolio ::
  -- | 'productId'
  Lude.Text ->
  -- | 'portfolioId'
  Lude.Text ->
  DisassociateProductFromPortfolio
mkDisassociateProductFromPortfolio pProductId_ pPortfolioId_ =
  DisassociateProductFromPortfolio'
    { acceptLanguage = Lude.Nothing,
      productId = pProductId_,
      portfolioId = pPortfolioId_
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
dpfpAcceptLanguage :: Lens.Lens' DisassociateProductFromPortfolio (Lude.Maybe Lude.Text)
dpfpAcceptLanguage = Lens.lens (acceptLanguage :: DisassociateProductFromPortfolio -> Lude.Maybe Lude.Text) (\s a -> s {acceptLanguage = a} :: DisassociateProductFromPortfolio)
{-# DEPRECATED dpfpAcceptLanguage "Use generic-lens or generic-optics with 'acceptLanguage' instead." #-}

-- | The product identifier.
--
-- /Note:/ Consider using 'productId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dpfpProductId :: Lens.Lens' DisassociateProductFromPortfolio Lude.Text
dpfpProductId = Lens.lens (productId :: DisassociateProductFromPortfolio -> Lude.Text) (\s a -> s {productId = a} :: DisassociateProductFromPortfolio)
{-# DEPRECATED dpfpProductId "Use generic-lens or generic-optics with 'productId' instead." #-}

-- | The portfolio identifier.
--
-- /Note:/ Consider using 'portfolioId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dpfpPortfolioId :: Lens.Lens' DisassociateProductFromPortfolio Lude.Text
dpfpPortfolioId = Lens.lens (portfolioId :: DisassociateProductFromPortfolio -> Lude.Text) (\s a -> s {portfolioId = a} :: DisassociateProductFromPortfolio)
{-# DEPRECATED dpfpPortfolioId "Use generic-lens or generic-optics with 'portfolioId' instead." #-}

instance Lude.AWSRequest DisassociateProductFromPortfolio where
  type
    Rs DisassociateProductFromPortfolio =
      DisassociateProductFromPortfolioResponse
  request = Req.postJSON serviceCatalogService
  response =
    Res.receiveEmpty
      ( \s h x ->
          DisassociateProductFromPortfolioResponse'
            Lude.<$> (Lude.pure (Lude.fromEnum s))
      )

instance Lude.ToHeaders DisassociateProductFromPortfolio where
  toHeaders =
    Lude.const
      ( Lude.mconcat
          [ "X-Amz-Target"
              Lude.=# ( "AWS242ServiceCatalogService.DisassociateProductFromPortfolio" ::
                          Lude.ByteString
                      ),
            "Content-Type"
              Lude.=# ("application/x-amz-json-1.1" :: Lude.ByteString)
          ]
      )

instance Lude.ToJSON DisassociateProductFromPortfolio where
  toJSON DisassociateProductFromPortfolio' {..} =
    Lude.object
      ( Lude.catMaybes
          [ ("AcceptLanguage" Lude..=) Lude.<$> acceptLanguage,
            Lude.Just ("ProductId" Lude..= productId),
            Lude.Just ("PortfolioId" Lude..= portfolioId)
          ]
      )

instance Lude.ToPath DisassociateProductFromPortfolio where
  toPath = Lude.const "/"

instance Lude.ToQuery DisassociateProductFromPortfolio where
  toQuery = Lude.const Lude.mempty

-- | /See:/ 'mkDisassociateProductFromPortfolioResponse' smart constructor.
newtype DisassociateProductFromPortfolioResponse = DisassociateProductFromPortfolioResponse'
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

-- | Creates a value of 'DisassociateProductFromPortfolioResponse' with the minimum fields required to make a request.
--
-- * 'responseStatus' - The response status code.
mkDisassociateProductFromPortfolioResponse ::
  -- | 'responseStatus'
  Lude.Int ->
  DisassociateProductFromPortfolioResponse
mkDisassociateProductFromPortfolioResponse pResponseStatus_ =
  DisassociateProductFromPortfolioResponse'
    { responseStatus =
        pResponseStatus_
    }

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
disrsResponseStatus :: Lens.Lens' DisassociateProductFromPortfolioResponse Lude.Int
disrsResponseStatus = Lens.lens (responseStatus :: DisassociateProductFromPortfolioResponse -> Lude.Int) (\s a -> s {responseStatus = a} :: DisassociateProductFromPortfolioResponse)
{-# DEPRECATED disrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}