{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ServiceCatalog.ListPortfolioAccess
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the account IDs that have access to the specified portfolio.
--
-- A delegated admin can list the accounts that have access to the shared portfolio. Note that if a delegated admin is de-registered, they can no longer perform this operation.
module Network.AWS.ServiceCatalog.ListPortfolioAccess
  ( -- * Creating a request
    ListPortfolioAccess (..),
    mkListPortfolioAccess,

    -- ** Request lenses
    lOrganizationParentId,
    lAcceptLanguage,
    lPageToken,
    lPageSize,
    lPortfolioId,

    -- * Destructuring the response
    ListPortfolioAccessResponse (..),
    mkListPortfolioAccessResponse,

    -- ** Response lenses
    lparsNextPageToken,
    lparsAccountIds,
    lparsResponseStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude
import qualified Network.AWS.Request as Req
import qualified Network.AWS.Response as Res
import Network.AWS.ServiceCatalog.Types

-- | /See:/ 'mkListPortfolioAccess' smart constructor.
data ListPortfolioAccess = ListPortfolioAccess'
  { organizationParentId ::
      Lude.Maybe Lude.Text,
    acceptLanguage :: Lude.Maybe Lude.Text,
    pageToken :: Lude.Maybe Lude.Text,
    pageSize :: Lude.Maybe Lude.Natural,
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

-- | Creates a value of 'ListPortfolioAccess' with the minimum fields required to make a request.
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
-- * 'organizationParentId' - The ID of an organization node the portfolio is shared with. All children of this node with an inherited portfolio share will be returned.
-- * 'pageSize' - The maximum number of items to return with this call.
-- * 'pageToken' - The page token for the next set of results. To retrieve the first set of results, use null.
-- * 'portfolioId' - The portfolio identifier.
mkListPortfolioAccess ::
  -- | 'portfolioId'
  Lude.Text ->
  ListPortfolioAccess
mkListPortfolioAccess pPortfolioId_ =
  ListPortfolioAccess'
    { organizationParentId = Lude.Nothing,
      acceptLanguage = Lude.Nothing,
      pageToken = Lude.Nothing,
      pageSize = Lude.Nothing,
      portfolioId = pPortfolioId_
    }

-- | The ID of an organization node the portfolio is shared with. All children of this node with an inherited portfolio share will be returned.
--
-- /Note:/ Consider using 'organizationParentId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lOrganizationParentId :: Lens.Lens' ListPortfolioAccess (Lude.Maybe Lude.Text)
lOrganizationParentId = Lens.lens (organizationParentId :: ListPortfolioAccess -> Lude.Maybe Lude.Text) (\s a -> s {organizationParentId = a} :: ListPortfolioAccess)
{-# DEPRECATED lOrganizationParentId "Use generic-lens or generic-optics with 'organizationParentId' instead." #-}

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
lAcceptLanguage :: Lens.Lens' ListPortfolioAccess (Lude.Maybe Lude.Text)
lAcceptLanguage = Lens.lens (acceptLanguage :: ListPortfolioAccess -> Lude.Maybe Lude.Text) (\s a -> s {acceptLanguage = a} :: ListPortfolioAccess)
{-# DEPRECATED lAcceptLanguage "Use generic-lens or generic-optics with 'acceptLanguage' instead." #-}

-- | The page token for the next set of results. To retrieve the first set of results, use null.
--
-- /Note:/ Consider using 'pageToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lPageToken :: Lens.Lens' ListPortfolioAccess (Lude.Maybe Lude.Text)
lPageToken = Lens.lens (pageToken :: ListPortfolioAccess -> Lude.Maybe Lude.Text) (\s a -> s {pageToken = a} :: ListPortfolioAccess)
{-# DEPRECATED lPageToken "Use generic-lens or generic-optics with 'pageToken' instead." #-}

-- | The maximum number of items to return with this call.
--
-- /Note:/ Consider using 'pageSize' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lPageSize :: Lens.Lens' ListPortfolioAccess (Lude.Maybe Lude.Natural)
lPageSize = Lens.lens (pageSize :: ListPortfolioAccess -> Lude.Maybe Lude.Natural) (\s a -> s {pageSize = a} :: ListPortfolioAccess)
{-# DEPRECATED lPageSize "Use generic-lens or generic-optics with 'pageSize' instead." #-}

-- | The portfolio identifier.
--
-- /Note:/ Consider using 'portfolioId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lPortfolioId :: Lens.Lens' ListPortfolioAccess Lude.Text
lPortfolioId = Lens.lens (portfolioId :: ListPortfolioAccess -> Lude.Text) (\s a -> s {portfolioId = a} :: ListPortfolioAccess)
{-# DEPRECATED lPortfolioId "Use generic-lens or generic-optics with 'portfolioId' instead." #-}

instance Lude.AWSRequest ListPortfolioAccess where
  type Rs ListPortfolioAccess = ListPortfolioAccessResponse
  request = Req.postJSON serviceCatalogService
  response =
    Res.receiveJSON
      ( \s h x ->
          ListPortfolioAccessResponse'
            Lude.<$> (x Lude..?> "NextPageToken")
            Lude.<*> (x Lude..?> "AccountIds" Lude..!@ Lude.mempty)
            Lude.<*> (Lude.pure (Lude.fromEnum s))
      )

instance Lude.ToHeaders ListPortfolioAccess where
  toHeaders =
    Lude.const
      ( Lude.mconcat
          [ "X-Amz-Target"
              Lude.=# ( "AWS242ServiceCatalogService.ListPortfolioAccess" ::
                          Lude.ByteString
                      ),
            "Content-Type"
              Lude.=# ("application/x-amz-json-1.1" :: Lude.ByteString)
          ]
      )

instance Lude.ToJSON ListPortfolioAccess where
  toJSON ListPortfolioAccess' {..} =
    Lude.object
      ( Lude.catMaybes
          [ ("OrganizationParentId" Lude..=) Lude.<$> organizationParentId,
            ("AcceptLanguage" Lude..=) Lude.<$> acceptLanguage,
            ("PageToken" Lude..=) Lude.<$> pageToken,
            ("PageSize" Lude..=) Lude.<$> pageSize,
            Lude.Just ("PortfolioId" Lude..= portfolioId)
          ]
      )

instance Lude.ToPath ListPortfolioAccess where
  toPath = Lude.const "/"

instance Lude.ToQuery ListPortfolioAccess where
  toQuery = Lude.const Lude.mempty

-- | /See:/ 'mkListPortfolioAccessResponse' smart constructor.
data ListPortfolioAccessResponse = ListPortfolioAccessResponse'
  { nextPageToken ::
      Lude.Maybe Lude.Text,
    accountIds ::
      Lude.Maybe [Lude.Text],
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

-- | Creates a value of 'ListPortfolioAccessResponse' with the minimum fields required to make a request.
--
-- * 'accountIds' - Information about the AWS accounts with access to the portfolio.
-- * 'nextPageToken' - The page token to use to retrieve the next set of results. If there are no additional results, this value is null.
-- * 'responseStatus' - The response status code.
mkListPortfolioAccessResponse ::
  -- | 'responseStatus'
  Lude.Int ->
  ListPortfolioAccessResponse
mkListPortfolioAccessResponse pResponseStatus_ =
  ListPortfolioAccessResponse'
    { nextPageToken = Lude.Nothing,
      accountIds = Lude.Nothing,
      responseStatus = pResponseStatus_
    }

-- | The page token to use to retrieve the next set of results. If there are no additional results, this value is null.
--
-- /Note:/ Consider using 'nextPageToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lparsNextPageToken :: Lens.Lens' ListPortfolioAccessResponse (Lude.Maybe Lude.Text)
lparsNextPageToken = Lens.lens (nextPageToken :: ListPortfolioAccessResponse -> Lude.Maybe Lude.Text) (\s a -> s {nextPageToken = a} :: ListPortfolioAccessResponse)
{-# DEPRECATED lparsNextPageToken "Use generic-lens or generic-optics with 'nextPageToken' instead." #-}

-- | Information about the AWS accounts with access to the portfolio.
--
-- /Note:/ Consider using 'accountIds' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lparsAccountIds :: Lens.Lens' ListPortfolioAccessResponse (Lude.Maybe [Lude.Text])
lparsAccountIds = Lens.lens (accountIds :: ListPortfolioAccessResponse -> Lude.Maybe [Lude.Text]) (\s a -> s {accountIds = a} :: ListPortfolioAccessResponse)
{-# DEPRECATED lparsAccountIds "Use generic-lens or generic-optics with 'accountIds' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lparsResponseStatus :: Lens.Lens' ListPortfolioAccessResponse Lude.Int
lparsResponseStatus = Lens.lens (responseStatus :: ListPortfolioAccessResponse -> Lude.Int) (\s a -> s {responseStatus = a} :: ListPortfolioAccessResponse)
{-# DEPRECATED lparsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}