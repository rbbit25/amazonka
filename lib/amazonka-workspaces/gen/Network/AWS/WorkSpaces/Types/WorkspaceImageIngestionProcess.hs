-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WorkSpaces.Types.WorkspaceImageIngestionProcess
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkSpaces.Types.WorkspaceImageIngestionProcess
  ( WorkspaceImageIngestionProcess
      ( WorkspaceImageIngestionProcess',
        ByolGraphics,
        ByolGraphicspro,
        ByolRegular
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype WorkspaceImageIngestionProcess = WorkspaceImageIngestionProcess' Lude.Text
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

pattern ByolGraphics :: WorkspaceImageIngestionProcess
pattern ByolGraphics = WorkspaceImageIngestionProcess' "BYOL_GRAPHICS"

pattern ByolGraphicspro :: WorkspaceImageIngestionProcess
pattern ByolGraphicspro = WorkspaceImageIngestionProcess' "BYOL_GRAPHICSPRO"

pattern ByolRegular :: WorkspaceImageIngestionProcess
pattern ByolRegular = WorkspaceImageIngestionProcess' "BYOL_REGULAR"

{-# COMPLETE
  ByolGraphics,
  ByolGraphicspro,
  ByolRegular,
  WorkspaceImageIngestionProcess'
  #-}