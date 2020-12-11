-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.TeletextDestinationSettings
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.TeletextDestinationSettings
  ( TeletextDestinationSettings (..),

    -- * Smart constructor
    mkTeletextDestinationSettings,

    -- * Lenses
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | Teletext Destination Settings
--
-- /See:/ 'mkTeletextDestinationSettings' smart constructor.
data TeletextDestinationSettings = TeletextDestinationSettings'
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'TeletextDestinationSettings' with the minimum fields required to make a request.
mkTeletextDestinationSettings ::
  TeletextDestinationSettings
mkTeletextDestinationSettings = TeletextDestinationSettings'

instance Lude.FromJSON TeletextDestinationSettings where
  parseJSON =
    Lude.withObject
      "TeletextDestinationSettings"
      (\x -> Lude.pure TeletextDestinationSettings')

instance Lude.ToJSON TeletextDestinationSettings where
  toJSON = Lude.const (Lude.Object Lude.mempty)