{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.Affinity
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.Affinity where

import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data Affinity
  = ADefault
  | AHost
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Enum,
      Bounded,
      Data,
      Typeable,
      Generic
    )

instance FromText Affinity where
  parser =
    takeLowerText >>= \case
      "default" -> pure ADefault
      "host" -> pure AHost
      e ->
        fromTextError $
          "Failure parsing Affinity from value: '" <> e
            <> "'. Accepted values: default, host"

instance ToText Affinity where
  toText = \case
    ADefault -> "default"
    AHost -> "host"

instance Hashable Affinity

instance NFData Affinity

instance ToByteString Affinity

instance ToQuery Affinity

instance ToHeader Affinity
