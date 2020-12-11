-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.SmpteTtDestinationSettings
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.SmpteTtDestinationSettings
  ( SmpteTtDestinationSettings (..),

    -- * Smart constructor
    mkSmpteTtDestinationSettings,

    -- * Lenses
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | Smpte Tt Destination Settings
--
-- /See:/ 'mkSmpteTtDestinationSettings' smart constructor.
data SmpteTtDestinationSettings = SmpteTtDestinationSettings'
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'SmpteTtDestinationSettings' with the minimum fields required to make a request.
mkSmpteTtDestinationSettings ::
  SmpteTtDestinationSettings
mkSmpteTtDestinationSettings = SmpteTtDestinationSettings'

instance Lude.FromJSON SmpteTtDestinationSettings where
  parseJSON =
    Lude.withObject
      "SmpteTtDestinationSettings"
      (\x -> Lude.pure SmpteTtDestinationSettings')

instance Lude.ToJSON SmpteTtDestinationSettings where
  toJSON = Lude.const (Lude.Object Lude.mempty)