{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.CopyFpgaImage
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Copies the specified Amazon FPGA Image (AFI) to the current Region.
module Network.AWS.EC2.CopyFpgaImage
  ( -- * Creating a request
    CopyFpgaImage (..),
    mkCopyFpgaImage,

    -- ** Request lenses
    cfiClientToken,
    cfiName,
    cfiDescription,
    cfiDryRun,
    cfiSourceFpgaImageId,
    cfiSourceRegion,

    -- * Destructuring the response
    CopyFpgaImageResponse (..),
    mkCopyFpgaImageResponse,

    -- ** Response lenses
    coprsFpgaImageId,
    coprsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude
import qualified Network.AWS.Request as Req
import qualified Network.AWS.Response as Res

-- | /See:/ 'mkCopyFpgaImage' smart constructor.
data CopyFpgaImage = CopyFpgaImage'
  { clientToken ::
      Lude.Maybe Lude.Text,
    name :: Lude.Maybe Lude.Text,
    description :: Lude.Maybe Lude.Text,
    dryRun :: Lude.Maybe Lude.Bool,
    sourceFpgaImageId :: Lude.Text,
    sourceRegion :: Lude.Text
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'CopyFpgaImage' with the minimum fields required to make a request.
--
-- * 'clientToken' - Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html Ensuring Idempotency> .
-- * 'description' - The description for the new AFI.
-- * 'dryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
-- * 'name' - The name for the new AFI. The default is the name of the source AFI.
-- * 'sourceFpgaImageId' - The ID of the source AFI.
-- * 'sourceRegion' - The Region that contains the source AFI.
mkCopyFpgaImage ::
  -- | 'sourceFpgaImageId'
  Lude.Text ->
  -- | 'sourceRegion'
  Lude.Text ->
  CopyFpgaImage
mkCopyFpgaImage pSourceFpgaImageId_ pSourceRegion_ =
  CopyFpgaImage'
    { clientToken = Lude.Nothing,
      name = Lude.Nothing,
      description = Lude.Nothing,
      dryRun = Lude.Nothing,
      sourceFpgaImageId = pSourceFpgaImageId_,
      sourceRegion = pSourceRegion_
    }

-- | Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html Ensuring Idempotency> .
--
-- /Note:/ Consider using 'clientToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cfiClientToken :: Lens.Lens' CopyFpgaImage (Lude.Maybe Lude.Text)
cfiClientToken = Lens.lens (clientToken :: CopyFpgaImage -> Lude.Maybe Lude.Text) (\s a -> s {clientToken = a} :: CopyFpgaImage)
{-# DEPRECATED cfiClientToken "Use generic-lens or generic-optics with 'clientToken' instead." #-}

-- | The name for the new AFI. The default is the name of the source AFI.
--
-- /Note:/ Consider using 'name' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cfiName :: Lens.Lens' CopyFpgaImage (Lude.Maybe Lude.Text)
cfiName = Lens.lens (name :: CopyFpgaImage -> Lude.Maybe Lude.Text) (\s a -> s {name = a} :: CopyFpgaImage)
{-# DEPRECATED cfiName "Use generic-lens or generic-optics with 'name' instead." #-}

-- | The description for the new AFI.
--
-- /Note:/ Consider using 'description' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cfiDescription :: Lens.Lens' CopyFpgaImage (Lude.Maybe Lude.Text)
cfiDescription = Lens.lens (description :: CopyFpgaImage -> Lude.Maybe Lude.Text) (\s a -> s {description = a} :: CopyFpgaImage)
{-# DEPRECATED cfiDescription "Use generic-lens or generic-optics with 'description' instead." #-}

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- /Note:/ Consider using 'dryRun' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cfiDryRun :: Lens.Lens' CopyFpgaImage (Lude.Maybe Lude.Bool)
cfiDryRun = Lens.lens (dryRun :: CopyFpgaImage -> Lude.Maybe Lude.Bool) (\s a -> s {dryRun = a} :: CopyFpgaImage)
{-# DEPRECATED cfiDryRun "Use generic-lens or generic-optics with 'dryRun' instead." #-}

-- | The ID of the source AFI.
--
-- /Note:/ Consider using 'sourceFpgaImageId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cfiSourceFpgaImageId :: Lens.Lens' CopyFpgaImage Lude.Text
cfiSourceFpgaImageId = Lens.lens (sourceFpgaImageId :: CopyFpgaImage -> Lude.Text) (\s a -> s {sourceFpgaImageId = a} :: CopyFpgaImage)
{-# DEPRECATED cfiSourceFpgaImageId "Use generic-lens or generic-optics with 'sourceFpgaImageId' instead." #-}

-- | The Region that contains the source AFI.
--
-- /Note:/ Consider using 'sourceRegion' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cfiSourceRegion :: Lens.Lens' CopyFpgaImage Lude.Text
cfiSourceRegion = Lens.lens (sourceRegion :: CopyFpgaImage -> Lude.Text) (\s a -> s {sourceRegion = a} :: CopyFpgaImage)
{-# DEPRECATED cfiSourceRegion "Use generic-lens or generic-optics with 'sourceRegion' instead." #-}

instance Lude.AWSRequest CopyFpgaImage where
  type Rs CopyFpgaImage = CopyFpgaImageResponse
  request = Req.postQuery ec2Service
  response =
    Res.receiveXML
      ( \s h x ->
          CopyFpgaImageResponse'
            Lude.<$> (x Lude..@? "fpgaImageId") Lude.<*> (Lude.pure (Lude.fromEnum s))
      )

instance Lude.ToHeaders CopyFpgaImage where
  toHeaders = Lude.const Lude.mempty

instance Lude.ToPath CopyFpgaImage where
  toPath = Lude.const "/"

instance Lude.ToQuery CopyFpgaImage where
  toQuery CopyFpgaImage' {..} =
    Lude.mconcat
      [ "Action" Lude.=: ("CopyFpgaImage" :: Lude.ByteString),
        "Version" Lude.=: ("2016-11-15" :: Lude.ByteString),
        "ClientToken" Lude.=: clientToken,
        "Name" Lude.=: name,
        "Description" Lude.=: description,
        "DryRun" Lude.=: dryRun,
        "SourceFpgaImageId" Lude.=: sourceFpgaImageId,
        "SourceRegion" Lude.=: sourceRegion
      ]

-- | /See:/ 'mkCopyFpgaImageResponse' smart constructor.
data CopyFpgaImageResponse = CopyFpgaImageResponse'
  { fpgaImageId ::
      Lude.Maybe Lude.Text,
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

-- | Creates a value of 'CopyFpgaImageResponse' with the minimum fields required to make a request.
--
-- * 'fpgaImageId' - The ID of the new AFI.
-- * 'responseStatus' - The response status code.
mkCopyFpgaImageResponse ::
  -- | 'responseStatus'
  Lude.Int ->
  CopyFpgaImageResponse
mkCopyFpgaImageResponse pResponseStatus_ =
  CopyFpgaImageResponse'
    { fpgaImageId = Lude.Nothing,
      responseStatus = pResponseStatus_
    }

-- | The ID of the new AFI.
--
-- /Note:/ Consider using 'fpgaImageId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
coprsFpgaImageId :: Lens.Lens' CopyFpgaImageResponse (Lude.Maybe Lude.Text)
coprsFpgaImageId = Lens.lens (fpgaImageId :: CopyFpgaImageResponse -> Lude.Maybe Lude.Text) (\s a -> s {fpgaImageId = a} :: CopyFpgaImageResponse)
{-# DEPRECATED coprsFpgaImageId "Use generic-lens or generic-optics with 'fpgaImageId' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
coprsResponseStatus :: Lens.Lens' CopyFpgaImageResponse Lude.Int
coprsResponseStatus = Lens.lens (responseStatus :: CopyFpgaImageResponse -> Lude.Int) (\s a -> s {responseStatus = a} :: CopyFpgaImageResponse)
{-# DEPRECATED coprsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}