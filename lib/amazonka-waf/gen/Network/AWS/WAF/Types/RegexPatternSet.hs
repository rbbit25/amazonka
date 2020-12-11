-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WAF.Types.RegexPatternSet
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WAF.Types.RegexPatternSet
  ( RegexPatternSet (..),

    -- * Smart constructor
    mkRegexPatternSet,

    -- * Lenses
    rpsName,
    rpsRegexPatternSetId,
    rpsRegexPatternStrings,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | The @RegexPatternSet@ specifies the regular expression (regex) pattern that you want AWS WAF to search for, such as @B[a@]dB[o0]t@ . You can then configure AWS WAF to reject those requests.
--
-- /See:/ 'mkRegexPatternSet' smart constructor.
data RegexPatternSet = RegexPatternSet'
  { name ::
      Lude.Maybe Lude.Text,
    regexPatternSetId :: Lude.Text,
    regexPatternStrings :: [Lude.Text]
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'RegexPatternSet' with the minimum fields required to make a request.
--
-- * 'name' - A friendly name or description of the 'RegexPatternSet' . You can't change @Name@ after you create a @RegexPatternSet@ .
-- * 'regexPatternSetId' - The identifier for the @RegexPatternSet@ . You use @RegexPatternSetId@ to get information about a @RegexPatternSet@ , update a @RegexPatternSet@ , remove a @RegexPatternSet@ from a @RegexMatchSet@ , and delete a @RegexPatternSet@ from AWS WAF.
--
-- @RegexMatchSetId@ is returned by 'CreateRegexPatternSet' and by 'ListRegexPatternSets' .
-- * 'regexPatternStrings' - Specifies the regular expression (regex) patterns that you want AWS WAF to search for, such as @B[a@]dB[o0]t@ .
mkRegexPatternSet ::
  -- | 'regexPatternSetId'
  Lude.Text ->
  RegexPatternSet
mkRegexPatternSet pRegexPatternSetId_ =
  RegexPatternSet'
    { name = Lude.Nothing,
      regexPatternSetId = pRegexPatternSetId_,
      regexPatternStrings = Lude.mempty
    }

-- | A friendly name or description of the 'RegexPatternSet' . You can't change @Name@ after you create a @RegexPatternSet@ .
--
-- /Note:/ Consider using 'name' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rpsName :: Lens.Lens' RegexPatternSet (Lude.Maybe Lude.Text)
rpsName = Lens.lens (name :: RegexPatternSet -> Lude.Maybe Lude.Text) (\s a -> s {name = a} :: RegexPatternSet)
{-# DEPRECATED rpsName "Use generic-lens or generic-optics with 'name' instead." #-}

-- | The identifier for the @RegexPatternSet@ . You use @RegexPatternSetId@ to get information about a @RegexPatternSet@ , update a @RegexPatternSet@ , remove a @RegexPatternSet@ from a @RegexMatchSet@ , and delete a @RegexPatternSet@ from AWS WAF.
--
-- @RegexMatchSetId@ is returned by 'CreateRegexPatternSet' and by 'ListRegexPatternSets' .
--
-- /Note:/ Consider using 'regexPatternSetId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rpsRegexPatternSetId :: Lens.Lens' RegexPatternSet Lude.Text
rpsRegexPatternSetId = Lens.lens (regexPatternSetId :: RegexPatternSet -> Lude.Text) (\s a -> s {regexPatternSetId = a} :: RegexPatternSet)
{-# DEPRECATED rpsRegexPatternSetId "Use generic-lens or generic-optics with 'regexPatternSetId' instead." #-}

-- | Specifies the regular expression (regex) patterns that you want AWS WAF to search for, such as @B[a@]dB[o0]t@ .
--
-- /Note:/ Consider using 'regexPatternStrings' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rpsRegexPatternStrings :: Lens.Lens' RegexPatternSet [Lude.Text]
rpsRegexPatternStrings = Lens.lens (regexPatternStrings :: RegexPatternSet -> [Lude.Text]) (\s a -> s {regexPatternStrings = a} :: RegexPatternSet)
{-# DEPRECATED rpsRegexPatternStrings "Use generic-lens or generic-optics with 'regexPatternStrings' instead." #-}

instance Lude.FromJSON RegexPatternSet where
  parseJSON =
    Lude.withObject
      "RegexPatternSet"
      ( \x ->
          RegexPatternSet'
            Lude.<$> (x Lude..:? "Name")
            Lude.<*> (x Lude..: "RegexPatternSetId")
            Lude.<*> (x Lude..:? "RegexPatternStrings" Lude..!= Lude.mempty)
      )