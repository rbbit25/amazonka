-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.ScheduledInstancesMonitoring
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.ScheduledInstancesMonitoring
  ( ScheduledInstancesMonitoring (..),

    -- * Smart constructor
    mkScheduledInstancesMonitoring,

    -- * Lenses
    simEnabled,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | Describes whether monitoring is enabled for a Scheduled Instance.
--
-- /See:/ 'mkScheduledInstancesMonitoring' smart constructor.
newtype ScheduledInstancesMonitoring = ScheduledInstancesMonitoring'
  { enabled ::
      Lude.Maybe Lude.Bool
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving newtype (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'ScheduledInstancesMonitoring' with the minimum fields required to make a request.
--
-- * 'enabled' - Indicates whether monitoring is enabled.
mkScheduledInstancesMonitoring ::
  ScheduledInstancesMonitoring
mkScheduledInstancesMonitoring =
  ScheduledInstancesMonitoring' {enabled = Lude.Nothing}

-- | Indicates whether monitoring is enabled.
--
-- /Note:/ Consider using 'enabled' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
simEnabled :: Lens.Lens' ScheduledInstancesMonitoring (Lude.Maybe Lude.Bool)
simEnabled = Lens.lens (enabled :: ScheduledInstancesMonitoring -> Lude.Maybe Lude.Bool) (\s a -> s {enabled = a} :: ScheduledInstancesMonitoring)
{-# DEPRECATED simEnabled "Use generic-lens or generic-optics with 'enabled' instead." #-}

instance Lude.ToQuery ScheduledInstancesMonitoring where
  toQuery ScheduledInstancesMonitoring' {..} =
    Lude.mconcat ["Enabled" Lude.=: enabled]