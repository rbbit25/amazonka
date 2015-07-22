{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lambda.CreateFunction
-- Copyright   : (c) 2013-2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)
--
-- Creates a new Lambda function. The function metadata is created from the
-- request parameters, and the code for the function is provided by a .zip
-- file in the request body. If the function name already exists, the
-- operation will fail. Note that the function name is case-sensitive.
--
-- This operation requires permission for the @lambda:CreateFunction@
-- action.
--
-- <http://docs.aws.amazon.com/lambda/latest/dg/API_CreateFunction.html>
module Network.AWS.Lambda.CreateFunction
    (
    -- * Request
      CreateFunction
    -- ** Request constructor
    , createFunction
    -- ** Request lenses
    , cfrqMemorySize
    , cfrqTimeout
    , cfrqDescription
    , cfrqFunctionName
    , cfrqRuntime
    , cfrqRole
    , cfrqHandler
    , cfrqCode

    -- * Response
    , FunctionConfiguration
    -- ** Response constructor
    , functionConfiguration
    -- ** Response lenses
    , cfrsRuntime
    , cfrsMemorySize
    , cfrsFunctionARN
    , cfrsRole
    , cfrsFunctionName
    , cfrsCodeSize
    , cfrsHandler
    , cfrsTimeout
    , cfrsLastModified
    , cfrsDescription
    ) where

import           Network.AWS.Lambda.Types
import           Network.AWS.Prelude
import           Network.AWS.Request
import           Network.AWS.Response

-- | /See:/ 'createFunction' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'cfrqMemorySize'
--
-- * 'cfrqTimeout'
--
-- * 'cfrqDescription'
--
-- * 'cfrqFunctionName'
--
-- * 'cfrqRuntime'
--
-- * 'cfrqRole'
--
-- * 'cfrqHandler'
--
-- * 'cfrqCode'
data CreateFunction = CreateFunction'
    { _cfrqMemorySize   :: !(Maybe Nat)
    , _cfrqTimeout      :: !(Maybe Nat)
    , _cfrqDescription  :: !(Maybe Text)
    , _cfrqFunctionName :: !Text
    , _cfrqRuntime      :: !Runtime
    , _cfrqRole         :: !Text
    , _cfrqHandler      :: !Text
    , _cfrqCode         :: !FunctionCode
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | 'CreateFunction' smart constructor.
createFunction :: Text -> Runtime -> Text -> Text -> FunctionCode -> CreateFunction
createFunction pFunctionName pRuntime pRole pHandler pCode =
    CreateFunction'
    { _cfrqMemorySize = Nothing
    , _cfrqTimeout = Nothing
    , _cfrqDescription = Nothing
    , _cfrqFunctionName = pFunctionName
    , _cfrqRuntime = pRuntime
    , _cfrqRole = pRole
    , _cfrqHandler = pHandler
    , _cfrqCode = pCode
    }

-- | The amount of memory, in MB, your Lambda function is given. Lambda uses
-- this memory size to infer the amount of CPU and memory allocated to your
-- function. Your function use-case determines your CPU and memory
-- requirements. For example, a database operation might need less memory
-- compared to an image processing function. The default value is 128 MB.
-- The value must be a multiple of 64 MB.
cfrqMemorySize :: Lens' CreateFunction (Maybe Natural)
cfrqMemorySize = lens _cfrqMemorySize (\ s a -> s{_cfrqMemorySize = a}) . mapping _Nat;

-- | The function execution time at which Lambda should terminate the
-- function. Because the execution time has cost implications, we recommend
-- you set this value based on your expected execution time. The default is
-- 3 seconds.
cfrqTimeout :: Lens' CreateFunction (Maybe Natural)
cfrqTimeout = lens _cfrqTimeout (\ s a -> s{_cfrqTimeout = a}) . mapping _Nat;

-- | A short, user-defined function description. Lambda does not use this
-- value. Assign a meaningful description as you see fit.
cfrqDescription :: Lens' CreateFunction (Maybe Text)
cfrqDescription = lens _cfrqDescription (\ s a -> s{_cfrqDescription = a});

-- | The name you want to assign to the function you are uploading. You can
-- specify an unqualified function name (for example, \"Thumbnail\") or you
-- can specify Amazon Resource Name (ARN) of the function (for example,
-- \"arn:aws:lambda:us-west-2:account-id:function:ThumbNail\"). AWS Lambda
-- also allows you to specify only the account ID qualifier (for example,
-- \"account-id:Thumbnail\"). Note that the length constraint applies only
-- to the ARN. If you specify only the function name, it is limited to 64
-- character in length. The function names appear in the console and are
-- returned in the ListFunctions API. Function names are used to specify
-- functions to other AWS Lambda APIs, such as Invoke.
cfrqFunctionName :: Lens' CreateFunction Text
cfrqFunctionName = lens _cfrqFunctionName (\ s a -> s{_cfrqFunctionName = a});

-- | The runtime environment for the Lambda function you are uploading.
-- Currently, Lambda supports \"java\" and \"nodejs\" as the runtime.
cfrqRuntime :: Lens' CreateFunction Runtime
cfrqRuntime = lens _cfrqRuntime (\ s a -> s{_cfrqRuntime = a});

-- | The Amazon Resource Name (ARN) of the IAM role that Lambda assumes when
-- it executes your function to access any other Amazon Web Services (AWS)
-- resources. For more information, see
-- <http://docs.aws.amazon.com/lambda/latest/dg/lambda-introduction.html AWS Lambda: How it Works>
cfrqRole :: Lens' CreateFunction Text
cfrqRole = lens _cfrqRole (\ s a -> s{_cfrqRole = a});

-- | The function within your code that Lambda calls to begin execution. For
-- Node.js, it is the /module-name/./export/ value in your function. For
-- Java, it can be @package.class-name::handler@ or @package.class-name@.
-- For more information, see
-- <http://docs.aws.amazon.com/lambda/latest/dg/java-programming-model-handler-types.html Lambda Function Handler (Java)>.
cfrqHandler :: Lens' CreateFunction Text
cfrqHandler = lens _cfrqHandler (\ s a -> s{_cfrqHandler = a});

-- | The code for the Lambda function.
cfrqCode :: Lens' CreateFunction FunctionCode
cfrqCode = lens _cfrqCode (\ s a -> s{_cfrqCode = a});

instance AWSRequest CreateFunction where
        type Sv CreateFunction = Lambda
        type Rs CreateFunction = FunctionConfiguration
        request = postJSON
        response = receiveJSON (\ s h x -> eitherParseJSON x)

instance ToHeaders CreateFunction where
        toHeaders = const mempty

instance ToJSON CreateFunction where
        toJSON CreateFunction'{..}
          = object
              ["MemorySize" .= _cfrqMemorySize,
               "Timeout" .= _cfrqTimeout,
               "Description" .= _cfrqDescription,
               "FunctionName" .= _cfrqFunctionName,
               "Runtime" .= _cfrqRuntime, "Role" .= _cfrqRole,
               "Handler" .= _cfrqHandler, "Code" .= _cfrqCode]

instance ToPath CreateFunction where
        toPath = const "/2015-03-31/functions"

instance ToQuery CreateFunction where
        toQuery = const mempty
