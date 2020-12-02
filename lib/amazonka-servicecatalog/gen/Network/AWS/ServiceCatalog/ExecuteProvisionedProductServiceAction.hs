{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ServiceCatalog.ExecuteProvisionedProductServiceAction
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Executes a self-service action against a provisioned product.
module Network.AWS.ServiceCatalog.ExecuteProvisionedProductServiceAction
  ( -- * Creating a Request
    executeProvisionedProductServiceAction,
    ExecuteProvisionedProductServiceAction,

    -- * Request Lenses
    eppsaAcceptLanguage,
    eppsaParameters,
    eppsaProvisionedProductId,
    eppsaServiceActionId,
    eppsaExecuteToken,

    -- * Destructuring the Response
    executeProvisionedProductServiceActionResponse,
    ExecuteProvisionedProductServiceActionResponse,

    -- * Response Lenses
    eppsarsRecordDetail,
    eppsarsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.ServiceCatalog.Types

-- | /See:/ 'executeProvisionedProductServiceAction' smart constructor.
data ExecuteProvisionedProductServiceAction = ExecuteProvisionedProductServiceAction'
  { _eppsaAcceptLanguage ::
      !(Maybe Text),
    _eppsaParameters ::
      !( Maybe
           ( Map
               Text
               ([Text])
           )
       ),
    _eppsaProvisionedProductId ::
      !Text,
    _eppsaServiceActionId ::
      !Text,
    _eppsaExecuteToken ::
      !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ExecuteProvisionedProductServiceAction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eppsaAcceptLanguage' - The language code.     * @en@ - English (default)     * @jp@ - Japanese     * @zh@ - Chinese
--
-- * 'eppsaParameters' - A map of all self-service action parameters and their values. If a provided parameter is of a special type, such as @TARGET@ , the provided value will override the default value generated by AWS Service Catalog. If the parameters field is not provided, no additional parameters are passed and default values will be used for any special parameters such as @TARGET@ .
--
-- * 'eppsaProvisionedProductId' - The identifier of the provisioned product.
--
-- * 'eppsaServiceActionId' - The self-service action identifier. For example, @act-fs7abcd89wxyz@ .
--
-- * 'eppsaExecuteToken' - An idempotency token that uniquely identifies the execute request.
executeProvisionedProductServiceAction ::
  -- | 'eppsaProvisionedProductId'
  Text ->
  -- | 'eppsaServiceActionId'
  Text ->
  -- | 'eppsaExecuteToken'
  Text ->
  ExecuteProvisionedProductServiceAction
executeProvisionedProductServiceAction
  pProvisionedProductId_
  pServiceActionId_
  pExecuteToken_ =
    ExecuteProvisionedProductServiceAction'
      { _eppsaAcceptLanguage =
          Nothing,
        _eppsaParameters = Nothing,
        _eppsaProvisionedProductId = pProvisionedProductId_,
        _eppsaServiceActionId = pServiceActionId_,
        _eppsaExecuteToken = pExecuteToken_
      }

-- | The language code.     * @en@ - English (default)     * @jp@ - Japanese     * @zh@ - Chinese
eppsaAcceptLanguage :: Lens' ExecuteProvisionedProductServiceAction (Maybe Text)
eppsaAcceptLanguage = lens _eppsaAcceptLanguage (\s a -> s {_eppsaAcceptLanguage = a})

-- | A map of all self-service action parameters and their values. If a provided parameter is of a special type, such as @TARGET@ , the provided value will override the default value generated by AWS Service Catalog. If the parameters field is not provided, no additional parameters are passed and default values will be used for any special parameters such as @TARGET@ .
eppsaParameters :: Lens' ExecuteProvisionedProductServiceAction (HashMap Text ([Text]))
eppsaParameters = lens _eppsaParameters (\s a -> s {_eppsaParameters = a}) . _Default . _Map

-- | The identifier of the provisioned product.
eppsaProvisionedProductId :: Lens' ExecuteProvisionedProductServiceAction Text
eppsaProvisionedProductId = lens _eppsaProvisionedProductId (\s a -> s {_eppsaProvisionedProductId = a})

-- | The self-service action identifier. For example, @act-fs7abcd89wxyz@ .
eppsaServiceActionId :: Lens' ExecuteProvisionedProductServiceAction Text
eppsaServiceActionId = lens _eppsaServiceActionId (\s a -> s {_eppsaServiceActionId = a})

-- | An idempotency token that uniquely identifies the execute request.
eppsaExecuteToken :: Lens' ExecuteProvisionedProductServiceAction Text
eppsaExecuteToken = lens _eppsaExecuteToken (\s a -> s {_eppsaExecuteToken = a})

instance AWSRequest ExecuteProvisionedProductServiceAction where
  type
    Rs ExecuteProvisionedProductServiceAction =
      ExecuteProvisionedProductServiceActionResponse
  request = postJSON serviceCatalog
  response =
    receiveJSON
      ( \s h x ->
          ExecuteProvisionedProductServiceActionResponse'
            <$> (x .?> "RecordDetail") <*> (pure (fromEnum s))
      )

instance Hashable ExecuteProvisionedProductServiceAction

instance NFData ExecuteProvisionedProductServiceAction

instance ToHeaders ExecuteProvisionedProductServiceAction where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWS242ServiceCatalogService.ExecuteProvisionedProductServiceAction" ::
                     ByteString
                 ),
            "Content-Type" =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ExecuteProvisionedProductServiceAction where
  toJSON ExecuteProvisionedProductServiceAction' {..} =
    object
      ( catMaybes
          [ ("AcceptLanguage" .=) <$> _eppsaAcceptLanguage,
            ("Parameters" .=) <$> _eppsaParameters,
            Just ("ProvisionedProductId" .= _eppsaProvisionedProductId),
            Just ("ServiceActionId" .= _eppsaServiceActionId),
            Just ("ExecuteToken" .= _eppsaExecuteToken)
          ]
      )

instance ToPath ExecuteProvisionedProductServiceAction where
  toPath = const "/"

instance ToQuery ExecuteProvisionedProductServiceAction where
  toQuery = const mempty

-- | /See:/ 'executeProvisionedProductServiceActionResponse' smart constructor.
data ExecuteProvisionedProductServiceActionResponse = ExecuteProvisionedProductServiceActionResponse'
  { _eppsarsRecordDetail ::
      !( Maybe
           RecordDetail
       ),
    _eppsarsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ExecuteProvisionedProductServiceActionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eppsarsRecordDetail' - An object containing detailed information about the result of provisioning the product.
--
-- * 'eppsarsResponseStatus' - -- | The response status code.
executeProvisionedProductServiceActionResponse ::
  -- | 'eppsarsResponseStatus'
  Int ->
  ExecuteProvisionedProductServiceActionResponse
executeProvisionedProductServiceActionResponse pResponseStatus_ =
  ExecuteProvisionedProductServiceActionResponse'
    { _eppsarsRecordDetail =
        Nothing,
      _eppsarsResponseStatus = pResponseStatus_
    }

-- | An object containing detailed information about the result of provisioning the product.
eppsarsRecordDetail :: Lens' ExecuteProvisionedProductServiceActionResponse (Maybe RecordDetail)
eppsarsRecordDetail = lens _eppsarsRecordDetail (\s a -> s {_eppsarsRecordDetail = a})

-- | -- | The response status code.
eppsarsResponseStatus :: Lens' ExecuteProvisionedProductServiceActionResponse Int
eppsarsResponseStatus = lens _eppsarsResponseStatus (\s a -> s {_eppsarsResponseStatus = a})

instance NFData ExecuteProvisionedProductServiceActionResponse
