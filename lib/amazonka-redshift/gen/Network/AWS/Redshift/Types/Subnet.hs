-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Redshift.Types.Subnet
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Redshift.Types.Subnet
  ( Subnet (..),

    -- * Smart constructor
    mkSubnet,

    -- * Lenses
    sSubnetStatus,
    sSubnetIdentifier,
    sSubnetAvailabilityZone,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude
import Network.AWS.Redshift.Internal
import Network.AWS.Redshift.Types.AvailabilityZone

-- | Describes a subnet.
--
-- /See:/ 'mkSubnet' smart constructor.
data Subnet = Subnet'
  { subnetStatus :: Lude.Maybe Lude.Text,
    subnetIdentifier :: Lude.Maybe Lude.Text,
    subnetAvailabilityZone :: Lude.Maybe AvailabilityZone
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'Subnet' with the minimum fields required to make a request.
--
-- * 'subnetAvailabilityZone' -
-- * 'subnetIdentifier' - The identifier of the subnet.
-- * 'subnetStatus' - The status of the subnet.
mkSubnet ::
  Subnet
mkSubnet =
  Subnet'
    { subnetStatus = Lude.Nothing,
      subnetIdentifier = Lude.Nothing,
      subnetAvailabilityZone = Lude.Nothing
    }

-- | The status of the subnet.
--
-- /Note:/ Consider using 'subnetStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sSubnetStatus :: Lens.Lens' Subnet (Lude.Maybe Lude.Text)
sSubnetStatus = Lens.lens (subnetStatus :: Subnet -> Lude.Maybe Lude.Text) (\s a -> s {subnetStatus = a} :: Subnet)
{-# DEPRECATED sSubnetStatus "Use generic-lens or generic-optics with 'subnetStatus' instead." #-}

-- | The identifier of the subnet.
--
-- /Note:/ Consider using 'subnetIdentifier' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sSubnetIdentifier :: Lens.Lens' Subnet (Lude.Maybe Lude.Text)
sSubnetIdentifier = Lens.lens (subnetIdentifier :: Subnet -> Lude.Maybe Lude.Text) (\s a -> s {subnetIdentifier = a} :: Subnet)
{-# DEPRECATED sSubnetIdentifier "Use generic-lens or generic-optics with 'subnetIdentifier' instead." #-}

-- |
--
-- /Note:/ Consider using 'subnetAvailabilityZone' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sSubnetAvailabilityZone :: Lens.Lens' Subnet (Lude.Maybe AvailabilityZone)
sSubnetAvailabilityZone = Lens.lens (subnetAvailabilityZone :: Subnet -> Lude.Maybe AvailabilityZone) (\s a -> s {subnetAvailabilityZone = a} :: Subnet)
{-# DEPRECATED sSubnetAvailabilityZone "Use generic-lens or generic-optics with 'subnetAvailabilityZone' instead." #-}

instance Lude.FromXML Subnet where
  parseXML x =
    Subnet'
      Lude.<$> (x Lude..@? "SubnetStatus")
      Lude.<*> (x Lude..@? "SubnetIdentifier")
      Lude.<*> (x Lude..@? "SubnetAvailabilityZone")