{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.ELB
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.AWS.Gen.ELB where

import Data.Proxy
import Network.AWS.ELB
import Test.AWS.ELB.Internal
import Test.AWS.Fixture
import Test.AWS.Prelude
import Test.Tasty

-- Auto-generated: the actual test selection needs to be manually placed into
-- the top-level so that real test data can be incrementally added.
--
-- This commented snippet is what the entire set should look like:

-- fixtures :: TestTree
-- fixtures =
--     [ testGroup "request"
--         [ requestDescribeLoadBalancers $
--             mkDescribeLoadBalancers
--
--         , requestDescribeTags $
--             mkDescribeTags
--
--         , requestDescribeLoadBalancerPolicyTypes $
--             mkDescribeLoadBalancerPolicyTypes
--
--         , requestApplySecurityGroupsToLoadBalancer $
--             mkApplySecurityGroupsToLoadBalancer
--
--         , requestRemoveTags $
--             mkRemoveTags
--
--         , requestCreateLBCookieStickinessPolicy $
--             mkCreateLBCookieStickinessPolicy
--
--         , requestDeleteLoadBalancer $
--             mkDeleteLoadBalancer
--
--         , requestDeregisterInstancesFromLoadBalancer $
--             mkDeregisterInstancesFromLoadBalancer
--
--         , requestCreateLoadBalancerPolicy $
--             mkCreateLoadBalancerPolicy
--
--         , requestDescribeLoadBalancerPolicies $
--             mkDescribeLoadBalancerPolicies
--
--         , requestDisableAvailabilityZonesForLoadBalancer $
--             mkDisableAvailabilityZonesForLoadBalancer
--
--         , requestEnableAvailabilityZonesForLoadBalancer $
--             mkEnableAvailabilityZonesForLoadBalancer
--
--         , requestSetLoadBalancerPoliciesForBackendServer $
--             mkSetLoadBalancerPoliciesForBackendServer
--
--         , requestSetLoadBalancerListenerSSLCertificate $
--             mkSetLoadBalancerListenerSSLCertificate
--
--         , requestDescribeAccountLimits $
--             mkDescribeAccountLimits
--
--         , requestAttachLoadBalancerToSubnets $
--             mkAttachLoadBalancerToSubnets
--
--         , requestConfigureHealthCheck $
--             mkConfigureHealthCheck
--
--         , requestModifyLoadBalancerAttributes $
--             mkModifyLoadBalancerAttributes
--
--         , requestCreateAppCookieStickinessPolicy $
--             mkCreateAppCookieStickinessPolicy
--
--         , requestDescribeInstanceHealth $
--             mkDescribeInstanceHealth
--
--         , requestAddTags $
--             mkAddTags
--
--         , requestDescribeLoadBalancerAttributes $
--             mkDescribeLoadBalancerAttributes
--
--         , requestCreateLoadBalancerListeners $
--             mkCreateLoadBalancerListeners
--
--         , requestDeleteLoadBalancerPolicy $
--             mkDeleteLoadBalancerPolicy
--
--         , requestDetachLoadBalancerFromSubnets $
--             mkDetachLoadBalancerFromSubnets
--
--         , requestRegisterInstancesWithLoadBalancer $
--             mkRegisterInstancesWithLoadBalancer
--
--         , requestCreateLoadBalancer $
--             mkCreateLoadBalancer
--
--         , requestDeleteLoadBalancerListeners $
--             mkDeleteLoadBalancerListeners
--
--         , requestSetLoadBalancerPoliciesOfListener $
--             mkSetLoadBalancerPoliciesOfListener
--
--           ]

--     , testGroup "response"
--         [ responseDescribeLoadBalancers $
--             mkDescribeLoadBalancersResponse
--
--         , responseDescribeTags $
--             mkDescribeTagsResponse
--
--         , responseDescribeLoadBalancerPolicyTypes $
--             mkDescribeLoadBalancerPolicyTypesResponse
--
--         , responseApplySecurityGroupsToLoadBalancer $
--             mkApplySecurityGroupsToLoadBalancerResponse
--
--         , responseRemoveTags $
--             mkRemoveTagsResponse
--
--         , responseCreateLBCookieStickinessPolicy $
--             mkCreateLBCookieStickinessPolicyResponse
--
--         , responseDeleteLoadBalancer $
--             mkDeleteLoadBalancerResponse
--
--         , responseDeregisterInstancesFromLoadBalancer $
--             mkDeregisterInstancesFromLoadBalancerResponse
--
--         , responseCreateLoadBalancerPolicy $
--             mkCreateLoadBalancerPolicyResponse
--
--         , responseDescribeLoadBalancerPolicies $
--             mkDescribeLoadBalancerPoliciesResponse
--
--         , responseDisableAvailabilityZonesForLoadBalancer $
--             mkDisableAvailabilityZonesForLoadBalancerResponse
--
--         , responseEnableAvailabilityZonesForLoadBalancer $
--             mkEnableAvailabilityZonesForLoadBalancerResponse
--
--         , responseSetLoadBalancerPoliciesForBackendServer $
--             mkSetLoadBalancerPoliciesForBackendServerResponse
--
--         , responseSetLoadBalancerListenerSSLCertificate $
--             mkSetLoadBalancerListenerSSLCertificateResponse
--
--         , responseDescribeAccountLimits $
--             mkDescribeAccountLimitsResponse
--
--         , responseAttachLoadBalancerToSubnets $
--             mkAttachLoadBalancerToSubnetsResponse
--
--         , responseConfigureHealthCheck $
--             mkConfigureHealthCheckResponse
--
--         , responseModifyLoadBalancerAttributes $
--             mkModifyLoadBalancerAttributesResponse
--
--         , responseCreateAppCookieStickinessPolicy $
--             mkCreateAppCookieStickinessPolicyResponse
--
--         , responseDescribeInstanceHealth $
--             mkDescribeInstanceHealthResponse
--
--         , responseAddTags $
--             mkAddTagsResponse
--
--         , responseDescribeLoadBalancerAttributes $
--             mkDescribeLoadBalancerAttributesResponse
--
--         , responseCreateLoadBalancerListeners $
--             mkCreateLoadBalancerListenersResponse
--
--         , responseDeleteLoadBalancerPolicy $
--             mkDeleteLoadBalancerPolicyResponse
--
--         , responseDetachLoadBalancerFromSubnets $
--             mkDetachLoadBalancerFromSubnetsResponse
--
--         , responseRegisterInstancesWithLoadBalancer $
--             mkRegisterInstancesWithLoadBalancerResponse
--
--         , responseCreateLoadBalancer $
--             mkCreateLoadBalancerResponse
--
--         , responseDeleteLoadBalancerListeners $
--             mkDeleteLoadBalancerListenersResponse
--
--         , responseSetLoadBalancerPoliciesOfListener $
--             mkSetLoadBalancerPoliciesOfListenerResponse
--
--           ]
--     ]

-- Requests

requestDescribeLoadBalancers :: DescribeLoadBalancers -> TestTree
requestDescribeLoadBalancers =
  req
    "DescribeLoadBalancers"
    "fixture/DescribeLoadBalancers.yaml"

requestDescribeTags :: DescribeTags -> TestTree
requestDescribeTags =
  req
    "DescribeTags"
    "fixture/DescribeTags.yaml"

requestDescribeLoadBalancerPolicyTypes :: DescribeLoadBalancerPolicyTypes -> TestTree
requestDescribeLoadBalancerPolicyTypes =
  req
    "DescribeLoadBalancerPolicyTypes"
    "fixture/DescribeLoadBalancerPolicyTypes.yaml"

requestApplySecurityGroupsToLoadBalancer :: ApplySecurityGroupsToLoadBalancer -> TestTree
requestApplySecurityGroupsToLoadBalancer =
  req
    "ApplySecurityGroupsToLoadBalancer"
    "fixture/ApplySecurityGroupsToLoadBalancer.yaml"

requestRemoveTags :: RemoveTags -> TestTree
requestRemoveTags =
  req
    "RemoveTags"
    "fixture/RemoveTags.yaml"

requestCreateLBCookieStickinessPolicy :: CreateLBCookieStickinessPolicy -> TestTree
requestCreateLBCookieStickinessPolicy =
  req
    "CreateLBCookieStickinessPolicy"
    "fixture/CreateLBCookieStickinessPolicy.yaml"

requestDeleteLoadBalancer :: DeleteLoadBalancer -> TestTree
requestDeleteLoadBalancer =
  req
    "DeleteLoadBalancer"
    "fixture/DeleteLoadBalancer.yaml"

requestDeregisterInstancesFromLoadBalancer :: DeregisterInstancesFromLoadBalancer -> TestTree
requestDeregisterInstancesFromLoadBalancer =
  req
    "DeregisterInstancesFromLoadBalancer"
    "fixture/DeregisterInstancesFromLoadBalancer.yaml"

requestCreateLoadBalancerPolicy :: CreateLoadBalancerPolicy -> TestTree
requestCreateLoadBalancerPolicy =
  req
    "CreateLoadBalancerPolicy"
    "fixture/CreateLoadBalancerPolicy.yaml"

requestDescribeLoadBalancerPolicies :: DescribeLoadBalancerPolicies -> TestTree
requestDescribeLoadBalancerPolicies =
  req
    "DescribeLoadBalancerPolicies"
    "fixture/DescribeLoadBalancerPolicies.yaml"

requestDisableAvailabilityZonesForLoadBalancer :: DisableAvailabilityZonesForLoadBalancer -> TestTree
requestDisableAvailabilityZonesForLoadBalancer =
  req
    "DisableAvailabilityZonesForLoadBalancer"
    "fixture/DisableAvailabilityZonesForLoadBalancer.yaml"

requestEnableAvailabilityZonesForLoadBalancer :: EnableAvailabilityZonesForLoadBalancer -> TestTree
requestEnableAvailabilityZonesForLoadBalancer =
  req
    "EnableAvailabilityZonesForLoadBalancer"
    "fixture/EnableAvailabilityZonesForLoadBalancer.yaml"

requestSetLoadBalancerPoliciesForBackendServer :: SetLoadBalancerPoliciesForBackendServer -> TestTree
requestSetLoadBalancerPoliciesForBackendServer =
  req
    "SetLoadBalancerPoliciesForBackendServer"
    "fixture/SetLoadBalancerPoliciesForBackendServer.yaml"

requestSetLoadBalancerListenerSSLCertificate :: SetLoadBalancerListenerSSLCertificate -> TestTree
requestSetLoadBalancerListenerSSLCertificate =
  req
    "SetLoadBalancerListenerSSLCertificate"
    "fixture/SetLoadBalancerListenerSSLCertificate.yaml"

requestDescribeAccountLimits :: DescribeAccountLimits -> TestTree
requestDescribeAccountLimits =
  req
    "DescribeAccountLimits"
    "fixture/DescribeAccountLimits.yaml"

requestAttachLoadBalancerToSubnets :: AttachLoadBalancerToSubnets -> TestTree
requestAttachLoadBalancerToSubnets =
  req
    "AttachLoadBalancerToSubnets"
    "fixture/AttachLoadBalancerToSubnets.yaml"

requestConfigureHealthCheck :: ConfigureHealthCheck -> TestTree
requestConfigureHealthCheck =
  req
    "ConfigureHealthCheck"
    "fixture/ConfigureHealthCheck.yaml"

requestModifyLoadBalancerAttributes :: ModifyLoadBalancerAttributes -> TestTree
requestModifyLoadBalancerAttributes =
  req
    "ModifyLoadBalancerAttributes"
    "fixture/ModifyLoadBalancerAttributes.yaml"

requestCreateAppCookieStickinessPolicy :: CreateAppCookieStickinessPolicy -> TestTree
requestCreateAppCookieStickinessPolicy =
  req
    "CreateAppCookieStickinessPolicy"
    "fixture/CreateAppCookieStickinessPolicy.yaml"

requestDescribeInstanceHealth :: DescribeInstanceHealth -> TestTree
requestDescribeInstanceHealth =
  req
    "DescribeInstanceHealth"
    "fixture/DescribeInstanceHealth.yaml"

requestAddTags :: AddTags -> TestTree
requestAddTags =
  req
    "AddTags"
    "fixture/AddTags.yaml"

requestDescribeLoadBalancerAttributes :: DescribeLoadBalancerAttributes -> TestTree
requestDescribeLoadBalancerAttributes =
  req
    "DescribeLoadBalancerAttributes"
    "fixture/DescribeLoadBalancerAttributes.yaml"

requestCreateLoadBalancerListeners :: CreateLoadBalancerListeners -> TestTree
requestCreateLoadBalancerListeners =
  req
    "CreateLoadBalancerListeners"
    "fixture/CreateLoadBalancerListeners.yaml"

requestDeleteLoadBalancerPolicy :: DeleteLoadBalancerPolicy -> TestTree
requestDeleteLoadBalancerPolicy =
  req
    "DeleteLoadBalancerPolicy"
    "fixture/DeleteLoadBalancerPolicy.yaml"

requestDetachLoadBalancerFromSubnets :: DetachLoadBalancerFromSubnets -> TestTree
requestDetachLoadBalancerFromSubnets =
  req
    "DetachLoadBalancerFromSubnets"
    "fixture/DetachLoadBalancerFromSubnets.yaml"

requestRegisterInstancesWithLoadBalancer :: RegisterInstancesWithLoadBalancer -> TestTree
requestRegisterInstancesWithLoadBalancer =
  req
    "RegisterInstancesWithLoadBalancer"
    "fixture/RegisterInstancesWithLoadBalancer.yaml"

requestCreateLoadBalancer :: CreateLoadBalancer -> TestTree
requestCreateLoadBalancer =
  req
    "CreateLoadBalancer"
    "fixture/CreateLoadBalancer.yaml"

requestDeleteLoadBalancerListeners :: DeleteLoadBalancerListeners -> TestTree
requestDeleteLoadBalancerListeners =
  req
    "DeleteLoadBalancerListeners"
    "fixture/DeleteLoadBalancerListeners.yaml"

requestSetLoadBalancerPoliciesOfListener :: SetLoadBalancerPoliciesOfListener -> TestTree
requestSetLoadBalancerPoliciesOfListener =
  req
    "SetLoadBalancerPoliciesOfListener"
    "fixture/SetLoadBalancerPoliciesOfListener.yaml"

-- Responses

responseDescribeLoadBalancers :: DescribeLoadBalancersResponse -> TestTree
responseDescribeLoadBalancers =
  res
    "DescribeLoadBalancersResponse"
    "fixture/DescribeLoadBalancersResponse.proto"
    elbService
    (Proxy :: Proxy DescribeLoadBalancers)

responseDescribeTags :: DescribeTagsResponse -> TestTree
responseDescribeTags =
  res
    "DescribeTagsResponse"
    "fixture/DescribeTagsResponse.proto"
    elbService
    (Proxy :: Proxy DescribeTags)

responseDescribeLoadBalancerPolicyTypes :: DescribeLoadBalancerPolicyTypesResponse -> TestTree
responseDescribeLoadBalancerPolicyTypes =
  res
    "DescribeLoadBalancerPolicyTypesResponse"
    "fixture/DescribeLoadBalancerPolicyTypesResponse.proto"
    elbService
    (Proxy :: Proxy DescribeLoadBalancerPolicyTypes)

responseApplySecurityGroupsToLoadBalancer :: ApplySecurityGroupsToLoadBalancerResponse -> TestTree
responseApplySecurityGroupsToLoadBalancer =
  res
    "ApplySecurityGroupsToLoadBalancerResponse"
    "fixture/ApplySecurityGroupsToLoadBalancerResponse.proto"
    elbService
    (Proxy :: Proxy ApplySecurityGroupsToLoadBalancer)

responseRemoveTags :: RemoveTagsResponse -> TestTree
responseRemoveTags =
  res
    "RemoveTagsResponse"
    "fixture/RemoveTagsResponse.proto"
    elbService
    (Proxy :: Proxy RemoveTags)

responseCreateLBCookieStickinessPolicy :: CreateLBCookieStickinessPolicyResponse -> TestTree
responseCreateLBCookieStickinessPolicy =
  res
    "CreateLBCookieStickinessPolicyResponse"
    "fixture/CreateLBCookieStickinessPolicyResponse.proto"
    elbService
    (Proxy :: Proxy CreateLBCookieStickinessPolicy)

responseDeleteLoadBalancer :: DeleteLoadBalancerResponse -> TestTree
responseDeleteLoadBalancer =
  res
    "DeleteLoadBalancerResponse"
    "fixture/DeleteLoadBalancerResponse.proto"
    elbService
    (Proxy :: Proxy DeleteLoadBalancer)

responseDeregisterInstancesFromLoadBalancer :: DeregisterInstancesFromLoadBalancerResponse -> TestTree
responseDeregisterInstancesFromLoadBalancer =
  res
    "DeregisterInstancesFromLoadBalancerResponse"
    "fixture/DeregisterInstancesFromLoadBalancerResponse.proto"
    elbService
    (Proxy :: Proxy DeregisterInstancesFromLoadBalancer)

responseCreateLoadBalancerPolicy :: CreateLoadBalancerPolicyResponse -> TestTree
responseCreateLoadBalancerPolicy =
  res
    "CreateLoadBalancerPolicyResponse"
    "fixture/CreateLoadBalancerPolicyResponse.proto"
    elbService
    (Proxy :: Proxy CreateLoadBalancerPolicy)

responseDescribeLoadBalancerPolicies :: DescribeLoadBalancerPoliciesResponse -> TestTree
responseDescribeLoadBalancerPolicies =
  res
    "DescribeLoadBalancerPoliciesResponse"
    "fixture/DescribeLoadBalancerPoliciesResponse.proto"
    elbService
    (Proxy :: Proxy DescribeLoadBalancerPolicies)

responseDisableAvailabilityZonesForLoadBalancer :: DisableAvailabilityZonesForLoadBalancerResponse -> TestTree
responseDisableAvailabilityZonesForLoadBalancer =
  res
    "DisableAvailabilityZonesForLoadBalancerResponse"
    "fixture/DisableAvailabilityZonesForLoadBalancerResponse.proto"
    elbService
    (Proxy :: Proxy DisableAvailabilityZonesForLoadBalancer)

responseEnableAvailabilityZonesForLoadBalancer :: EnableAvailabilityZonesForLoadBalancerResponse -> TestTree
responseEnableAvailabilityZonesForLoadBalancer =
  res
    "EnableAvailabilityZonesForLoadBalancerResponse"
    "fixture/EnableAvailabilityZonesForLoadBalancerResponse.proto"
    elbService
    (Proxy :: Proxy EnableAvailabilityZonesForLoadBalancer)

responseSetLoadBalancerPoliciesForBackendServer :: SetLoadBalancerPoliciesForBackendServerResponse -> TestTree
responseSetLoadBalancerPoliciesForBackendServer =
  res
    "SetLoadBalancerPoliciesForBackendServerResponse"
    "fixture/SetLoadBalancerPoliciesForBackendServerResponse.proto"
    elbService
    (Proxy :: Proxy SetLoadBalancerPoliciesForBackendServer)

responseSetLoadBalancerListenerSSLCertificate :: SetLoadBalancerListenerSSLCertificateResponse -> TestTree
responseSetLoadBalancerListenerSSLCertificate =
  res
    "SetLoadBalancerListenerSSLCertificateResponse"
    "fixture/SetLoadBalancerListenerSSLCertificateResponse.proto"
    elbService
    (Proxy :: Proxy SetLoadBalancerListenerSSLCertificate)

responseDescribeAccountLimits :: DescribeAccountLimitsResponse -> TestTree
responseDescribeAccountLimits =
  res
    "DescribeAccountLimitsResponse"
    "fixture/DescribeAccountLimitsResponse.proto"
    elbService
    (Proxy :: Proxy DescribeAccountLimits)

responseAttachLoadBalancerToSubnets :: AttachLoadBalancerToSubnetsResponse -> TestTree
responseAttachLoadBalancerToSubnets =
  res
    "AttachLoadBalancerToSubnetsResponse"
    "fixture/AttachLoadBalancerToSubnetsResponse.proto"
    elbService
    (Proxy :: Proxy AttachLoadBalancerToSubnets)

responseConfigureHealthCheck :: ConfigureHealthCheckResponse -> TestTree
responseConfigureHealthCheck =
  res
    "ConfigureHealthCheckResponse"
    "fixture/ConfigureHealthCheckResponse.proto"
    elbService
    (Proxy :: Proxy ConfigureHealthCheck)

responseModifyLoadBalancerAttributes :: ModifyLoadBalancerAttributesResponse -> TestTree
responseModifyLoadBalancerAttributes =
  res
    "ModifyLoadBalancerAttributesResponse"
    "fixture/ModifyLoadBalancerAttributesResponse.proto"
    elbService
    (Proxy :: Proxy ModifyLoadBalancerAttributes)

responseCreateAppCookieStickinessPolicy :: CreateAppCookieStickinessPolicyResponse -> TestTree
responseCreateAppCookieStickinessPolicy =
  res
    "CreateAppCookieStickinessPolicyResponse"
    "fixture/CreateAppCookieStickinessPolicyResponse.proto"
    elbService
    (Proxy :: Proxy CreateAppCookieStickinessPolicy)

responseDescribeInstanceHealth :: DescribeInstanceHealthResponse -> TestTree
responseDescribeInstanceHealth =
  res
    "DescribeInstanceHealthResponse"
    "fixture/DescribeInstanceHealthResponse.proto"
    elbService
    (Proxy :: Proxy DescribeInstanceHealth)

responseAddTags :: AddTagsResponse -> TestTree
responseAddTags =
  res
    "AddTagsResponse"
    "fixture/AddTagsResponse.proto"
    elbService
    (Proxy :: Proxy AddTags)

responseDescribeLoadBalancerAttributes :: DescribeLoadBalancerAttributesResponse -> TestTree
responseDescribeLoadBalancerAttributes =
  res
    "DescribeLoadBalancerAttributesResponse"
    "fixture/DescribeLoadBalancerAttributesResponse.proto"
    elbService
    (Proxy :: Proxy DescribeLoadBalancerAttributes)

responseCreateLoadBalancerListeners :: CreateLoadBalancerListenersResponse -> TestTree
responseCreateLoadBalancerListeners =
  res
    "CreateLoadBalancerListenersResponse"
    "fixture/CreateLoadBalancerListenersResponse.proto"
    elbService
    (Proxy :: Proxy CreateLoadBalancerListeners)

responseDeleteLoadBalancerPolicy :: DeleteLoadBalancerPolicyResponse -> TestTree
responseDeleteLoadBalancerPolicy =
  res
    "DeleteLoadBalancerPolicyResponse"
    "fixture/DeleteLoadBalancerPolicyResponse.proto"
    elbService
    (Proxy :: Proxy DeleteLoadBalancerPolicy)

responseDetachLoadBalancerFromSubnets :: DetachLoadBalancerFromSubnetsResponse -> TestTree
responseDetachLoadBalancerFromSubnets =
  res
    "DetachLoadBalancerFromSubnetsResponse"
    "fixture/DetachLoadBalancerFromSubnetsResponse.proto"
    elbService
    (Proxy :: Proxy DetachLoadBalancerFromSubnets)

responseRegisterInstancesWithLoadBalancer :: RegisterInstancesWithLoadBalancerResponse -> TestTree
responseRegisterInstancesWithLoadBalancer =
  res
    "RegisterInstancesWithLoadBalancerResponse"
    "fixture/RegisterInstancesWithLoadBalancerResponse.proto"
    elbService
    (Proxy :: Proxy RegisterInstancesWithLoadBalancer)

responseCreateLoadBalancer :: CreateLoadBalancerResponse -> TestTree
responseCreateLoadBalancer =
  res
    "CreateLoadBalancerResponse"
    "fixture/CreateLoadBalancerResponse.proto"
    elbService
    (Proxy :: Proxy CreateLoadBalancer)

responseDeleteLoadBalancerListeners :: DeleteLoadBalancerListenersResponse -> TestTree
responseDeleteLoadBalancerListeners =
  res
    "DeleteLoadBalancerListenersResponse"
    "fixture/DeleteLoadBalancerListenersResponse.proto"
    elbService
    (Proxy :: Proxy DeleteLoadBalancerListeners)

responseSetLoadBalancerPoliciesOfListener :: SetLoadBalancerPoliciesOfListenerResponse -> TestTree
responseSetLoadBalancerPoliciesOfListener =
  res
    "SetLoadBalancerPoliciesOfListenerResponse"
    "fixture/SetLoadBalancerPoliciesOfListenerResponse.proto"
    elbService
    (Proxy :: Proxy SetLoadBalancerPoliciesOfListener)