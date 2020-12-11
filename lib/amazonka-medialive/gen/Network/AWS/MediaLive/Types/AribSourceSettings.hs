-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.AribSourceSettings
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.AribSourceSettings
  ( AribSourceSettings (..),

    -- * Smart constructor
    mkAribSourceSettings,

    -- * Lenses
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | Arib Source Settings
--
-- /See:/ 'mkAribSourceSettings' smart constructor.
data AribSourceSettings = AribSourceSettings'
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'AribSourceSettings' with the minimum fields required to make a request.
mkAribSourceSettings ::
  AribSourceSettings
mkAribSourceSettings = AribSourceSettings'

instance Lude.FromJSON AribSourceSettings where
  parseJSON =
    Lude.withObject
      "AribSourceSettings"
      (\x -> Lude.pure AribSourceSettings')

instance Lude.ToJSON AribSourceSettings where
  toJSON = Lude.const (Lude.Object Lude.mempty)