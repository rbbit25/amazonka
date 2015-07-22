{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFormation.ValidateTemplate
-- Copyright   : (c) 2013-2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)
--
-- Validates a specified template.
--
-- <http://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_ValidateTemplate.html>
module Network.AWS.CloudFormation.ValidateTemplate
    (
    -- * Request
      ValidateTemplate
    -- ** Request constructor
    , validateTemplate
    -- ** Request lenses
    , vtrqTemplateBody
    , vtrqTemplateURL

    -- * Response
    , ValidateTemplateResponse
    -- ** Response constructor
    , validateTemplateResponse
    -- ** Response lenses
    , vtrsParameters
    , vtrsCapabilitiesReason
    , vtrsCapabilities
    , vtrsDescription
    , vtrsStatus
    ) where

import           Network.AWS.CloudFormation.Types
import           Network.AWS.Prelude
import           Network.AWS.Request
import           Network.AWS.Response

-- | The input for ValidateTemplate action.
--
-- /See:/ 'validateTemplate' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'vtrqTemplateBody'
--
-- * 'vtrqTemplateURL'
data ValidateTemplate = ValidateTemplate'
    { _vtrqTemplateBody :: !(Maybe Text)
    , _vtrqTemplateURL  :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | 'ValidateTemplate' smart constructor.
validateTemplate :: ValidateTemplate
validateTemplate =
    ValidateTemplate'
    { _vtrqTemplateBody = Nothing
    , _vtrqTemplateURL = Nothing
    }

-- | Structure containing the template body with a minimum length of 1 byte
-- and a maximum length of 51,200 bytes. For more information, go to
-- <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html Template Anatomy>
-- in the AWS CloudFormation User Guide.
--
-- Conditional: You must pass @TemplateURL@ or @TemplateBody@. If both are
-- passed, only @TemplateBody@ is used.
vtrqTemplateBody :: Lens' ValidateTemplate (Maybe Text)
vtrqTemplateBody = lens _vtrqTemplateBody (\ s a -> s{_vtrqTemplateBody = a});

-- | Location of file containing the template body. The URL must point to a
-- template (max size: 460,800 bytes) located in an S3 bucket in the same
-- region as the stack. For more information, go to
-- <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html Template Anatomy>
-- in the AWS CloudFormation User Guide.
--
-- Conditional: You must pass @TemplateURL@ or @TemplateBody@. If both are
-- passed, only @TemplateBody@ is used.
vtrqTemplateURL :: Lens' ValidateTemplate (Maybe Text)
vtrqTemplateURL = lens _vtrqTemplateURL (\ s a -> s{_vtrqTemplateURL = a});

instance AWSRequest ValidateTemplate where
        type Sv ValidateTemplate = CloudFormation
        type Rs ValidateTemplate = ValidateTemplateResponse
        request = post
        response
          = receiveXMLWrapper "ValidateTemplateResult"
              (\ s h x ->
                 ValidateTemplateResponse' <$>
                   (x .@? "Parameters" .!@ mempty >>=
                      may (parseXMLList "member"))
                     <*> (x .@? "CapabilitiesReason")
                     <*>
                     (x .@? "Capabilities" .!@ mempty >>=
                        may (parseXMLList "member"))
                     <*> (x .@? "Description")
                     <*> (pure (fromEnum s)))

instance ToHeaders ValidateTemplate where
        toHeaders = const mempty

instance ToPath ValidateTemplate where
        toPath = const "/"

instance ToQuery ValidateTemplate where
        toQuery ValidateTemplate'{..}
          = mconcat
              ["Action" =: ("ValidateTemplate" :: ByteString),
               "Version" =: ("2010-05-15" :: ByteString),
               "TemplateBody" =: _vtrqTemplateBody,
               "TemplateURL" =: _vtrqTemplateURL]

-- | The output for ValidateTemplate action.
--
-- /See:/ 'validateTemplateResponse' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'vtrsParameters'
--
-- * 'vtrsCapabilitiesReason'
--
-- * 'vtrsCapabilities'
--
-- * 'vtrsDescription'
--
-- * 'vtrsStatus'
data ValidateTemplateResponse = ValidateTemplateResponse'
    { _vtrsParameters         :: !(Maybe [TemplateParameter])
    , _vtrsCapabilitiesReason :: !(Maybe Text)
    , _vtrsCapabilities       :: !(Maybe [Capability])
    , _vtrsDescription        :: !(Maybe Text)
    , _vtrsStatus             :: !Int
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | 'ValidateTemplateResponse' smart constructor.
validateTemplateResponse :: Int -> ValidateTemplateResponse
validateTemplateResponse pStatus =
    ValidateTemplateResponse'
    { _vtrsParameters = Nothing
    , _vtrsCapabilitiesReason = Nothing
    , _vtrsCapabilities = Nothing
    , _vtrsDescription = Nothing
    , _vtrsStatus = pStatus
    }

-- | A list of @TemplateParameter@ structures.
vtrsParameters :: Lens' ValidateTemplateResponse [TemplateParameter]
vtrsParameters = lens _vtrsParameters (\ s a -> s{_vtrsParameters = a}) . _Default;

-- | The list of resources that generated the values in the @Capabilities@
-- response element.
vtrsCapabilitiesReason :: Lens' ValidateTemplateResponse (Maybe Text)
vtrsCapabilitiesReason = lens _vtrsCapabilitiesReason (\ s a -> s{_vtrsCapabilitiesReason = a});

-- | The capabilities found within the template. Currently, AWS
-- CloudFormation supports only the CAPABILITY_IAM capability. If your
-- template contains IAM resources, you must specify the CAPABILITY_IAM
-- value for this parameter when you use the CreateStack or UpdateStack
-- actions with your template; otherwise, those actions return an
-- InsufficientCapabilities error.
vtrsCapabilities :: Lens' ValidateTemplateResponse [Capability]
vtrsCapabilities = lens _vtrsCapabilities (\ s a -> s{_vtrsCapabilities = a}) . _Default;

-- | The description found within the template.
vtrsDescription :: Lens' ValidateTemplateResponse (Maybe Text)
vtrsDescription = lens _vtrsDescription (\ s a -> s{_vtrsDescription = a});

-- | FIXME: Undocumented member.
vtrsStatus :: Lens' ValidateTemplateResponse Int
vtrsStatus = lens _vtrsStatus (\ s a -> s{_vtrsStatus = a});
