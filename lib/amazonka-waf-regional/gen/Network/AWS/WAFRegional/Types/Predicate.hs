-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WAFRegional.Types.Predicate
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WAFRegional.Types.Predicate
  ( Predicate (..),

    -- * Smart constructor
    mkPredicate,

    -- * Lenses
    pNegated,
    pType,
    pDataId,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude
import Network.AWS.WAFRegional.Types.PredicateType

-- | Specifies the 'ByteMatchSet' , 'IPSet' , 'SqlInjectionMatchSet' , 'XssMatchSet' , 'RegexMatchSet' , 'GeoMatchSet' , and 'SizeConstraintSet' objects that you want to add to a @Rule@ and, for each object, indicates whether you want to negate the settings, for example, requests that do NOT originate from the IP address 192.0.2.44.
--
-- /See:/ 'mkPredicate' smart constructor.
data Predicate = Predicate'
  { negated :: Lude.Bool,
    type' :: PredicateType,
    dataId :: Lude.Text
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'Predicate' with the minimum fields required to make a request.
--
-- * 'dataId' - A unique identifier for a predicate in a @Rule@ , such as @ByteMatchSetId@ or @IPSetId@ . The ID is returned by the corresponding @Create@ or @List@ command.
-- * 'negated' - Set @Negated@ to @False@ if you want AWS WAF to allow, block, or count requests based on the settings in the specified 'ByteMatchSet' , 'IPSet' , 'SqlInjectionMatchSet' , 'XssMatchSet' , 'RegexMatchSet' , 'GeoMatchSet' , or 'SizeConstraintSet' . For example, if an @IPSet@ includes the IP address @192.0.2.44@ , AWS WAF will allow or block requests based on that IP address.
--
-- Set @Negated@ to @True@ if you want AWS WAF to allow or block a request based on the negation of the settings in the 'ByteMatchSet' , 'IPSet' , 'SqlInjectionMatchSet' , 'XssMatchSet' , 'RegexMatchSet' , 'GeoMatchSet' , or 'SizeConstraintSet' . For example, if an @IPSet@ includes the IP address @192.0.2.44@ , AWS WAF will allow, block, or count requests based on all IP addresses /except/ @192.0.2.44@ .
-- * 'type'' - The type of predicate in a @Rule@ , such as @ByteMatch@ or @IPSet@ .
mkPredicate ::
  -- | 'negated'
  Lude.Bool ->
  -- | 'type''
  PredicateType ->
  -- | 'dataId'
  Lude.Text ->
  Predicate
mkPredicate pNegated_ pType_ pDataId_ =
  Predicate'
    { negated = pNegated_,
      type' = pType_,
      dataId = pDataId_
    }

-- | Set @Negated@ to @False@ if you want AWS WAF to allow, block, or count requests based on the settings in the specified 'ByteMatchSet' , 'IPSet' , 'SqlInjectionMatchSet' , 'XssMatchSet' , 'RegexMatchSet' , 'GeoMatchSet' , or 'SizeConstraintSet' . For example, if an @IPSet@ includes the IP address @192.0.2.44@ , AWS WAF will allow or block requests based on that IP address.
--
-- Set @Negated@ to @True@ if you want AWS WAF to allow or block a request based on the negation of the settings in the 'ByteMatchSet' , 'IPSet' , 'SqlInjectionMatchSet' , 'XssMatchSet' , 'RegexMatchSet' , 'GeoMatchSet' , or 'SizeConstraintSet' . For example, if an @IPSet@ includes the IP address @192.0.2.44@ , AWS WAF will allow, block, or count requests based on all IP addresses /except/ @192.0.2.44@ .
--
-- /Note:/ Consider using 'negated' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pNegated :: Lens.Lens' Predicate Lude.Bool
pNegated = Lens.lens (negated :: Predicate -> Lude.Bool) (\s a -> s {negated = a} :: Predicate)
{-# DEPRECATED pNegated "Use generic-lens or generic-optics with 'negated' instead." #-}

-- | The type of predicate in a @Rule@ , such as @ByteMatch@ or @IPSet@ .
--
-- /Note:/ Consider using 'type'' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pType :: Lens.Lens' Predicate PredicateType
pType = Lens.lens (type' :: Predicate -> PredicateType) (\s a -> s {type' = a} :: Predicate)
{-# DEPRECATED pType "Use generic-lens or generic-optics with 'type'' instead." #-}

-- | A unique identifier for a predicate in a @Rule@ , such as @ByteMatchSetId@ or @IPSetId@ . The ID is returned by the corresponding @Create@ or @List@ command.
--
-- /Note:/ Consider using 'dataId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pDataId :: Lens.Lens' Predicate Lude.Text
pDataId = Lens.lens (dataId :: Predicate -> Lude.Text) (\s a -> s {dataId = a} :: Predicate)
{-# DEPRECATED pDataId "Use generic-lens or generic-optics with 'dataId' instead." #-}

instance Lude.FromJSON Predicate where
  parseJSON =
    Lude.withObject
      "Predicate"
      ( \x ->
          Predicate'
            Lude.<$> (x Lude..: "Negated")
            Lude.<*> (x Lude..: "Type")
            Lude.<*> (x Lude..: "DataId")
      )

instance Lude.ToJSON Predicate where
  toJSON Predicate' {..} =
    Lude.object
      ( Lude.catMaybes
          [ Lude.Just ("Negated" Lude..= negated),
            Lude.Just ("Type" Lude..= type'),
            Lude.Just ("DataId" Lude..= dataId)
          ]
      )