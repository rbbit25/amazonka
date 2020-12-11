-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Comprehend.Types.KeyPhrase
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Comprehend.Types.KeyPhrase
  ( KeyPhrase (..),

    -- * Smart constructor
    mkKeyPhrase,

    -- * Lenses
    kpBeginOffset,
    kpText,
    kpScore,
    kpEndOffset,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | Describes a key noun phrase.
--
-- /See:/ 'mkKeyPhrase' smart constructor.
data KeyPhrase = KeyPhrase'
  { beginOffset :: Lude.Maybe Lude.Int,
    text :: Lude.Maybe Lude.Text,
    score :: Lude.Maybe Lude.Double,
    endOffset :: Lude.Maybe Lude.Int
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'KeyPhrase' with the minimum fields required to make a request.
--
-- * 'beginOffset' - A character offset in the input text that shows where the key phrase begins (the first character is at position 0). The offset returns the position of each UTF-8 code point in the string. A /code point/ is the abstract character from a particular graphical representation. For example, a multi-byte UTF-8 character maps to a single code point.
-- * 'endOffset' - A character offset in the input text where the key phrase ends. The offset returns the position of each UTF-8 code point in the string. A @code point@ is the abstract character from a particular graphical representation. For example, a multi-byte UTF-8 character maps to a single code point.
-- * 'score' - The level of confidence that Amazon Comprehend has in the accuracy of the detection.
-- * 'text' - The text of a key noun phrase.
mkKeyPhrase ::
  KeyPhrase
mkKeyPhrase =
  KeyPhrase'
    { beginOffset = Lude.Nothing,
      text = Lude.Nothing,
      score = Lude.Nothing,
      endOffset = Lude.Nothing
    }

-- | A character offset in the input text that shows where the key phrase begins (the first character is at position 0). The offset returns the position of each UTF-8 code point in the string. A /code point/ is the abstract character from a particular graphical representation. For example, a multi-byte UTF-8 character maps to a single code point.
--
-- /Note:/ Consider using 'beginOffset' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
kpBeginOffset :: Lens.Lens' KeyPhrase (Lude.Maybe Lude.Int)
kpBeginOffset = Lens.lens (beginOffset :: KeyPhrase -> Lude.Maybe Lude.Int) (\s a -> s {beginOffset = a} :: KeyPhrase)
{-# DEPRECATED kpBeginOffset "Use generic-lens or generic-optics with 'beginOffset' instead." #-}

-- | The text of a key noun phrase.
--
-- /Note:/ Consider using 'text' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
kpText :: Lens.Lens' KeyPhrase (Lude.Maybe Lude.Text)
kpText = Lens.lens (text :: KeyPhrase -> Lude.Maybe Lude.Text) (\s a -> s {text = a} :: KeyPhrase)
{-# DEPRECATED kpText "Use generic-lens or generic-optics with 'text' instead." #-}

-- | The level of confidence that Amazon Comprehend has in the accuracy of the detection.
--
-- /Note:/ Consider using 'score' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
kpScore :: Lens.Lens' KeyPhrase (Lude.Maybe Lude.Double)
kpScore = Lens.lens (score :: KeyPhrase -> Lude.Maybe Lude.Double) (\s a -> s {score = a} :: KeyPhrase)
{-# DEPRECATED kpScore "Use generic-lens or generic-optics with 'score' instead." #-}

-- | A character offset in the input text where the key phrase ends. The offset returns the position of each UTF-8 code point in the string. A @code point@ is the abstract character from a particular graphical representation. For example, a multi-byte UTF-8 character maps to a single code point.
--
-- /Note:/ Consider using 'endOffset' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
kpEndOffset :: Lens.Lens' KeyPhrase (Lude.Maybe Lude.Int)
kpEndOffset = Lens.lens (endOffset :: KeyPhrase -> Lude.Maybe Lude.Int) (\s a -> s {endOffset = a} :: KeyPhrase)
{-# DEPRECATED kpEndOffset "Use generic-lens or generic-optics with 'endOffset' instead." #-}

instance Lude.FromJSON KeyPhrase where
  parseJSON =
    Lude.withObject
      "KeyPhrase"
      ( \x ->
          KeyPhrase'
            Lude.<$> (x Lude..:? "BeginOffset")
            Lude.<*> (x Lude..:? "Text")
            Lude.<*> (x Lude..:? "Score")
            Lude.<*> (x Lude..:? "EndOffset")
      )