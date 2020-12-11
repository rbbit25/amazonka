-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.APNSSandboxChannelRequest
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.APNSSandboxChannelRequest
  ( APNSSandboxChannelRequest (..),

    -- * Smart constructor
    mkAPNSSandboxChannelRequest,

    -- * Lenses
    ascrTokenKey,
    ascrPrivateKey,
    ascrEnabled,
    ascrTeamId,
    ascrBundleId,
    ascrDefaultAuthenticationMethod,
    ascrCertificate,
    ascrTokenKeyId,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | Specifies the status and settings of the APNs (Apple Push Notification service) sandbox channel for an application.
--
-- /See:/ 'mkAPNSSandboxChannelRequest' smart constructor.
data APNSSandboxChannelRequest = APNSSandboxChannelRequest'
  { tokenKey ::
      Lude.Maybe Lude.Text,
    privateKey :: Lude.Maybe Lude.Text,
    enabled :: Lude.Maybe Lude.Bool,
    teamId :: Lude.Maybe Lude.Text,
    bundleId :: Lude.Maybe Lude.Text,
    defaultAuthenticationMethod ::
      Lude.Maybe Lude.Text,
    certificate :: Lude.Maybe Lude.Text,
    tokenKeyId :: Lude.Maybe Lude.Text
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'APNSSandboxChannelRequest' with the minimum fields required to make a request.
--
-- * 'bundleId' - The bundle identifier that's assigned to your iOS app. This identifier is used for APNs tokens.
-- * 'certificate' - The APNs client certificate that you received from Apple, if you want Amazon Pinpoint to communicate with the APNs sandbox environment by using an APNs certificate.
-- * 'defaultAuthenticationMethod' - The default authentication method that you want Amazon Pinpoint to use when authenticating with the APNs sandbox environment, key or certificate.
-- * 'enabled' - Specifies whether to enable the APNs sandbox channel for the application.
-- * 'privateKey' - The private key for the APNs client certificate that you want Amazon Pinpoint to use to communicate with the APNs sandbox environment.
-- * 'teamId' - The identifier that's assigned to your Apple developer account team. This identifier is used for APNs tokens.
-- * 'tokenKey' - The authentication key to use for APNs tokens.
-- * 'tokenKeyId' - The key identifier that's assigned to your APNs signing key, if you want Amazon Pinpoint to communicate with the APNs sandbox environment by using APNs tokens.
mkAPNSSandboxChannelRequest ::
  APNSSandboxChannelRequest
mkAPNSSandboxChannelRequest =
  APNSSandboxChannelRequest'
    { tokenKey = Lude.Nothing,
      privateKey = Lude.Nothing,
      enabled = Lude.Nothing,
      teamId = Lude.Nothing,
      bundleId = Lude.Nothing,
      defaultAuthenticationMethod = Lude.Nothing,
      certificate = Lude.Nothing,
      tokenKeyId = Lude.Nothing
    }

-- | The authentication key to use for APNs tokens.
--
-- /Note:/ Consider using 'tokenKey' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ascrTokenKey :: Lens.Lens' APNSSandboxChannelRequest (Lude.Maybe Lude.Text)
ascrTokenKey = Lens.lens (tokenKey :: APNSSandboxChannelRequest -> Lude.Maybe Lude.Text) (\s a -> s {tokenKey = a} :: APNSSandboxChannelRequest)
{-# DEPRECATED ascrTokenKey "Use generic-lens or generic-optics with 'tokenKey' instead." #-}

-- | The private key for the APNs client certificate that you want Amazon Pinpoint to use to communicate with the APNs sandbox environment.
--
-- /Note:/ Consider using 'privateKey' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ascrPrivateKey :: Lens.Lens' APNSSandboxChannelRequest (Lude.Maybe Lude.Text)
ascrPrivateKey = Lens.lens (privateKey :: APNSSandboxChannelRequest -> Lude.Maybe Lude.Text) (\s a -> s {privateKey = a} :: APNSSandboxChannelRequest)
{-# DEPRECATED ascrPrivateKey "Use generic-lens or generic-optics with 'privateKey' instead." #-}

-- | Specifies whether to enable the APNs sandbox channel for the application.
--
-- /Note:/ Consider using 'enabled' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ascrEnabled :: Lens.Lens' APNSSandboxChannelRequest (Lude.Maybe Lude.Bool)
ascrEnabled = Lens.lens (enabled :: APNSSandboxChannelRequest -> Lude.Maybe Lude.Bool) (\s a -> s {enabled = a} :: APNSSandboxChannelRequest)
{-# DEPRECATED ascrEnabled "Use generic-lens or generic-optics with 'enabled' instead." #-}

-- | The identifier that's assigned to your Apple developer account team. This identifier is used for APNs tokens.
--
-- /Note:/ Consider using 'teamId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ascrTeamId :: Lens.Lens' APNSSandboxChannelRequest (Lude.Maybe Lude.Text)
ascrTeamId = Lens.lens (teamId :: APNSSandboxChannelRequest -> Lude.Maybe Lude.Text) (\s a -> s {teamId = a} :: APNSSandboxChannelRequest)
{-# DEPRECATED ascrTeamId "Use generic-lens or generic-optics with 'teamId' instead." #-}

-- | The bundle identifier that's assigned to your iOS app. This identifier is used for APNs tokens.
--
-- /Note:/ Consider using 'bundleId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ascrBundleId :: Lens.Lens' APNSSandboxChannelRequest (Lude.Maybe Lude.Text)
ascrBundleId = Lens.lens (bundleId :: APNSSandboxChannelRequest -> Lude.Maybe Lude.Text) (\s a -> s {bundleId = a} :: APNSSandboxChannelRequest)
{-# DEPRECATED ascrBundleId "Use generic-lens or generic-optics with 'bundleId' instead." #-}

-- | The default authentication method that you want Amazon Pinpoint to use when authenticating with the APNs sandbox environment, key or certificate.
--
-- /Note:/ Consider using 'defaultAuthenticationMethod' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ascrDefaultAuthenticationMethod :: Lens.Lens' APNSSandboxChannelRequest (Lude.Maybe Lude.Text)
ascrDefaultAuthenticationMethod = Lens.lens (defaultAuthenticationMethod :: APNSSandboxChannelRequest -> Lude.Maybe Lude.Text) (\s a -> s {defaultAuthenticationMethod = a} :: APNSSandboxChannelRequest)
{-# DEPRECATED ascrDefaultAuthenticationMethod "Use generic-lens or generic-optics with 'defaultAuthenticationMethod' instead." #-}

-- | The APNs client certificate that you received from Apple, if you want Amazon Pinpoint to communicate with the APNs sandbox environment by using an APNs certificate.
--
-- /Note:/ Consider using 'certificate' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ascrCertificate :: Lens.Lens' APNSSandboxChannelRequest (Lude.Maybe Lude.Text)
ascrCertificate = Lens.lens (certificate :: APNSSandboxChannelRequest -> Lude.Maybe Lude.Text) (\s a -> s {certificate = a} :: APNSSandboxChannelRequest)
{-# DEPRECATED ascrCertificate "Use generic-lens or generic-optics with 'certificate' instead." #-}

-- | The key identifier that's assigned to your APNs signing key, if you want Amazon Pinpoint to communicate with the APNs sandbox environment by using APNs tokens.
--
-- /Note:/ Consider using 'tokenKeyId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ascrTokenKeyId :: Lens.Lens' APNSSandboxChannelRequest (Lude.Maybe Lude.Text)
ascrTokenKeyId = Lens.lens (tokenKeyId :: APNSSandboxChannelRequest -> Lude.Maybe Lude.Text) (\s a -> s {tokenKeyId = a} :: APNSSandboxChannelRequest)
{-# DEPRECATED ascrTokenKeyId "Use generic-lens or generic-optics with 'tokenKeyId' instead." #-}

instance Lude.ToJSON APNSSandboxChannelRequest where
  toJSON APNSSandboxChannelRequest' {..} =
    Lude.object
      ( Lude.catMaybes
          [ ("TokenKey" Lude..=) Lude.<$> tokenKey,
            ("PrivateKey" Lude..=) Lude.<$> privateKey,
            ("Enabled" Lude..=) Lude.<$> enabled,
            ("TeamId" Lude..=) Lude.<$> teamId,
            ("BundleId" Lude..=) Lude.<$> bundleId,
            ("DefaultAuthenticationMethod" Lude..=)
              Lude.<$> defaultAuthenticationMethod,
            ("Certificate" Lude..=) Lude.<$> certificate,
            ("TokenKeyId" Lude..=) Lude.<$> tokenKeyId
          ]
      )