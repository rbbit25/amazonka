{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Route53.CreateHostedZone
-- Copyright   : (c) 2013-2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)
--
-- This action creates a new hosted zone.
--
-- To create a new hosted zone, send a @POST@ request to the
-- @2013-04-01\/hostedzone@ resource. The request body must include an XML
-- document with a @CreateHostedZoneRequest@ element. The response returns
-- the @CreateHostedZoneResponse@ element that contains metadata about the
-- hosted zone.
--
-- Route 53 automatically creates a default SOA record and four NS records
-- for the zone. The NS records in the hosted zone are the name servers you
-- give your registrar to delegate your domain to. For more information
-- about SOA and NS records, see
-- <http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/SOA-NSrecords.html NS and SOA Records that Route 53 Creates for a Hosted Zone>
-- in the /Amazon Route 53 Developer Guide/.
--
-- When you create a zone, its initial status is @PENDING@. This means that
-- it is not yet available on all DNS servers. The status of the zone
-- changes to @INSYNC@ when the NS and SOA records are available on all
-- Route 53 DNS servers.
--
-- When trying to create a hosted zone using a reusable delegation set, you
-- could specify an optional DelegationSetId, and Route53 would assign
-- those 4 NS records for the zone, instead of alloting a new one.
--
-- <http://docs.aws.amazon.com/Route53/latest/APIReference/API_CreateHostedZone.html>
module Network.AWS.Route53.CreateHostedZone
    (
    -- * Request
      CreateHostedZone
    -- ** Request constructor
    , createHostedZone
    -- ** Request lenses
    , chzrqDelegationSetId
    , chzrqHostedZoneConfig
    , chzrqVPC
    , chzrqName
    , chzrqCallerReference

    -- * Response
    , CreateHostedZoneResponse
    -- ** Response constructor
    , createHostedZoneResponse
    -- ** Response lenses
    , chzrsVPC
    , chzrsStatus
    , chzrsHostedZone
    , chzrsChangeInfo
    , chzrsDelegationSet
    , chzrsLocation
    ) where

import           Network.AWS.Prelude
import           Network.AWS.Request
import           Network.AWS.Response
import           Network.AWS.Route53.Types

