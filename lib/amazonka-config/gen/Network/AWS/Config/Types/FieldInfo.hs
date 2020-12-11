-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Config.Types.FieldInfo
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Config.Types.FieldInfo
  ( FieldInfo (..),

    -- * Smart constructor
    mkFieldInfo,

    -- * Lenses
    fiName,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | Details about the fields such as name of the field.
--
-- /See:/ 'mkFieldInfo' smart constructor.
newtype FieldInfo = FieldInfo' {name :: Lude.Maybe Lude.Text}
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving newtype (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'FieldInfo' with the minimum fields required to make a request.
--
-- * 'name' - Name of the field.
mkFieldInfo ::
  FieldInfo
mkFieldInfo = FieldInfo' {name = Lude.Nothing}

-- | Name of the field.
--
-- /Note:/ Consider using 'name' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
fiName :: Lens.Lens' FieldInfo (Lude.Maybe Lude.Text)
fiName = Lens.lens (name :: FieldInfo -> Lude.Maybe Lude.Text) (\s a -> s {name = a} :: FieldInfo)
{-# DEPRECATED fiName "Use generic-lens or generic-optics with 'name' instead." #-}

instance Lude.FromJSON FieldInfo where
  parseJSON =
    Lude.withObject
      "FieldInfo"
      (\x -> FieldInfo' Lude.<$> (x Lude..:? "Name"))