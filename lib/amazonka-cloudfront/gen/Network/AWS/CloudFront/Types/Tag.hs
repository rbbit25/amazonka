-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFront.Types.Tag
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFront.Types.Tag
  ( Tag (..),

    -- * Smart constructor
    mkTag,

    -- * Lenses
    tValue,
    tKey,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | A complex type that contains @Tag@ key and @Tag@ value.
--
-- /See:/ 'mkTag' smart constructor.
data Tag = Tag' {value :: Lude.Maybe Lude.Text, key :: Lude.Text}
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'Tag' with the minimum fields required to make a request.
--
-- * 'key' - A string that contains @Tag@ key.
--
-- The string length should be between 1 and 128 characters. Valid characters include @a-z@ , @A-Z@ , @0-9@ , space, and the special characters @_ - . : / = + @@ .
-- * 'value' - A string that contains an optional @Tag@ value.
--
-- The string length should be between 0 and 256 characters. Valid characters include @a-z@ , @A-Z@ , @0-9@ , space, and the special characters @_ - . : / = + @@ .
mkTag ::
  -- | 'key'
  Lude.Text ->
  Tag
mkTag pKey_ = Tag' {value = Lude.Nothing, key = pKey_}

-- | A string that contains an optional @Tag@ value.
--
-- The string length should be between 0 and 256 characters. Valid characters include @a-z@ , @A-Z@ , @0-9@ , space, and the special characters @_ - . : / = + @@ .
--
-- /Note:/ Consider using 'value' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tValue :: Lens.Lens' Tag (Lude.Maybe Lude.Text)
tValue = Lens.lens (value :: Tag -> Lude.Maybe Lude.Text) (\s a -> s {value = a} :: Tag)
{-# DEPRECATED tValue "Use generic-lens or generic-optics with 'value' instead." #-}

-- | A string that contains @Tag@ key.
--
-- The string length should be between 1 and 128 characters. Valid characters include @a-z@ , @A-Z@ , @0-9@ , space, and the special characters @_ - . : / = + @@ .
--
-- /Note:/ Consider using 'key' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tKey :: Lens.Lens' Tag Lude.Text
tKey = Lens.lens (key :: Tag -> Lude.Text) (\s a -> s {key = a} :: Tag)
{-# DEPRECATED tKey "Use generic-lens or generic-optics with 'key' instead." #-}

instance Lude.FromXML Tag where
  parseXML x =
    Tag' Lude.<$> (x Lude..@? "Value") Lude.<*> (x Lude..@ "Key")

instance Lude.ToXML Tag where
  toXML Tag' {..} =
    Lude.mconcat ["Value" Lude.@= value, "Key" Lude.@= key]