-- | A complex type that contains information about the request to create a
-- hosted zone.
--
-- /See:/ 'createHostedZone' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'chzrqDelegationSetId'
--
-- * 'chzrqHostedZoneConfig'
--
-- * 'chzrqVPC'
--
-- * 'chzrqName'
--
-- * 'chzrqCallerReference'
data CreateHostedZone = CreateHostedZone'
    { _chzrqDelegationSetId  :: !(Maybe Text)
    , _chzrqHostedZoneConfig :: !(Maybe HostedZoneConfig)
    , _chzrqVPC              :: !(Maybe VPC)
    , _chzrqName             :: !Text
    , _chzrqCallerReference  :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | 'CreateHostedZone' smart constructor.
createHostedZone :: Text -> Text -> CreateHostedZone
createHostedZone pName pCallerReference =
    CreateHostedZone'
    { _chzrqDelegationSetId = Nothing
    , _chzrqHostedZoneConfig = Nothing
    , _chzrqVPC = Nothing
    , _chzrqName = pName
    , _chzrqCallerReference = pCallerReference
    }

-- | The delegation set id of the reusable delgation set whose NS records you
-- want to assign to the new hosted zone.
chzrqDelegationSetId :: Lens' CreateHostedZone (Maybe Text)
chzrqDelegationSetId = lens _chzrqDelegationSetId (\ s a -> s{_chzrqDelegationSetId = a});

-- | A complex type that contains an optional comment about your hosted zone.
chzrqHostedZoneConfig :: Lens' CreateHostedZone (Maybe HostedZoneConfig)
chzrqHostedZoneConfig = lens _chzrqHostedZoneConfig (\ s a -> s{_chzrqHostedZoneConfig = a});

-- | The VPC that you want your hosted zone to be associated with. By
-- providing this parameter, your newly created hosted cannot be resolved
-- anywhere other than the given VPC.
chzrqVPC :: Lens' CreateHostedZone (Maybe VPC)
chzrqVPC = lens _chzrqVPC (\ s a -> s{_chzrqVPC = a});

-- | The name of the domain. This must be a fully-specified domain, for
-- example, www.example.com. The trailing dot is optional; Route 53 assumes
-- that the domain name is fully qualified. This means that Route 53 treats
-- www.example.com (without a trailing dot) and www.example.com. (with a
-- trailing dot) as identical.
--
-- This is the name you have registered with your DNS registrar. You should
-- ask your registrar to change the authoritative name servers for your
-- domain to the set of @NameServers@ elements returned in @DelegationSet@.
chzrqName :: Lens' CreateHostedZone Text
chzrqName = lens _chzrqName (\ s a -> s{_chzrqName = a});

-- | A unique string that identifies the request and that allows failed
-- @CreateHostedZone@ requests to be retried without the risk of executing
-- the operation twice. You must use a unique @CallerReference@ string
-- every time you create a hosted zone. @CallerReference@ can be any unique
-- string; you might choose to use a string that identifies your project,
-- such as @DNSMigration_01@.
--
-- Valid characters are any Unicode code points that are legal in an XML
-- 1.0 document. The UTF-8 encoding of the value must be less than 128
-- bytes.
chzrqCallerReference :: Lens' CreateHostedZone Text
chzrqCallerReference = lens _chzrqCallerReference (\ s a -> s{_chzrqCallerReference = a});

instance AWSRequest CreateHostedZone where
        type Sv CreateHostedZone = Route53
        type Rs CreateHostedZone = CreateHostedZoneResponse
        request = postXML
        response
          = receiveXML
              (\ s h x ->
                 CreateHostedZoneResponse' <$>
                   (x .@? "VPC") <*> (pure (fromEnum s)) <*>
                     (x .@ "HostedZone")
                     <*> (x .@ "ChangeInfo")
                     <*> (x .@ "DelegationSet")
                     <*> (h .# "Location"))

instance ToElement CreateHostedZone where
        toElement
          = mkElement
              "{https://route53.amazonaws.com/doc/2013-04-01/}CreateHostedZoneRequest"

instance ToHeaders CreateHostedZone where
        toHeaders = const mempty

instance ToPath CreateHostedZone where
        toPath = const "/2013-04-01/hostedzone"

instance ToQuery CreateHostedZone where
        toQuery = const mempty

instance ToXML CreateHostedZone where
        toXML CreateHostedZone'{..}
          = mconcat
              ["DelegationSetId" @= _chzrqDelegationSetId,
               "HostedZoneConfig" @= _chzrqHostedZoneConfig,
               "VPC" @= _chzrqVPC, "Name" @= _chzrqName,
               "CallerReference" @= _chzrqCallerReference]

-- | A complex type containing the response information for the new hosted
-- zone.
--
-- /See:/ 'createHostedZoneResponse' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'chzrsVPC'
--
-- * 'chzrsStatus'
--
-- * 'chzrsHostedZone'
--
-- * 'chzrsChangeInfo'
--
-- * 'chzrsDelegationSet'
--
-- * 'chzrsLocation'
data CreateHostedZoneResponse = CreateHostedZoneResponse'
    { _chzrsVPC           :: !(Maybe VPC)
    , _chzrsStatus        :: !Int
    , _chzrsHostedZone    :: !HostedZone
    , _chzrsChangeInfo    :: !ChangeInfo
    , _chzrsDelegationSet :: !DelegationSet
    , _chzrsLocation      :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | 'CreateHostedZoneResponse' smart constructor.
createHostedZoneResponse :: Int -> HostedZone -> ChangeInfo -> DelegationSet -> Text -> CreateHostedZoneResponse
createHostedZoneResponse pStatus pHostedZone pChangeInfo pDelegationSet pLocation =
    CreateHostedZoneResponse'
    { _chzrsVPC = Nothing
    , _chzrsStatus = pStatus
    , _chzrsHostedZone = pHostedZone
    , _chzrsChangeInfo = pChangeInfo
    , _chzrsDelegationSet = pDelegationSet
    , _chzrsLocation = pLocation
    }

-- | FIXME: Undocumented member.
chzrsVPC :: Lens' CreateHostedZoneResponse (Maybe VPC)
chzrsVPC = lens _chzrsVPC (\ s a -> s{_chzrsVPC = a});

-- | FIXME: Undocumented member.
chzrsStatus :: Lens' CreateHostedZoneResponse Int
chzrsStatus = lens _chzrsStatus (\ s a -> s{_chzrsStatus = a});

-- | A complex type that contains identifying information about the hosted
-- zone.
chzrsHostedZone :: Lens' CreateHostedZoneResponse HostedZone
chzrsHostedZone = lens _chzrsHostedZone (\ s a -> s{_chzrsHostedZone = a});

-- | A complex type that contains information about the request to create a
-- hosted zone. This includes an ID that you use when you call the
-- GetChange action to get the current status of the change request.
chzrsChangeInfo :: Lens' CreateHostedZoneResponse ChangeInfo
chzrsChangeInfo = lens _chzrsChangeInfo (\ s a -> s{_chzrsChangeInfo = a});

-- | A complex type that contains name server information.
chzrsDelegationSet :: Lens' CreateHostedZoneResponse DelegationSet
chzrsDelegationSet = lens _chzrsDelegationSet (\ s a -> s{_chzrsDelegationSet = a});

-- | The unique URL representing the new hosted zone.
chzrsLocation :: Lens' CreateHostedZoneResponse Text
chzrsLocation = lens _chzrsLocation (\ s a -> s{_chzrsLocation = a});
