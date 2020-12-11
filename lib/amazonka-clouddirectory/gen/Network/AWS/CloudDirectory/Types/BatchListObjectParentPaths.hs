-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudDirectory.Types.BatchListObjectParentPaths
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudDirectory.Types.BatchListObjectParentPaths
  ( BatchListObjectParentPaths (..),

    -- * Smart constructor
    mkBatchListObjectParentPaths,

    -- * Lenses
    bloppsNextToken,
    bloppsMaxResults,
    bloppsObjectReference,
  )
where

import Network.AWS.CloudDirectory.Types.ObjectReference
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | Retrieves all available parent paths for any object type such as node, leaf node, policy node, and index node objects inside a 'BatchRead' operation. For more information, see 'ListObjectParentPaths' and 'BatchReadRequest$Operations' .
--
-- /See:/ 'mkBatchListObjectParentPaths' smart constructor.
data BatchListObjectParentPaths = BatchListObjectParentPaths'
  { nextToken ::
      Lude.Maybe Lude.Text,
    maxResults :: Lude.Maybe Lude.Natural,
    objectReference :: ObjectReference
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'BatchListObjectParentPaths' with the minimum fields required to make a request.
--
-- * 'maxResults' - The maximum number of results to retrieve.
-- * 'nextToken' - The pagination token.
-- * 'objectReference' - The reference that identifies the object whose attributes will be listed.
mkBatchListObjectParentPaths ::
  -- | 'objectReference'
  ObjectReference ->
  BatchListObjectParentPaths
mkBatchListObjectParentPaths pObjectReference_ =
  BatchListObjectParentPaths'
    { nextToken = Lude.Nothing,
      maxResults = Lude.Nothing,
      objectReference = pObjectReference_
    }

-- | The pagination token.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
bloppsNextToken :: Lens.Lens' BatchListObjectParentPaths (Lude.Maybe Lude.Text)
bloppsNextToken = Lens.lens (nextToken :: BatchListObjectParentPaths -> Lude.Maybe Lude.Text) (\s a -> s {nextToken = a} :: BatchListObjectParentPaths)
{-# DEPRECATED bloppsNextToken "Use generic-lens or generic-optics with 'nextToken' instead." #-}

-- | The maximum number of results to retrieve.
--
-- /Note:/ Consider using 'maxResults' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
bloppsMaxResults :: Lens.Lens' BatchListObjectParentPaths (Lude.Maybe Lude.Natural)
bloppsMaxResults = Lens.lens (maxResults :: BatchListObjectParentPaths -> Lude.Maybe Lude.Natural) (\s a -> s {maxResults = a} :: BatchListObjectParentPaths)
{-# DEPRECATED bloppsMaxResults "Use generic-lens or generic-optics with 'maxResults' instead." #-}

-- | The reference that identifies the object whose attributes will be listed.
--
-- /Note:/ Consider using 'objectReference' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
bloppsObjectReference :: Lens.Lens' BatchListObjectParentPaths ObjectReference
bloppsObjectReference = Lens.lens (objectReference :: BatchListObjectParentPaths -> ObjectReference) (\s a -> s {objectReference = a} :: BatchListObjectParentPaths)
{-# DEPRECATED bloppsObjectReference "Use generic-lens or generic-optics with 'objectReference' instead." #-}

instance Lude.ToJSON BatchListObjectParentPaths where
  toJSON BatchListObjectParentPaths' {..} =
    Lude.object
      ( Lude.catMaybes
          [ ("NextToken" Lude..=) Lude.<$> nextToken,
            ("MaxResults" Lude..=) Lude.<$> maxResults,
            Lude.Just ("ObjectReference" Lude..= objectReference)
          ]
      )