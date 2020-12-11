-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AppSync.Types.DataSourceType
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppSync.Types.DataSourceType
  ( DataSourceType
      ( DataSourceType',
        AWSLambda,
        AmazonDynamodb,
        AmazonElasticsearch,
        HTTP,
        None,
        RelationalDatabase
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype DataSourceType = DataSourceType' Lude.Text
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

pattern AWSLambda :: DataSourceType
pattern AWSLambda = DataSourceType' "AWS_LAMBDA"

pattern AmazonDynamodb :: DataSourceType
pattern AmazonDynamodb = DataSourceType' "AMAZON_DYNAMODB"

pattern AmazonElasticsearch :: DataSourceType
pattern AmazonElasticsearch = DataSourceType' "AMAZON_ELASTICSEARCH"

pattern HTTP :: DataSourceType
pattern HTTP = DataSourceType' "HTTP"

pattern None :: DataSourceType
pattern None = DataSourceType' "NONE"

pattern RelationalDatabase :: DataSourceType
pattern RelationalDatabase = DataSourceType' "RELATIONAL_DATABASE"

{-# COMPLETE
  AWSLambda,
  AmazonDynamodb,
  AmazonElasticsearch,
  HTTP,
  None,
  RelationalDatabase,
  DataSourceType'
  #-}