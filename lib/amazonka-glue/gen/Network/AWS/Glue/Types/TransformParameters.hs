-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.TransformParameters
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.TransformParameters
  ( TransformParameters (..),

    -- * Smart constructor
    mkTransformParameters,

    -- * Lenses
    tpFindMatchesParameters,
    tpTransformType,
  )
where

import Network.AWS.Glue.Types.FindMatchesParameters
import Network.AWS.Glue.Types.TransformType
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | The algorithm-specific parameters that are associated with the machine learning transform.
--
-- /See:/ 'mkTransformParameters' smart constructor.
data TransformParameters = TransformParameters'
  { findMatchesParameters ::
      Lude.Maybe FindMatchesParameters,
    transformType :: TransformType
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'TransformParameters' with the minimum fields required to make a request.
--
-- * 'findMatchesParameters' - The parameters for the find matches algorithm.
-- * 'transformType' - The type of machine learning transform.
--
-- For information about the types of machine learning transforms, see <https://docs.aws.amazon.com/glue/latest/dg/add-job-machine-learning-transform.html Creating Machine Learning Transforms> .
mkTransformParameters ::
  -- | 'transformType'
  TransformType ->
  TransformParameters
mkTransformParameters pTransformType_ =
  TransformParameters'
    { findMatchesParameters = Lude.Nothing,
      transformType = pTransformType_
    }

-- | The parameters for the find matches algorithm.
--
-- /Note:/ Consider using 'findMatchesParameters' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tpFindMatchesParameters :: Lens.Lens' TransformParameters (Lude.Maybe FindMatchesParameters)
tpFindMatchesParameters = Lens.lens (findMatchesParameters :: TransformParameters -> Lude.Maybe FindMatchesParameters) (\s a -> s {findMatchesParameters = a} :: TransformParameters)
{-# DEPRECATED tpFindMatchesParameters "Use generic-lens or generic-optics with 'findMatchesParameters' instead." #-}

-- | The type of machine learning transform.
--
-- For information about the types of machine learning transforms, see <https://docs.aws.amazon.com/glue/latest/dg/add-job-machine-learning-transform.html Creating Machine Learning Transforms> .
--
-- /Note:/ Consider using 'transformType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tpTransformType :: Lens.Lens' TransformParameters TransformType
tpTransformType = Lens.lens (transformType :: TransformParameters -> TransformType) (\s a -> s {transformType = a} :: TransformParameters)
{-# DEPRECATED tpTransformType "Use generic-lens or generic-optics with 'transformType' instead." #-}

instance Lude.FromJSON TransformParameters where
  parseJSON =
    Lude.withObject
      "TransformParameters"
      ( \x ->
          TransformParameters'
            Lude.<$> (x Lude..:? "FindMatchesParameters")
            Lude.<*> (x Lude..: "TransformType")
      )

instance Lude.ToJSON TransformParameters where
  toJSON TransformParameters' {..} =
    Lude.object
      ( Lude.catMaybes
          [ ("FindMatchesParameters" Lude..=) Lude.<$> findMatchesParameters,
            Lude.Just ("TransformType" Lude..= transformType)
          ]
      )