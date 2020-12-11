-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.MonitoringScheduleConfig
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.MonitoringScheduleConfig
  ( MonitoringScheduleConfig (..),

    -- * Smart constructor
    mkMonitoringScheduleConfig,

    -- * Lenses
    mscScheduleConfig,
    mscMonitoringJobDefinition,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude
import Network.AWS.SageMaker.Types.MonitoringJobDefinition
import Network.AWS.SageMaker.Types.ScheduleConfig

-- | Configures the monitoring schedule and defines the monitoring job.
--
-- /See:/ 'mkMonitoringScheduleConfig' smart constructor.
data MonitoringScheduleConfig = MonitoringScheduleConfig'
  { scheduleConfig ::
      Lude.Maybe ScheduleConfig,
    monitoringJobDefinition ::
      MonitoringJobDefinition
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'MonitoringScheduleConfig' with the minimum fields required to make a request.
--
-- * 'monitoringJobDefinition' - Defines the monitoring job.
-- * 'scheduleConfig' - Configures the monitoring schedule.
mkMonitoringScheduleConfig ::
  -- | 'monitoringJobDefinition'
  MonitoringJobDefinition ->
  MonitoringScheduleConfig
mkMonitoringScheduleConfig pMonitoringJobDefinition_ =
  MonitoringScheduleConfig'
    { scheduleConfig = Lude.Nothing,
      monitoringJobDefinition = pMonitoringJobDefinition_
    }

-- | Configures the monitoring schedule.
--
-- /Note:/ Consider using 'scheduleConfig' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mscScheduleConfig :: Lens.Lens' MonitoringScheduleConfig (Lude.Maybe ScheduleConfig)
mscScheduleConfig = Lens.lens (scheduleConfig :: MonitoringScheduleConfig -> Lude.Maybe ScheduleConfig) (\s a -> s {scheduleConfig = a} :: MonitoringScheduleConfig)
{-# DEPRECATED mscScheduleConfig "Use generic-lens or generic-optics with 'scheduleConfig' instead." #-}

-- | Defines the monitoring job.
--
-- /Note:/ Consider using 'monitoringJobDefinition' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mscMonitoringJobDefinition :: Lens.Lens' MonitoringScheduleConfig MonitoringJobDefinition
mscMonitoringJobDefinition = Lens.lens (monitoringJobDefinition :: MonitoringScheduleConfig -> MonitoringJobDefinition) (\s a -> s {monitoringJobDefinition = a} :: MonitoringScheduleConfig)
{-# DEPRECATED mscMonitoringJobDefinition "Use generic-lens or generic-optics with 'monitoringJobDefinition' instead." #-}

instance Lude.FromJSON MonitoringScheduleConfig where
  parseJSON =
    Lude.withObject
      "MonitoringScheduleConfig"
      ( \x ->
          MonitoringScheduleConfig'
            Lude.<$> (x Lude..:? "ScheduleConfig")
            Lude.<*> (x Lude..: "MonitoringJobDefinition")
      )

instance Lude.ToJSON MonitoringScheduleConfig where
  toJSON MonitoringScheduleConfig' {..} =
    Lude.object
      ( Lude.catMaybes
          [ ("ScheduleConfig" Lude..=) Lude.<$> scheduleConfig,
            Lude.Just
              ("MonitoringJobDefinition" Lude..= monitoringJobDefinition)
          ]
      )