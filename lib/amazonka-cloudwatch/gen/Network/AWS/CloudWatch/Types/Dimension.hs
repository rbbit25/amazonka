-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudWatch.Types.Dimension
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudWatch.Types.Dimension
  ( Dimension (..),

    -- * Smart constructor
    mkDimension,

    -- * Lenses
    dName,
    dValue,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | A dimension is a name/value pair that is part of the identity of a metric. You can assign up to 10 dimensions to a metric. Because dimensions are part of the unique identifier for a metric, whenever you add a unique name/value pair to one of your metrics, you are creating a new variation of that metric.
--
-- /See:/ 'mkDimension' smart constructor.
data Dimension = Dimension' {name :: Lude.Text, value :: Lude.Text}
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'Dimension' with the minimum fields required to make a request.
--
-- * 'name' - The name of the dimension. Dimension names cannot contain blank spaces or non-ASCII characters.
-- * 'value' - The value of the dimension. Dimension values cannot contain blank spaces or non-ASCII characters.
mkDimension ::
  -- | 'name'
  Lude.Text ->
  -- | 'value'
  Lude.Text ->
  Dimension
mkDimension pName_ pValue_ =
  Dimension' {name = pName_, value = pValue_}

-- | The name of the dimension. Dimension names cannot contain blank spaces or non-ASCII characters.
--
-- /Note:/ Consider using 'name' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dName :: Lens.Lens' Dimension Lude.Text
dName = Lens.lens (name :: Dimension -> Lude.Text) (\s a -> s {name = a} :: Dimension)
{-# DEPRECATED dName "Use generic-lens or generic-optics with 'name' instead." #-}

-- | The value of the dimension. Dimension values cannot contain blank spaces or non-ASCII characters.
--
-- /Note:/ Consider using 'value' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dValue :: Lens.Lens' Dimension Lude.Text
dValue = Lens.lens (value :: Dimension -> Lude.Text) (\s a -> s {value = a} :: Dimension)
{-# DEPRECATED dValue "Use generic-lens or generic-optics with 'value' instead." #-}

instance Lude.FromXML Dimension where
  parseXML x =
    Dimension'
      Lude.<$> (x Lude..@ "Name") Lude.<*> (x Lude..@ "Value")

instance Lude.ToQuery Dimension where
  toQuery Dimension' {..} =
    Lude.mconcat ["Name" Lude.=: name, "Value" Lude.=: value]