-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.VPNStaticRoute
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.VPNStaticRoute
  ( VPNStaticRoute (..),

    -- * Smart constructor
    mkVPNStaticRoute,

    -- * Lenses
    vsrState,
    vsrSource,
    vsrDestinationCidrBlock,
  )
where

import Network.AWS.EC2.Types.VPNState
import Network.AWS.EC2.Types.VPNStaticRouteSource
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | Describes a static route for a VPN connection.
--
-- /See:/ 'mkVPNStaticRoute' smart constructor.
data VPNStaticRoute = VPNStaticRoute'
  { state :: Lude.Maybe VPNState,
    source :: Lude.Maybe VPNStaticRouteSource,
    destinationCidrBlock :: Lude.Maybe Lude.Text
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'VPNStaticRoute' with the minimum fields required to make a request.
--
-- * 'destinationCidrBlock' - The CIDR block associated with the local subnet of the customer data center.
-- * 'source' - Indicates how the routes were provided.
-- * 'state' - The current state of the static route.
mkVPNStaticRoute ::
  VPNStaticRoute
mkVPNStaticRoute =
  VPNStaticRoute'
    { state = Lude.Nothing,
      source = Lude.Nothing,
      destinationCidrBlock = Lude.Nothing
    }

-- | The current state of the static route.
--
-- /Note:/ Consider using 'state' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
vsrState :: Lens.Lens' VPNStaticRoute (Lude.Maybe VPNState)
vsrState = Lens.lens (state :: VPNStaticRoute -> Lude.Maybe VPNState) (\s a -> s {state = a} :: VPNStaticRoute)
{-# DEPRECATED vsrState "Use generic-lens or generic-optics with 'state' instead." #-}

-- | Indicates how the routes were provided.
--
-- /Note:/ Consider using 'source' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
vsrSource :: Lens.Lens' VPNStaticRoute (Lude.Maybe VPNStaticRouteSource)
vsrSource = Lens.lens (source :: VPNStaticRoute -> Lude.Maybe VPNStaticRouteSource) (\s a -> s {source = a} :: VPNStaticRoute)
{-# DEPRECATED vsrSource "Use generic-lens or generic-optics with 'source' instead." #-}

-- | The CIDR block associated with the local subnet of the customer data center.
--
-- /Note:/ Consider using 'destinationCidrBlock' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
vsrDestinationCidrBlock :: Lens.Lens' VPNStaticRoute (Lude.Maybe Lude.Text)
vsrDestinationCidrBlock = Lens.lens (destinationCidrBlock :: VPNStaticRoute -> Lude.Maybe Lude.Text) (\s a -> s {destinationCidrBlock = a} :: VPNStaticRoute)
{-# DEPRECATED vsrDestinationCidrBlock "Use generic-lens or generic-optics with 'destinationCidrBlock' instead." #-}

instance Lude.FromXML VPNStaticRoute where
  parseXML x =
    VPNStaticRoute'
      Lude.<$> (x Lude..@? "state")
      Lude.<*> (x Lude..@? "source")
      Lude.<*> (x Lude..@? "destinationCidrBlock")