-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticSearch.Types.EBSOptionsStatus
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticSearch.Types.EBSOptionsStatus
  ( EBSOptionsStatus (..),

    -- * Smart constructor
    mkEBSOptionsStatus,

    -- * Lenses
    eosOptions,
    eosStatus,
  )
where

import Network.AWS.ElasticSearch.Types.EBSOptions
import Network.AWS.ElasticSearch.Types.OptionStatus
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | Status of the EBS options for the specified Elasticsearch domain.
--
-- /See:/ 'mkEBSOptionsStatus' smart constructor.
data EBSOptionsStatus = EBSOptionsStatus'
  { options :: EBSOptions,
    status :: OptionStatus
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'EBSOptionsStatus' with the minimum fields required to make a request.
--
-- * 'options' - Specifies the EBS options for the specified Elasticsearch domain.
-- * 'status' - Specifies the status of the EBS options for the specified Elasticsearch domain.
mkEBSOptionsStatus ::
  -- | 'options'
  EBSOptions ->
  -- | 'status'
  OptionStatus ->
  EBSOptionsStatus
mkEBSOptionsStatus pOptions_ pStatus_ =
  EBSOptionsStatus' {options = pOptions_, status = pStatus_}

-- | Specifies the EBS options for the specified Elasticsearch domain.
--
-- /Note:/ Consider using 'options' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
eosOptions :: Lens.Lens' EBSOptionsStatus EBSOptions
eosOptions = Lens.lens (options :: EBSOptionsStatus -> EBSOptions) (\s a -> s {options = a} :: EBSOptionsStatus)
{-# DEPRECATED eosOptions "Use generic-lens or generic-optics with 'options' instead." #-}

-- | Specifies the status of the EBS options for the specified Elasticsearch domain.
--
-- /Note:/ Consider using 'status' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
eosStatus :: Lens.Lens' EBSOptionsStatus OptionStatus
eosStatus = Lens.lens (status :: EBSOptionsStatus -> OptionStatus) (\s a -> s {status = a} :: EBSOptionsStatus)
{-# DEPRECATED eosStatus "Use generic-lens or generic-optics with 'status' instead." #-}

instance Lude.FromJSON EBSOptionsStatus where
  parseJSON =
    Lude.withObject
      "EBSOptionsStatus"
      ( \x ->
          EBSOptionsStatus'
            Lude.<$> (x Lude..: "Options") Lude.<*> (x Lude..: "Status")
      )