{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IAM.Types.ServiceSpecificCredential
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IAM.Types.ServiceSpecificCredential where

import Network.AWS.IAM.Types.StatusType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains the details of a service-specific credential.
--
--
--
-- /See:/ 'serviceSpecificCredential' smart constructor.
data ServiceSpecificCredential = ServiceSpecificCredential'
  { _sscCreateDate ::
      !ISO8601,
    _sscServiceName :: !Text,
    _sscServiceUserName :: !Text,
    _sscServicePassword ::
      !(Sensitive Text),
    _sscServiceSpecificCredentialId ::
      !Text,
    _sscUserName :: !Text,
    _sscStatus :: !StatusType
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ServiceSpecificCredential' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sscCreateDate' - The date and time, in <http://www.iso.org/iso/iso8601 ISO 8601 date-time format> , when the service-specific credential were created.
--
-- * 'sscServiceName' - The name of the service associated with the service-specific credential.
--
-- * 'sscServiceUserName' - The generated user name for the service-specific credential. This value is generated by combining the IAM user's name combined with the ID number of the AWS account, as in @jane-at-123456789012@ , for example. This value cannot be configured by the user.
--
-- * 'sscServicePassword' - The generated password for the service-specific credential.
--
-- * 'sscServiceSpecificCredentialId' - The unique identifier for the service-specific credential.
--
-- * 'sscUserName' - The name of the IAM user associated with the service-specific credential.
--
-- * 'sscStatus' - The status of the service-specific credential. @Active@ means that the key is valid for API calls, while @Inactive@ means it is not.
serviceSpecificCredential ::
  -- | 'sscCreateDate'
  UTCTime ->
  -- | 'sscServiceName'
  Text ->
  -- | 'sscServiceUserName'
  Text ->
  -- | 'sscServicePassword'
  Text ->
  -- | 'sscServiceSpecificCredentialId'
  Text ->
  -- | 'sscUserName'
  Text ->
  -- | 'sscStatus'
  StatusType ->
  ServiceSpecificCredential
serviceSpecificCredential
  pCreateDate_
  pServiceName_
  pServiceUserName_
  pServicePassword_
  pServiceSpecificCredentialId_
  pUserName_
  pStatus_ =
    ServiceSpecificCredential'
      { _sscCreateDate = _Time # pCreateDate_,
        _sscServiceName = pServiceName_,
        _sscServiceUserName = pServiceUserName_,
        _sscServicePassword = _Sensitive # pServicePassword_,
        _sscServiceSpecificCredentialId = pServiceSpecificCredentialId_,
        _sscUserName = pUserName_,
        _sscStatus = pStatus_
      }

-- | The date and time, in <http://www.iso.org/iso/iso8601 ISO 8601 date-time format> , when the service-specific credential were created.
sscCreateDate :: Lens' ServiceSpecificCredential UTCTime
sscCreateDate = lens _sscCreateDate (\s a -> s {_sscCreateDate = a}) . _Time

-- | The name of the service associated with the service-specific credential.
sscServiceName :: Lens' ServiceSpecificCredential Text
sscServiceName = lens _sscServiceName (\s a -> s {_sscServiceName = a})

-- | The generated user name for the service-specific credential. This value is generated by combining the IAM user's name combined with the ID number of the AWS account, as in @jane-at-123456789012@ , for example. This value cannot be configured by the user.
sscServiceUserName :: Lens' ServiceSpecificCredential Text
sscServiceUserName = lens _sscServiceUserName (\s a -> s {_sscServiceUserName = a})

-- | The generated password for the service-specific credential.
sscServicePassword :: Lens' ServiceSpecificCredential Text
sscServicePassword = lens _sscServicePassword (\s a -> s {_sscServicePassword = a}) . _Sensitive

-- | The unique identifier for the service-specific credential.
sscServiceSpecificCredentialId :: Lens' ServiceSpecificCredential Text
sscServiceSpecificCredentialId = lens _sscServiceSpecificCredentialId (\s a -> s {_sscServiceSpecificCredentialId = a})

-- | The name of the IAM user associated with the service-specific credential.
sscUserName :: Lens' ServiceSpecificCredential Text
sscUserName = lens _sscUserName (\s a -> s {_sscUserName = a})

-- | The status of the service-specific credential. @Active@ means that the key is valid for API calls, while @Inactive@ means it is not.
sscStatus :: Lens' ServiceSpecificCredential StatusType
sscStatus = lens _sscStatus (\s a -> s {_sscStatus = a})

instance FromXML ServiceSpecificCredential where
  parseXML x =
    ServiceSpecificCredential'
      <$> (x .@ "CreateDate")
      <*> (x .@ "ServiceName")
      <*> (x .@ "ServiceUserName")
      <*> (x .@ "ServicePassword")
      <*> (x .@ "ServiceSpecificCredentialId")
      <*> (x .@ "UserName")
      <*> (x .@ "Status")

instance Hashable ServiceSpecificCredential

instance NFData ServiceSpecificCredential
