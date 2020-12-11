-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.AttributeDimension
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.AttributeDimension
  ( AttributeDimension (..),

    -- * Smart constructor
    mkAttributeDimension,

    -- * Lenses
    adAttributeType,
    adValues,
  )
where

import qualified Network.AWS.Lens as Lens
import Network.AWS.Pinpoint.Types.AttributeType
import qualified Network.AWS.Prelude as Lude

-- | Specifies attribute-based criteria for including or excluding endpoints from a segment.
--
-- /See:/ 'mkAttributeDimension' smart constructor.
data AttributeDimension = AttributeDimension'
  { attributeType ::
      Lude.Maybe AttributeType,
    values :: [Lude.Text]
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'AttributeDimension' with the minimum fields required to make a request.
--
-- * 'attributeType' - The type of segment dimension to use. Valid values are: INCLUSIVE, endpoints that match the criteria are included in the segment; and, EXCLUSIVE, endpoints that match the criteria are excluded from the segment.
-- * 'values' - The criteria values to use for the segment dimension. Depending on the value of the AttributeType property, endpoints are included or excluded from the segment if their attribute values match the criteria values.
mkAttributeDimension ::
  AttributeDimension
mkAttributeDimension =
  AttributeDimension'
    { attributeType = Lude.Nothing,
      values = Lude.mempty
    }

-- | The type of segment dimension to use. Valid values are: INCLUSIVE, endpoints that match the criteria are included in the segment; and, EXCLUSIVE, endpoints that match the criteria are excluded from the segment.
--
-- /Note:/ Consider using 'attributeType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
adAttributeType :: Lens.Lens' AttributeDimension (Lude.Maybe AttributeType)
adAttributeType = Lens.lens (attributeType :: AttributeDimension -> Lude.Maybe AttributeType) (\s a -> s {attributeType = a} :: AttributeDimension)
{-# DEPRECATED adAttributeType "Use generic-lens or generic-optics with 'attributeType' instead." #-}

-- | The criteria values to use for the segment dimension. Depending on the value of the AttributeType property, endpoints are included or excluded from the segment if their attribute values match the criteria values.
--
-- /Note:/ Consider using 'values' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
adValues :: Lens.Lens' AttributeDimension [Lude.Text]
adValues = Lens.lens (values :: AttributeDimension -> [Lude.Text]) (\s a -> s {values = a} :: AttributeDimension)
{-# DEPRECATED adValues "Use generic-lens or generic-optics with 'values' instead." #-}

instance Lude.FromJSON AttributeDimension where
  parseJSON =
    Lude.withObject
      "AttributeDimension"
      ( \x ->
          AttributeDimension'
            Lude.<$> (x Lude..:? "AttributeType")
            Lude.<*> (x Lude..:? "Values" Lude..!= Lude.mempty)
      )

instance Lude.ToJSON AttributeDimension where
  toJSON AttributeDimension' {..} =
    Lude.object
      ( Lude.catMaybes
          [ ("AttributeType" Lude..=) Lude.<$> attributeType,
            Lude.Just ("Values" Lude..= values)
          ]
      )