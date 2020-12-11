-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudDirectory.Types.BatchAttachPolicyResponse
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudDirectory.Types.BatchAttachPolicyResponse
  ( BatchAttachPolicyResponse (..),

    -- * Smart constructor
    mkBatchAttachPolicyResponse,

    -- * Lenses
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | Represents the output of an 'AttachPolicy' response operation.
--
-- /See:/ 'mkBatchAttachPolicyResponse' smart constructor.
data BatchAttachPolicyResponse = BatchAttachPolicyResponse'
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'BatchAttachPolicyResponse' with the minimum fields required to make a request.
mkBatchAttachPolicyResponse ::
  BatchAttachPolicyResponse
mkBatchAttachPolicyResponse = BatchAttachPolicyResponse'

instance Lude.FromJSON BatchAttachPolicyResponse where
  parseJSON =
    Lude.withObject
      "BatchAttachPolicyResponse"
      (\x -> Lude.pure BatchAttachPolicyResponse')