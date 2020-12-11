{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudHSM.ListHAPGs
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This is documentation for __AWS CloudHSM Classic__ . For more information, see <http://aws.amazon.com/cloudhsm/faqs-classic/ AWS CloudHSM Classic FAQs> , the <http://docs.aws.amazon.com/cloudhsm/classic/userguide/ AWS CloudHSM Classic User Guide> , and the <http://docs.aws.amazon.com/cloudhsm/classic/APIReference/ AWS CloudHSM Classic API Reference> .
--
-- __For information about the current version of AWS CloudHSM__ , see <http://aws.amazon.com/cloudhsm/ AWS CloudHSM> , the <http://docs.aws.amazon.com/cloudhsm/latest/userguide/ AWS CloudHSM User Guide> , and the <http://docs.aws.amazon.com/cloudhsm/latest/APIReference/ AWS CloudHSM API Reference> .
-- Lists the high-availability partition groups for the account.
-- This operation supports pagination with the use of the @NextToken@ member. If more results are available, the @NextToken@ member of the response contains a token that you pass in the next call to @ListHapgs@ to retrieve the next set of items.
--
-- This operation returns paginated results.
module Network.AWS.CloudHSM.ListHAPGs
  ( -- * Creating a request
    ListHAPGs (..),
    mkListHAPGs,

    -- ** Request lenses
    lhNextToken,

    -- * Destructuring the response
    ListHAPGsResponse (..),
    mkListHAPGsResponse,

    -- ** Response lenses
    lhrsNextToken,
    lhrsResponseStatus,
    lhrsHAPGList,
  )
where

import Network.AWS.CloudHSM.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Page
import qualified Network.AWS.Prelude as Lude
import qualified Network.AWS.Request as Req
import qualified Network.AWS.Response as Res

-- | /See:/ 'mkListHAPGs' smart constructor.
newtype ListHAPGs = ListHAPGs' {nextToken :: Lude.Maybe Lude.Text}
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving newtype (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'ListHAPGs' with the minimum fields required to make a request.
--
-- * 'nextToken' - The @NextToken@ value from a previous call to @ListHapgs@ . Pass null if this is the first call.
mkListHAPGs ::
  ListHAPGs
mkListHAPGs = ListHAPGs' {nextToken = Lude.Nothing}

-- | The @NextToken@ value from a previous call to @ListHapgs@ . Pass null if this is the first call.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lhNextToken :: Lens.Lens' ListHAPGs (Lude.Maybe Lude.Text)
lhNextToken = Lens.lens (nextToken :: ListHAPGs -> Lude.Maybe Lude.Text) (\s a -> s {nextToken = a} :: ListHAPGs)
{-# DEPRECATED lhNextToken "Use generic-lens or generic-optics with 'nextToken' instead." #-}

instance Page.AWSPager ListHAPGs where
  page rq rs
    | Page.stop (rs Lens.^. lhrsNextToken) = Lude.Nothing
    | Page.stop (rs Lens.^. lhrsHAPGList) = Lude.Nothing
    | Lude.otherwise =
      Lude.Just Lude.$
        rq
          Lude.& lhNextToken Lens..~ rs Lens.^. lhrsNextToken

instance Lude.AWSRequest ListHAPGs where
  type Rs ListHAPGs = ListHAPGsResponse
  request = Req.postJSON cloudHSMService
  response =
    Res.receiveJSON
      ( \s h x ->
          ListHAPGsResponse'
            Lude.<$> (x Lude..?> "NextToken")
            Lude.<*> (Lude.pure (Lude.fromEnum s))
            Lude.<*> (x Lude..?> "HapgList" Lude..!@ Lude.mempty)
      )

instance Lude.ToHeaders ListHAPGs where
  toHeaders =
    Lude.const
      ( Lude.mconcat
          [ "X-Amz-Target"
              Lude.=# ("CloudHsmFrontendService.ListHapgs" :: Lude.ByteString),
            "Content-Type"
              Lude.=# ("application/x-amz-json-1.1" :: Lude.ByteString)
          ]
      )

instance Lude.ToJSON ListHAPGs where
  toJSON ListHAPGs' {..} =
    Lude.object
      (Lude.catMaybes [("NextToken" Lude..=) Lude.<$> nextToken])

instance Lude.ToPath ListHAPGs where
  toPath = Lude.const "/"

instance Lude.ToQuery ListHAPGs where
  toQuery = Lude.const Lude.mempty

-- | /See:/ 'mkListHAPGsResponse' smart constructor.
data ListHAPGsResponse = ListHAPGsResponse'
  { nextToken ::
      Lude.Maybe Lude.Text,
    responseStatus :: Lude.Int,
    hapgList :: [Lude.Text]
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'ListHAPGsResponse' with the minimum fields required to make a request.
--
-- * 'hapgList' - The list of high-availability partition groups.
-- * 'nextToken' - If not null, more results are available. Pass this value to @ListHapgs@ to retrieve the next set of items.
-- * 'responseStatus' - The response status code.
mkListHAPGsResponse ::
  -- | 'responseStatus'
  Lude.Int ->
  ListHAPGsResponse
mkListHAPGsResponse pResponseStatus_ =
  ListHAPGsResponse'
    { nextToken = Lude.Nothing,
      responseStatus = pResponseStatus_,
      hapgList = Lude.mempty
    }

-- | If not null, more results are available. Pass this value to @ListHapgs@ to retrieve the next set of items.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lhrsNextToken :: Lens.Lens' ListHAPGsResponse (Lude.Maybe Lude.Text)
lhrsNextToken = Lens.lens (nextToken :: ListHAPGsResponse -> Lude.Maybe Lude.Text) (\s a -> s {nextToken = a} :: ListHAPGsResponse)
{-# DEPRECATED lhrsNextToken "Use generic-lens or generic-optics with 'nextToken' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lhrsResponseStatus :: Lens.Lens' ListHAPGsResponse Lude.Int
lhrsResponseStatus = Lens.lens (responseStatus :: ListHAPGsResponse -> Lude.Int) (\s a -> s {responseStatus = a} :: ListHAPGsResponse)
{-# DEPRECATED lhrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}

-- | The list of high-availability partition groups.
--
-- /Note:/ Consider using 'hapgList' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lhrsHAPGList :: Lens.Lens' ListHAPGsResponse [Lude.Text]
lhrsHAPGList = Lens.lens (hapgList :: ListHAPGsResponse -> [Lude.Text]) (\s a -> s {hapgList = a} :: ListHAPGsResponse)
{-# DEPRECATED lhrsHAPGList "Use generic-lens or generic-optics with 'hapgList' instead." #-}