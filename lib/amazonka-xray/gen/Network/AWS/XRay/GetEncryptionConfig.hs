{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.XRay.GetEncryptionConfig
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the current encryption configuration for X-Ray data.
module Network.AWS.XRay.GetEncryptionConfig
  ( -- * Creating a request
    GetEncryptionConfig (..),
    mkGetEncryptionConfig,

    -- * Destructuring the response
    GetEncryptionConfigResponse (..),
    mkGetEncryptionConfigResponse,

    -- ** Response lenses
    gecrsEncryptionConfig,
    gecrsResponseStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude
import qualified Network.AWS.Request as Req
import qualified Network.AWS.Response as Res
import Network.AWS.XRay.Types

-- | /See:/ 'mkGetEncryptionConfig' smart constructor.
data GetEncryptionConfig = GetEncryptionConfig'
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'GetEncryptionConfig' with the minimum fields required to make a request.
mkGetEncryptionConfig ::
  GetEncryptionConfig
mkGetEncryptionConfig = GetEncryptionConfig'

instance Lude.AWSRequest GetEncryptionConfig where
  type Rs GetEncryptionConfig = GetEncryptionConfigResponse
  request = Req.postJSON xRayService
  response =
    Res.receiveJSON
      ( \s h x ->
          GetEncryptionConfigResponse'
            Lude.<$> (x Lude..?> "EncryptionConfig")
            Lude.<*> (Lude.pure (Lude.fromEnum s))
      )

instance Lude.ToHeaders GetEncryptionConfig where
  toHeaders = Lude.const Lude.mempty

instance Lude.ToJSON GetEncryptionConfig where
  toJSON = Lude.const (Lude.Object Lude.mempty)

instance Lude.ToPath GetEncryptionConfig where
  toPath = Lude.const "/EncryptionConfig"

instance Lude.ToQuery GetEncryptionConfig where
  toQuery = Lude.const Lude.mempty

-- | /See:/ 'mkGetEncryptionConfigResponse' smart constructor.
data GetEncryptionConfigResponse = GetEncryptionConfigResponse'
  { encryptionConfig ::
      Lude.Maybe EncryptionConfig,
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

-- | Creates a value of 'GetEncryptionConfigResponse' with the minimum fields required to make a request.
--
-- * 'encryptionConfig' - The encryption configuration document.
-- * 'responseStatus' - The response status code.
mkGetEncryptionConfigResponse ::
  -- | 'responseStatus'
  Lude.Int ->
  GetEncryptionConfigResponse
mkGetEncryptionConfigResponse pResponseStatus_ =
  GetEncryptionConfigResponse'
    { encryptionConfig = Lude.Nothing,
      responseStatus = pResponseStatus_
    }

-- | The encryption configuration document.
--
-- /Note:/ Consider using 'encryptionConfig' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gecrsEncryptionConfig :: Lens.Lens' GetEncryptionConfigResponse (Lude.Maybe EncryptionConfig)
gecrsEncryptionConfig = Lens.lens (encryptionConfig :: GetEncryptionConfigResponse -> Lude.Maybe EncryptionConfig) (\s a -> s {encryptionConfig = a} :: GetEncryptionConfigResponse)
{-# DEPRECATED gecrsEncryptionConfig "Use generic-lens or generic-optics with 'encryptionConfig' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gecrsResponseStatus :: Lens.Lens' GetEncryptionConfigResponse Lude.Int
gecrsResponseStatus = Lens.lens (responseStatus :: GetEncryptionConfigResponse -> Lude.Int) (\s a -> s {responseStatus = a} :: GetEncryptionConfigResponse)
{-# DEPRECATED gecrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}