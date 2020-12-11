-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CognitoIdentityProvider.Types.IdentityProviderType
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CognitoIdentityProvider.Types.IdentityProviderType
  ( IdentityProviderType (..),

    -- * Smart constructor
    mkIdentityProviderType,

    -- * Lenses
    iptLastModifiedDate,
    iptUserPoolId,
    iptProviderType,
    iptCreationDate,
    iptIdpIdentifiers,
    iptAttributeMapping,
    iptProviderDetails,
    iptProviderName,
  )
where

import Network.AWS.CognitoIdentityProvider.Types.IdentityProviderTypeType
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | A container for information about an identity provider.
--
-- /See:/ 'mkIdentityProviderType' smart constructor.
data IdentityProviderType = IdentityProviderType'
  { lastModifiedDate ::
      Lude.Maybe Lude.Timestamp,
    userPoolId :: Lude.Maybe Lude.Text,
    providerType ::
      Lude.Maybe IdentityProviderTypeType,
    creationDate :: Lude.Maybe Lude.Timestamp,
    idpIdentifiers :: Lude.Maybe [Lude.Text],
    attributeMapping ::
      Lude.Maybe (Lude.HashMap Lude.Text (Lude.Text)),
    providerDetails ::
      Lude.Maybe (Lude.HashMap Lude.Text (Lude.Text)),
    providerName :: Lude.Maybe Lude.Text
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'IdentityProviderType' with the minimum fields required to make a request.
--
-- * 'attributeMapping' - A mapping of identity provider attributes to standard and custom user pool attributes.
-- * 'creationDate' - The date the identity provider was created.
-- * 'idpIdentifiers' - A list of identity provider identifiers.
-- * 'lastModifiedDate' - The date the identity provider was last modified.
-- * 'providerDetails' - The identity provider details. The following list describes the provider detail keys for each identity provider type.
--
--
--     * For Google and Login with Amazon:
--
--     * client_id
--
--
--     * client_secret
--
--
--     * authorize_scopes
--
--
--
--
--     * For Facebook:
--
--     * client_id
--
--
--     * client_secret
--
--
--     * authorize_scopes
--
--
--     * api_version
--
--
--
--
--     * For Sign in with Apple:
--
--     * client_id
--
--
--     * team_id
--
--
--     * key_id
--
--
--     * private_key
--
--
--     * authorize_scopes
--
--
--
--
--     * For OIDC providers:
--
--     * client_id
--
--
--     * client_secret
--
--
--     * attributes_request_method
--
--
--     * oidc_issuer
--
--
--     * authorize_scopes
--
--
--     * authorize_url /if not available from discovery URL specified by oidc_issuer key/
--
--
--     * token_url /if not available from discovery URL specified by oidc_issuer key/
--
--
--     * attributes_url /if not available from discovery URL specified by oidc_issuer key/
--
--
--     * jwks_uri /if not available from discovery URL specified by oidc_issuer key/
--
--
--     * authorize_scopes
--
--
--
--
--     * For SAML providers:
--
--     * MetadataFile OR MetadataURL
--
--
--     * IDPSignOut /optional/
--
--
--
--
-- * 'providerName' - The identity provider name.
-- * 'providerType' - The identity provider type.
-- * 'userPoolId' - The user pool ID.
mkIdentityProviderType ::
  IdentityProviderType
mkIdentityProviderType =
  IdentityProviderType'
    { lastModifiedDate = Lude.Nothing,
      userPoolId = Lude.Nothing,
      providerType = Lude.Nothing,
      creationDate = Lude.Nothing,
      idpIdentifiers = Lude.Nothing,
      attributeMapping = Lude.Nothing,
      providerDetails = Lude.Nothing,
      providerName = Lude.Nothing
    }

-- | The date the identity provider was last modified.
--
-- /Note:/ Consider using 'lastModifiedDate' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
iptLastModifiedDate :: Lens.Lens' IdentityProviderType (Lude.Maybe Lude.Timestamp)
iptLastModifiedDate = Lens.lens (lastModifiedDate :: IdentityProviderType -> Lude.Maybe Lude.Timestamp) (\s a -> s {lastModifiedDate = a} :: IdentityProviderType)
{-# DEPRECATED iptLastModifiedDate "Use generic-lens or generic-optics with 'lastModifiedDate' instead." #-}

-- | The user pool ID.
--
-- /Note:/ Consider using 'userPoolId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
iptUserPoolId :: Lens.Lens' IdentityProviderType (Lude.Maybe Lude.Text)
iptUserPoolId = Lens.lens (userPoolId :: IdentityProviderType -> Lude.Maybe Lude.Text) (\s a -> s {userPoolId = a} :: IdentityProviderType)
{-# DEPRECATED iptUserPoolId "Use generic-lens or generic-optics with 'userPoolId' instead." #-}

-- | The identity provider type.
--
-- /Note:/ Consider using 'providerType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
iptProviderType :: Lens.Lens' IdentityProviderType (Lude.Maybe IdentityProviderTypeType)
iptProviderType = Lens.lens (providerType :: IdentityProviderType -> Lude.Maybe IdentityProviderTypeType) (\s a -> s {providerType = a} :: IdentityProviderType)
{-# DEPRECATED iptProviderType "Use generic-lens or generic-optics with 'providerType' instead." #-}

-- | The date the identity provider was created.
--
-- /Note:/ Consider using 'creationDate' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
iptCreationDate :: Lens.Lens' IdentityProviderType (Lude.Maybe Lude.Timestamp)
iptCreationDate = Lens.lens (creationDate :: IdentityProviderType -> Lude.Maybe Lude.Timestamp) (\s a -> s {creationDate = a} :: IdentityProviderType)
{-# DEPRECATED iptCreationDate "Use generic-lens or generic-optics with 'creationDate' instead." #-}

-- | A list of identity provider identifiers.
--
-- /Note:/ Consider using 'idpIdentifiers' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
iptIdpIdentifiers :: Lens.Lens' IdentityProviderType (Lude.Maybe [Lude.Text])
iptIdpIdentifiers = Lens.lens (idpIdentifiers :: IdentityProviderType -> Lude.Maybe [Lude.Text]) (\s a -> s {idpIdentifiers = a} :: IdentityProviderType)
{-# DEPRECATED iptIdpIdentifiers "Use generic-lens or generic-optics with 'idpIdentifiers' instead." #-}

-- | A mapping of identity provider attributes to standard and custom user pool attributes.
--
-- /Note:/ Consider using 'attributeMapping' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
iptAttributeMapping :: Lens.Lens' IdentityProviderType (Lude.Maybe (Lude.HashMap Lude.Text (Lude.Text)))
iptAttributeMapping = Lens.lens (attributeMapping :: IdentityProviderType -> Lude.Maybe (Lude.HashMap Lude.Text (Lude.Text))) (\s a -> s {attributeMapping = a} :: IdentityProviderType)
{-# DEPRECATED iptAttributeMapping "Use generic-lens or generic-optics with 'attributeMapping' instead." #-}

-- | The identity provider details. The following list describes the provider detail keys for each identity provider type.
--
--
--     * For Google and Login with Amazon:
--
--     * client_id
--
--
--     * client_secret
--
--
--     * authorize_scopes
--
--
--
--
--     * For Facebook:
--
--     * client_id
--
--
--     * client_secret
--
--
--     * authorize_scopes
--
--
--     * api_version
--
--
--
--
--     * For Sign in with Apple:
--
--     * client_id
--
--
--     * team_id
--
--
--     * key_id
--
--
--     * private_key
--
--
--     * authorize_scopes
--
--
--
--
--     * For OIDC providers:
--
--     * client_id
--
--
--     * client_secret
--
--
--     * attributes_request_method
--
--
--     * oidc_issuer
--
--
--     * authorize_scopes
--
--
--     * authorize_url /if not available from discovery URL specified by oidc_issuer key/
--
--
--     * token_url /if not available from discovery URL specified by oidc_issuer key/
--
--
--     * attributes_url /if not available from discovery URL specified by oidc_issuer key/
--
--
--     * jwks_uri /if not available from discovery URL specified by oidc_issuer key/
--
--
--     * authorize_scopes
--
--
--
--
--     * For SAML providers:
--
--     * MetadataFile OR MetadataURL
--
--
--     * IDPSignOut /optional/
--
--
--
--
--
-- /Note:/ Consider using 'providerDetails' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
iptProviderDetails :: Lens.Lens' IdentityProviderType (Lude.Maybe (Lude.HashMap Lude.Text (Lude.Text)))
iptProviderDetails = Lens.lens (providerDetails :: IdentityProviderType -> Lude.Maybe (Lude.HashMap Lude.Text (Lude.Text))) (\s a -> s {providerDetails = a} :: IdentityProviderType)
{-# DEPRECATED iptProviderDetails "Use generic-lens or generic-optics with 'providerDetails' instead." #-}

-- | The identity provider name.
--
-- /Note:/ Consider using 'providerName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
iptProviderName :: Lens.Lens' IdentityProviderType (Lude.Maybe Lude.Text)
iptProviderName = Lens.lens (providerName :: IdentityProviderType -> Lude.Maybe Lude.Text) (\s a -> s {providerName = a} :: IdentityProviderType)
{-# DEPRECATED iptProviderName "Use generic-lens or generic-optics with 'providerName' instead." #-}

instance Lude.FromJSON IdentityProviderType where
  parseJSON =
    Lude.withObject
      "IdentityProviderType"
      ( \x ->
          IdentityProviderType'
            Lude.<$> (x Lude..:? "LastModifiedDate")
            Lude.<*> (x Lude..:? "UserPoolId")
            Lude.<*> (x Lude..:? "ProviderType")
            Lude.<*> (x Lude..:? "CreationDate")
            Lude.<*> (x Lude..:? "IdpIdentifiers" Lude..!= Lude.mempty)
            Lude.<*> (x Lude..:? "AttributeMapping" Lude..!= Lude.mempty)
            Lude.<*> (x Lude..:? "ProviderDetails" Lude..!= Lude.mempty)
            Lude.<*> (x Lude..:? "ProviderName")
      )