-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.ElasticsearchAction
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.ElasticsearchAction
  ( ElasticsearchAction (..),

    -- * Smart constructor
    mkElasticsearchAction,

    -- * Lenses
    eaRoleARN,
    eaEndpoint,
    eaIndex,
    eaType,
    eaId,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | Describes an action that writes data to an Amazon Elasticsearch Service domain.
--
-- /See:/ 'mkElasticsearchAction' smart constructor.
data ElasticsearchAction = ElasticsearchAction'
  { roleARN ::
      Lude.Text,
    endpoint :: Lude.Text,
    index :: Lude.Text,
    type' :: Lude.Text,
    id :: Lude.Text
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'ElasticsearchAction' with the minimum fields required to make a request.
--
-- * 'endpoint' - The endpoint of your Elasticsearch domain.
-- * 'id' - The unique identifier for the document you are storing.
-- * 'index' - The Elasticsearch index where you want to store your data.
-- * 'roleARN' - The IAM role ARN that has access to Elasticsearch.
-- * 'type'' - The type of document you are storing.
mkElasticsearchAction ::
  -- | 'roleARN'
  Lude.Text ->
  -- | 'endpoint'
  Lude.Text ->
  -- | 'index'
  Lude.Text ->
  -- | 'type''
  Lude.Text ->
  -- | 'id'
  Lude.Text ->
  ElasticsearchAction
mkElasticsearchAction pRoleARN_ pEndpoint_ pIndex_ pType_ pId_ =
  ElasticsearchAction'
    { roleARN = pRoleARN_,
      endpoint = pEndpoint_,
      index = pIndex_,
      type' = pType_,
      id = pId_
    }

-- | The IAM role ARN that has access to Elasticsearch.
--
-- /Note:/ Consider using 'roleARN' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
eaRoleARN :: Lens.Lens' ElasticsearchAction Lude.Text
eaRoleARN = Lens.lens (roleARN :: ElasticsearchAction -> Lude.Text) (\s a -> s {roleARN = a} :: ElasticsearchAction)
{-# DEPRECATED eaRoleARN "Use generic-lens or generic-optics with 'roleARN' instead." #-}

-- | The endpoint of your Elasticsearch domain.
--
-- /Note:/ Consider using 'endpoint' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
eaEndpoint :: Lens.Lens' ElasticsearchAction Lude.Text
eaEndpoint = Lens.lens (endpoint :: ElasticsearchAction -> Lude.Text) (\s a -> s {endpoint = a} :: ElasticsearchAction)
{-# DEPRECATED eaEndpoint "Use generic-lens or generic-optics with 'endpoint' instead." #-}

-- | The Elasticsearch index where you want to store your data.
--
-- /Note:/ Consider using 'index' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
eaIndex :: Lens.Lens' ElasticsearchAction Lude.Text
eaIndex = Lens.lens (index :: ElasticsearchAction -> Lude.Text) (\s a -> s {index = a} :: ElasticsearchAction)
{-# DEPRECATED eaIndex "Use generic-lens or generic-optics with 'index' instead." #-}

-- | The type of document you are storing.
--
-- /Note:/ Consider using 'type'' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
eaType :: Lens.Lens' ElasticsearchAction Lude.Text
eaType = Lens.lens (type' :: ElasticsearchAction -> Lude.Text) (\s a -> s {type' = a} :: ElasticsearchAction)
{-# DEPRECATED eaType "Use generic-lens or generic-optics with 'type'' instead." #-}

-- | The unique identifier for the document you are storing.
--
-- /Note:/ Consider using 'id' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
eaId :: Lens.Lens' ElasticsearchAction Lude.Text
eaId = Lens.lens (id :: ElasticsearchAction -> Lude.Text) (\s a -> s {id = a} :: ElasticsearchAction)
{-# DEPRECATED eaId "Use generic-lens or generic-optics with 'id' instead." #-}

instance Lude.FromJSON ElasticsearchAction where
  parseJSON =
    Lude.withObject
      "ElasticsearchAction"
      ( \x ->
          ElasticsearchAction'
            Lude.<$> (x Lude..: "roleArn")
            Lude.<*> (x Lude..: "endpoint")
            Lude.<*> (x Lude..: "index")
            Lude.<*> (x Lude..: "type")
            Lude.<*> (x Lude..: "id")
      )

instance Lude.ToJSON ElasticsearchAction where
  toJSON ElasticsearchAction' {..} =
    Lude.object
      ( Lude.catMaybes
          [ Lude.Just ("roleArn" Lude..= roleARN),
            Lude.Just ("endpoint" Lude..= endpoint),
            Lude.Just ("index" Lude..= index),
            Lude.Just ("type" Lude..= type'),
            Lude.Just ("id" Lude..= id)
          ]
      )