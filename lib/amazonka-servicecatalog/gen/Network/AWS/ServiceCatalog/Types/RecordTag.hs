-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ServiceCatalog.Types.RecordTag
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ServiceCatalog.Types.RecordTag
  ( RecordTag (..),

    -- * Smart constructor
    mkRecordTag,

    -- * Lenses
    rtValue,
    rtKey,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | Information about a tag, which is a key-value pair.
--
-- /See:/ 'mkRecordTag' smart constructor.
data RecordTag = RecordTag'
  { value :: Lude.Maybe Lude.Text,
    key :: Lude.Maybe Lude.Text
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'RecordTag' with the minimum fields required to make a request.
--
-- * 'key' - The key for this tag.
-- * 'value' - The value for this tag.
mkRecordTag ::
  RecordTag
mkRecordTag = RecordTag' {value = Lude.Nothing, key = Lude.Nothing}

-- | The value for this tag.
--
-- /Note:/ Consider using 'value' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rtValue :: Lens.Lens' RecordTag (Lude.Maybe Lude.Text)
rtValue = Lens.lens (value :: RecordTag -> Lude.Maybe Lude.Text) (\s a -> s {value = a} :: RecordTag)
{-# DEPRECATED rtValue "Use generic-lens or generic-optics with 'value' instead." #-}

-- | The key for this tag.
--
-- /Note:/ Consider using 'key' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rtKey :: Lens.Lens' RecordTag (Lude.Maybe Lude.Text)
rtKey = Lens.lens (key :: RecordTag -> Lude.Maybe Lude.Text) (\s a -> s {key = a} :: RecordTag)
{-# DEPRECATED rtKey "Use generic-lens or generic-optics with 'key' instead." #-}

instance Lude.FromJSON RecordTag where
  parseJSON =
    Lude.withObject
      "RecordTag"
      ( \x ->
          RecordTag'
            Lude.<$> (x Lude..:? "Value") Lude.<*> (x Lude..:? "Key")
      )