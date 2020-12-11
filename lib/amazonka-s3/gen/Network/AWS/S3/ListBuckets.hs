{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.S3.ListBuckets
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of all buckets owned by the authenticated sender of the request.
module Network.AWS.S3.ListBuckets
  ( -- * Creating a request
    ListBuckets (..),
    mkListBuckets,

    -- * Destructuring the response
    ListBucketsResponse (..),
    mkListBucketsResponse,

    -- ** Response lenses
    lbrsBuckets,
    lbrsOwner,
    lbrsResponseStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude
import qualified Network.AWS.Request as Req
import qualified Network.AWS.Response as Res
import Network.AWS.S3.Types

-- | /See:/ 'mkListBuckets' smart constructor.
data ListBuckets = ListBuckets'
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'ListBuckets' with the minimum fields required to make a request.
mkListBuckets ::
  ListBuckets
mkListBuckets = ListBuckets'

instance Lude.AWSRequest ListBuckets where
  type Rs ListBuckets = ListBucketsResponse
  request = Req.get s3Service
  response =
    Res.receiveXML
      ( \s h x ->
          ListBucketsResponse'
            Lude.<$> ( x Lude..@? "Buckets" Lude..!@ Lude.mempty
                         Lude.>>= Lude.may (Lude.parseXMLList "Bucket")
                     )
            Lude.<*> (x Lude..@? "Owner")
            Lude.<*> (Lude.pure (Lude.fromEnum s))
      )

instance Lude.ToHeaders ListBuckets where
  toHeaders = Lude.const Lude.mempty

instance Lude.ToPath ListBuckets where
  toPath = Lude.const "/"

instance Lude.ToQuery ListBuckets where
  toQuery = Lude.const Lude.mempty

-- | /See:/ 'mkListBucketsResponse' smart constructor.
data ListBucketsResponse = ListBucketsResponse'
  { buckets ::
      Lude.Maybe [Bucket],
    owner :: Lude.Maybe Owner,
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

-- | Creates a value of 'ListBucketsResponse' with the minimum fields required to make a request.
--
-- * 'buckets' - The list of buckets owned by the requestor.
-- * 'owner' - The owner of the buckets listed.
-- * 'responseStatus' - The response status code.
mkListBucketsResponse ::
  -- | 'responseStatus'
  Lude.Int ->
  ListBucketsResponse
mkListBucketsResponse pResponseStatus_ =
  ListBucketsResponse'
    { buckets = Lude.Nothing,
      owner = Lude.Nothing,
      responseStatus = pResponseStatus_
    }

-- | The list of buckets owned by the requestor.
--
-- /Note:/ Consider using 'buckets' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lbrsBuckets :: Lens.Lens' ListBucketsResponse (Lude.Maybe [Bucket])
lbrsBuckets = Lens.lens (buckets :: ListBucketsResponse -> Lude.Maybe [Bucket]) (\s a -> s {buckets = a} :: ListBucketsResponse)
{-# DEPRECATED lbrsBuckets "Use generic-lens or generic-optics with 'buckets' instead." #-}

-- | The owner of the buckets listed.
--
-- /Note:/ Consider using 'owner' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lbrsOwner :: Lens.Lens' ListBucketsResponse (Lude.Maybe Owner)
lbrsOwner = Lens.lens (owner :: ListBucketsResponse -> Lude.Maybe Owner) (\s a -> s {owner = a} :: ListBucketsResponse)
{-# DEPRECATED lbrsOwner "Use generic-lens or generic-optics with 'owner' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lbrsResponseStatus :: Lens.Lens' ListBucketsResponse Lude.Int
lbrsResponseStatus = Lens.lens (responseStatus :: ListBucketsResponse -> Lude.Int) (\s a -> s {responseStatus = a} :: ListBucketsResponse)
{-# DEPRECATED lbrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}