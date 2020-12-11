-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Redshift.Types.ScheduledActionFilter
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Redshift.Types.ScheduledActionFilter
  ( ScheduledActionFilter (..),

    -- * Smart constructor
    mkScheduledActionFilter,

    -- * Lenses
    safName,
    safValues,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude
import Network.AWS.Redshift.Internal
import Network.AWS.Redshift.Types.ScheduledActionFilterName

-- | A set of elements to filter the returned scheduled actions.
--
-- /See:/ 'mkScheduledActionFilter' smart constructor.
data ScheduledActionFilter = ScheduledActionFilter'
  { name ::
      ScheduledActionFilterName,
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

-- | Creates a value of 'ScheduledActionFilter' with the minimum fields required to make a request.
--
-- * 'name' - The type of element to filter.
-- * 'values' - List of values. Compare if the value (of type defined by @Name@ ) equals an item in the list of scheduled actions.
mkScheduledActionFilter ::
  -- | 'name'
  ScheduledActionFilterName ->
  ScheduledActionFilter
mkScheduledActionFilter pName_ =
  ScheduledActionFilter' {name = pName_, values = Lude.mempty}

-- | The type of element to filter.
--
-- /Note:/ Consider using 'name' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
safName :: Lens.Lens' ScheduledActionFilter ScheduledActionFilterName
safName = Lens.lens (name :: ScheduledActionFilter -> ScheduledActionFilterName) (\s a -> s {name = a} :: ScheduledActionFilter)
{-# DEPRECATED safName "Use generic-lens or generic-optics with 'name' instead." #-}

-- | List of values. Compare if the value (of type defined by @Name@ ) equals an item in the list of scheduled actions.
--
-- /Note:/ Consider using 'values' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
safValues :: Lens.Lens' ScheduledActionFilter [Lude.Text]
safValues = Lens.lens (values :: ScheduledActionFilter -> [Lude.Text]) (\s a -> s {values = a} :: ScheduledActionFilter)
{-# DEPRECATED safValues "Use generic-lens or generic-optics with 'values' instead." #-}

instance Lude.ToQuery ScheduledActionFilter where
  toQuery ScheduledActionFilter' {..} =
    Lude.mconcat
      [ "Name" Lude.=: name,
        "Values" Lude.=: Lude.toQueryList "item" values
      ]