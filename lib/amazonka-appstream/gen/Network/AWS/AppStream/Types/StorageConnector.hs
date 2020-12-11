-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AppStream.Types.StorageConnector
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppStream.Types.StorageConnector
  ( StorageConnector (..),

    -- * Smart constructor
    mkStorageConnector,

    -- * Lenses
    scDomains,
    scResourceIdentifier,
    scConnectorType,
  )
where

import Network.AWS.AppStream.Types.StorageConnectorType
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | Describes a connector that enables persistent storage for users.
--
-- /See:/ 'mkStorageConnector' smart constructor.
data StorageConnector = StorageConnector'
  { domains ::
      Lude.Maybe [Lude.Text],
    resourceIdentifier :: Lude.Maybe Lude.Text,
    connectorType :: StorageConnectorType
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'StorageConnector' with the minimum fields required to make a request.
--
-- * 'connectorType' - The type of storage connector.
-- * 'domains' - The names of the domains for the account.
-- * 'resourceIdentifier' - The ARN of the storage connector.
mkStorageConnector ::
  -- | 'connectorType'
  StorageConnectorType ->
  StorageConnector
mkStorageConnector pConnectorType_ =
  StorageConnector'
    { domains = Lude.Nothing,
      resourceIdentifier = Lude.Nothing,
      connectorType = pConnectorType_
    }

-- | The names of the domains for the account.
--
-- /Note:/ Consider using 'domains' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
scDomains :: Lens.Lens' StorageConnector (Lude.Maybe [Lude.Text])
scDomains = Lens.lens (domains :: StorageConnector -> Lude.Maybe [Lude.Text]) (\s a -> s {domains = a} :: StorageConnector)
{-# DEPRECATED scDomains "Use generic-lens or generic-optics with 'domains' instead." #-}

-- | The ARN of the storage connector.
--
-- /Note:/ Consider using 'resourceIdentifier' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
scResourceIdentifier :: Lens.Lens' StorageConnector (Lude.Maybe Lude.Text)
scResourceIdentifier = Lens.lens (resourceIdentifier :: StorageConnector -> Lude.Maybe Lude.Text) (\s a -> s {resourceIdentifier = a} :: StorageConnector)
{-# DEPRECATED scResourceIdentifier "Use generic-lens or generic-optics with 'resourceIdentifier' instead." #-}

-- | The type of storage connector.
--
-- /Note:/ Consider using 'connectorType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
scConnectorType :: Lens.Lens' StorageConnector StorageConnectorType
scConnectorType = Lens.lens (connectorType :: StorageConnector -> StorageConnectorType) (\s a -> s {connectorType = a} :: StorageConnector)
{-# DEPRECATED scConnectorType "Use generic-lens or generic-optics with 'connectorType' instead." #-}

instance Lude.FromJSON StorageConnector where
  parseJSON =
    Lude.withObject
      "StorageConnector"
      ( \x ->
          StorageConnector'
            Lude.<$> (x Lude..:? "Domains" Lude..!= Lude.mempty)
            Lude.<*> (x Lude..:? "ResourceIdentifier")
            Lude.<*> (x Lude..: "ConnectorType")
      )

instance Lude.ToJSON StorageConnector where
  toJSON StorageConnector' {..} =
    Lude.object
      ( Lude.catMaybes
          [ ("Domains" Lude..=) Lude.<$> domains,
            ("ResourceIdentifier" Lude..=) Lude.<$> resourceIdentifier,
            Lude.Just ("ConnectorType" Lude..= connectorType)
          ]
      )