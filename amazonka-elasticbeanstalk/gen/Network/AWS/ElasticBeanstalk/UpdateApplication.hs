{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticBeanstalk.UpdateApplication
-- Copyright   : (c) 2013-2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified application to have the specified properties.
--
-- If a property (for example, @description@) is not provided, the value
-- remains unchanged. To clear these properties, specify an empty string.
--
-- <http://docs.aws.amazon.com/elasticbeanstalk/latest/api/API_UpdateApplication.html>
module Network.AWS.ElasticBeanstalk.UpdateApplication
    (
    -- * Request
      UpdateApplication
    -- ** Request constructor
    , updateApplication
    -- ** Request lenses
    , uarqDescription
    , uarqApplicationName

    -- * Response
    , ApplicationDescriptionMessage
    -- ** Response constructor
    , applicationDescriptionMessage
    -- ** Response lenses
    , uarsApplication
    ) where

import           Network.AWS.ElasticBeanstalk.Types
import           Network.AWS.Prelude
import           Network.AWS.Request
import           Network.AWS.Response

-- | This documentation target is not reported in the API reference.
--
-- /See:/ 'updateApplication' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'uarqDescription'
--
-- * 'uarqApplicationName'
data UpdateApplication = UpdateApplication'
    { _uarqDescription     :: !(Maybe Text)
    , _uarqApplicationName :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | 'UpdateApplication' smart constructor.
updateApplication :: Text -> UpdateApplication
updateApplication pApplicationName =
    UpdateApplication'
    { _uarqDescription = Nothing
    , _uarqApplicationName = pApplicationName
    }

-- | A new description for the application.
--
-- Default: If not specified, AWS Elastic Beanstalk does not update the
-- description.
uarqDescription :: Lens' UpdateApplication (Maybe Text)
uarqDescription = lens _uarqDescription (\ s a -> s{_uarqDescription = a});

-- | The name of the application to update. If no such application is found,
-- @UpdateApplication@ returns an @InvalidParameterValue@ error.
uarqApplicationName :: Lens' UpdateApplication Text
uarqApplicationName = lens _uarqApplicationName (\ s a -> s{_uarqApplicationName = a});

instance AWSRequest UpdateApplication where
        type Sv UpdateApplication = ElasticBeanstalk
        type Rs UpdateApplication =
             ApplicationDescriptionMessage
        request = post
        response
          = receiveXMLWrapper "UpdateApplicationResult"
              (\ s h x -> parseXML x)

instance ToHeaders UpdateApplication where
        toHeaders = const mempty

instance ToPath UpdateApplication where
        toPath = const "/"

instance ToQuery UpdateApplication where
        toQuery UpdateApplication'{..}
          = mconcat
              ["Action" =: ("UpdateApplication" :: ByteString),
               "Version" =: ("2010-12-01" :: ByteString),
               "Description" =: _uarqDescription,
               "ApplicationName" =: _uarqApplicationName]
