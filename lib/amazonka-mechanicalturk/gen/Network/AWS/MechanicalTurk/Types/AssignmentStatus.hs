-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MechanicalTurk.Types.AssignmentStatus
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MechanicalTurk.Types.AssignmentStatus
  ( AssignmentStatus
      ( AssignmentStatus',
        Approved,
        Rejected,
        Submitted
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype AssignmentStatus = AssignmentStatus' Lude.Text
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving newtype
    ( Lude.Hashable,
      Lude.NFData,
      Lude.ToJSONKey,
      Lude.FromJSONKey,
      Lude.ToJSON,
      Lude.FromJSON,
      Lude.ToXML,
      Lude.FromXML,
      Lude.ToText,
      Lude.FromText,
      Lude.ToByteString,
      Lude.ToQuery,
      Lude.ToHeader
    )

pattern Approved :: AssignmentStatus
pattern Approved = AssignmentStatus' "Approved"

pattern Rejected :: AssignmentStatus
pattern Rejected = AssignmentStatus' "Rejected"

pattern Submitted :: AssignmentStatus
pattern Submitted = AssignmentStatus' "Submitted"

{-# COMPLETE
  Approved,
  Rejected,
  Submitted,
  AssignmentStatus'
  #-}