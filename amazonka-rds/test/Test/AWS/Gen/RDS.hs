{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-orphans        #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.RDS
-- Copyright   : (c) 2013-2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Test.AWS.Gen.RDS where

import Data.Proxy
import Test.AWS.Fixture
import Test.AWS.Prelude
import Test.Tasty
import Network.AWS.RDS
import Test.AWS.RDS.Internal

-- Auto-generated: the actual test selection needs to be manually placed into
-- the top-level so that real test data can be incrementally added.
--
-- This commented snippet is what the entire set should look like:

-- fixtures :: TestTree
-- fixtures =
--     [ testGroup "request"
--         [ testDescribeDBEngineVersions $
--             describeDBEngineVersions
--
--         , testDescribeDBClusterParameterGroups $
--             describeDBClusterParameterGroups
--
--         , testPromoteReadReplica $
--             promoteReadReplica
--
--         , testModifyEventSubscription $
--             modifyEventSubscription
--
--         , testCopyDBSnapshot $
--             copyDBSnapshot
--
--         , testAddSourceIdentifierToSubscription $
--             addSourceIdentifierToSubscription
--
--         , testModifyDBInstance $
--             modifyDBInstance
--
--         , testResetDBClusterParameterGroup $
--             resetDBClusterParameterGroup
--
--         , testDescribeEvents $
--             describeEvents
--
--         , testDescribeEngineDefaultParameters $
--             describeEngineDefaultParameters
--
--         , testDescribeDBClusters $
--             describeDBClusters
--
--         , testModifyDBSubnetGroup $
--             modifyDBSubnetGroup
--
--         , testDescribeDBLogFiles $
--             describeDBLogFiles
--
--         , testListTagsForResource $
--             listTagsForResource
--
--         , testDescribeOptionGroups $
--             describeOptionGroups
--
--         , testDeleteDBCluster $
--             deleteDBCluster
--
--         , testRemoveSourceIdentifierFromSubscription $
--             removeSourceIdentifierFromSubscription
--
--         , testCopyDBParameterGroup $
--             copyDBParameterGroup
--
--         , testDescribeReservedDBInstances $
--             describeReservedDBInstances
--
--         , testDeleteOptionGroup $
--             deleteOptionGroup
--
--         , testDescribeEngineDefaultClusterParameters $
--             describeEngineDefaultClusterParameters
--
--         , testCreateEventSubscription $
--             createEventSubscription
--
--         , testRemoveTagsFromResource $
--             removeTagsFromResource
--
--         , testCreateDBInstance $
--             createDBInstance
--
--         , testRestoreDBInstanceFromDBSnapshot $
--             restoreDBInstanceFromDBSnapshot
--
--         , testAuthorizeDBSecurityGroupIngress $
--             authorizeDBSecurityGroupIngress
--
--         , testDeleteDBClusterParameterGroup $
--             deleteDBClusterParameterGroup
--
--         , testPurchaseReservedDBInstancesOffering $
--             purchaseReservedDBInstancesOffering
--
--         , testDescribeCertificates $
--             describeCertificates
--
--         , testRestoreDBClusterFromSnapshot $
--             restoreDBClusterFromSnapshot
--
--         , testCreateDBSnapshot $
--             createDBSnapshot
--
--         , testDeleteEventSubscription $
--             deleteEventSubscription
--
--         , testDescribeDBParameterGroups $
--             describeDBParameterGroups
--
--         , testDescribeOrderableDBInstanceOptions $
--             describeOrderableDBInstanceOptions
--
--         , testCreateDBClusterParameterGroup $
--             createDBClusterParameterGroup
--
--         , testDescribeEventSubscriptions $
--             describeEventSubscriptions
--
--         , testAddTagsToResource $
--             addTagsToResource
--
--         , testDescribeOptionGroupOptions $
--             describeOptionGroupOptions
--
--         , testDescribeDBParameters $
--             describeDBParameters
--
--         , testDeleteDBClusterSnapshot $
--             deleteDBClusterSnapshot
--
--         , testDescribeDBSnapshots $
--             describeDBSnapshots
--
--         , testDescribeDBSubnetGroups $
--             describeDBSubnetGroups
--
--         , testCreateDBParameterGroup $
--             createDBParameterGroup
--
--         , testCreateDBClusterSnapshot $
--             createDBClusterSnapshot
--
--         , testModifyOptionGroup $
--             modifyOptionGroup
--
--         , testModifyDBCluster $
--             modifyDBCluster
--
--         , testDescribeEventCategories $
--             describeEventCategories
--
--         , testModifyDBClusterParameterGroup $
--             modifyDBClusterParameterGroup
--
--         , testDescribePendingMaintenanceActions $
--             describePendingMaintenanceActions
--
--         , testRestoreDBInstanceToPointInTime $
--             restoreDBInstanceToPointInTime
--
--         , testResetDBParameterGroup $
--             resetDBParameterGroup
--
--         , testCopyDBClusterSnapshot $
--             copyDBClusterSnapshot
--
--         , testModifyDBParameterGroup $
--             modifyDBParameterGroup
--
--         , testFailoverDBCluster $
--             failoverDBCluster
--
--         , testCreateDBCluster $
--             createDBCluster
--
--         , testCreateOptionGroup $
--             createOptionGroup
--
--         , testApplyPendingMaintenanceAction $
--             applyPendingMaintenanceAction
--
--         , testRevokeDBSecurityGroupIngress $
--             revokeDBSecurityGroupIngress
--
--         , testDeleteDBSnapshot $
--             deleteDBSnapshot
--
--         , testDescribeDBClusterParameters $
--             describeDBClusterParameters
--
--         , testCreateDBSecurityGroup $
--             createDBSecurityGroup
--
--         , testDeleteDBSubnetGroup $
--             deleteDBSubnetGroup
--
--         , testDescribeAccountAttributes $
--             describeAccountAttributes
--
--         , testDeleteDBSecurityGroup $
--             deleteDBSecurityGroup
--
--         , testRebootDBInstance $
--             rebootDBInstance
--
--         , testDescribeDBClusterSnapshots $
--             describeDBClusterSnapshots
--
--         , testCreateDBSubnetGroup $
--             createDBSubnetGroup
--
--         , testDescribeReservedDBInstancesOfferings $
--             describeReservedDBInstancesOfferings
--
--         , testDeleteDBInstance $
--             deleteDBInstance
--
--         , testDescribeDBInstances $
--             describeDBInstances
--
--         , testCopyOptionGroup $
--             copyOptionGroup
--
--         , testDownloadDBLogFilePortion $
--             downloadDBLogFilePortion
--
--         , testCreateDBInstanceReadReplica $
--             createDBInstanceReadReplica
--
--         , testRestoreDBClusterToPointInTime $
--             restoreDBClusterToPointInTime
--
--         , testDeleteDBParameterGroup $
--             deleteDBParameterGroup
--
--         , testDescribeDBSecurityGroups $
--             describeDBSecurityGroups
--
--           ]

--     , testGroup "response"
--         [ testDescribeDBEngineVersionsResponse $
--             describeDBEngineVersionsResponse
--
--         , testDescribeDBClusterParameterGroupsResponse $
--             describeDBClusterParameterGroupsResponse
--
--         , testPromoteReadReplicaResponse $
--             promoteReadReplicaResponse
--
--         , testModifyEventSubscriptionResponse $
--             modifyEventSubscriptionResponse
--
--         , testCopyDBSnapshotResponse $
--             copyDBSnapshotResponse
--
--         , testAddSourceIdentifierToSubscriptionResponse $
--             addSourceIdentifierToSubscriptionResponse
--
--         , testModifyDBInstanceResponse $
--             modifyDBInstanceResponse
--
--         , testResetDBClusterParameterGroupResponse $
--             dbClusterParameterGroupNameMessage
--
--         , testDescribeEventsResponse $
--             describeEventsResponse
--
--         , testDescribeEngineDefaultParametersResponse $
--             describeEngineDefaultParametersResponse
--
--         , testDescribeDBClustersResponse $
--             describeDBClustersResponse
--
--         , testModifyDBSubnetGroupResponse $
--             modifyDBSubnetGroupResponse
--
--         , testDescribeDBLogFilesResponse $
--             describeDBLogFilesResponse
--
--         , testListTagsForResourceResponse $
--             listTagsForResourceResponse
--
--         , testDescribeOptionGroupsResponse $
--             describeOptionGroupsResponse
--
--         , testDeleteDBClusterResponse $
--             deleteDBClusterResponse
--
--         , testRemoveSourceIdentifierFromSubscriptionResponse $
--             removeSourceIdentifierFromSubscriptionResponse
--
--         , testCopyDBParameterGroupResponse $
--             copyDBParameterGroupResponse
--
--         , testDescribeReservedDBInstancesResponse $
--             describeReservedDBInstancesResponse
--
--         , testDeleteOptionGroupResponse $
--             deleteOptionGroupResponse
--
--         , testDescribeEngineDefaultClusterParametersResponse $
--             describeEngineDefaultClusterParametersResponse
--
--         , testCreateEventSubscriptionResponse $
--             createEventSubscriptionResponse
--
--         , testRemoveTagsFromResourceResponse $
--             removeTagsFromResourceResponse
--
--         , testCreateDBInstanceResponse $
--             createDBInstanceResponse
--
--         , testRestoreDBInstanceFromDBSnapshotResponse $
--             restoreDBInstanceFromDBSnapshotResponse
--
--         , testAuthorizeDBSecurityGroupIngressResponse $
--             authorizeDBSecurityGroupIngressResponse
--
--         , testDeleteDBClusterParameterGroupResponse $
--             deleteDBClusterParameterGroupResponse
--
--         , testPurchaseReservedDBInstancesOfferingResponse $
--             purchaseReservedDBInstancesOfferingResponse
--
--         , testDescribeCertificatesResponse $
--             describeCertificatesResponse
--
--         , testRestoreDBClusterFromSnapshotResponse $
--             restoreDBClusterFromSnapshotResponse
--
--         , testCreateDBSnapshotResponse $
--             createDBSnapshotResponse
--
--         , testDeleteEventSubscriptionResponse $
--             deleteEventSubscriptionResponse
--
--         , testDescribeDBParameterGroupsResponse $
--             describeDBParameterGroupsResponse
--
--         , testDescribeOrderableDBInstanceOptionsResponse $
--             describeOrderableDBInstanceOptionsResponse
--
--         , testCreateDBClusterParameterGroupResponse $
--             createDBClusterParameterGroupResponse
--
--         , testDescribeEventSubscriptionsResponse $
--             describeEventSubscriptionsResponse
--
--         , testAddTagsToResourceResponse $
--             addTagsToResourceResponse
--
--         , testDescribeOptionGroupOptionsResponse $
--             describeOptionGroupOptionsResponse
--
--         , testDescribeDBParametersResponse $
--             describeDBParametersResponse
--
--         , testDeleteDBClusterSnapshotResponse $
--             deleteDBClusterSnapshotResponse
--
--         , testDescribeDBSnapshotsResponse $
--             describeDBSnapshotsResponse
--
--         , testDescribeDBSubnetGroupsResponse $
--             describeDBSubnetGroupsResponse
--
--         , testCreateDBParameterGroupResponse $
--             createDBParameterGroupResponse
--
--         , testCreateDBClusterSnapshotResponse $
--             createDBClusterSnapshotResponse
--
--         , testModifyOptionGroupResponse $
--             modifyOptionGroupResponse
--
--         , testModifyDBClusterResponse $
--             modifyDBClusterResponse
--
--         , testDescribeEventCategoriesResponse $
--             describeEventCategoriesResponse
--
--         , testModifyDBClusterParameterGroupResponse $
--             dbClusterParameterGroupNameMessage
--
--         , testDescribePendingMaintenanceActionsResponse $
--             describePendingMaintenanceActionsResponse
--
--         , testRestoreDBInstanceToPointInTimeResponse $
--             restoreDBInstanceToPointInTimeResponse
--
--         , testResetDBParameterGroupResponse $
--             dbParameterGroupNameMessage
--
--         , testCopyDBClusterSnapshotResponse $
--             copyDBClusterSnapshotResponse
--
--         , testModifyDBParameterGroupResponse $
--             dbParameterGroupNameMessage
--
--         , testFailoverDBClusterResponse $
--             failoverDBClusterResponse
--
--         , testCreateDBClusterResponse $
--             createDBClusterResponse
--
--         , testCreateOptionGroupResponse $
--             createOptionGroupResponse
--
--         , testApplyPendingMaintenanceActionResponse $
--             applyPendingMaintenanceActionResponse
--
--         , testRevokeDBSecurityGroupIngressResponse $
--             revokeDBSecurityGroupIngressResponse
--
--         , testDeleteDBSnapshotResponse $
--             deleteDBSnapshotResponse
--
--         , testDescribeDBClusterParametersResponse $
--             describeDBClusterParametersResponse
--
--         , testCreateDBSecurityGroupResponse $
--             createDBSecurityGroupResponse
--
--         , testDeleteDBSubnetGroupResponse $
--             deleteDBSubnetGroupResponse
--
--         , testDescribeAccountAttributesResponse $
--             describeAccountAttributesResponse
--
--         , testDeleteDBSecurityGroupResponse $
--             deleteDBSecurityGroupResponse
--
--         , testRebootDBInstanceResponse $
--             rebootDBInstanceResponse
--
--         , testDescribeDBClusterSnapshotsResponse $
--             describeDBClusterSnapshotsResponse
--
--         , testCreateDBSubnetGroupResponse $
--             createDBSubnetGroupResponse
--
--         , testDescribeReservedDBInstancesOfferingsResponse $
--             describeReservedDBInstancesOfferingsResponse
--
--         , testDeleteDBInstanceResponse $
--             deleteDBInstanceResponse
--
--         , testDescribeDBInstancesResponse $
--             describeDBInstancesResponse
--
--         , testCopyOptionGroupResponse $
--             copyOptionGroupResponse
--
--         , testDownloadDBLogFilePortionResponse $
--             downloadDBLogFilePortionResponse
--
--         , testCreateDBInstanceReadReplicaResponse $
--             createDBInstanceReadReplicaResponse
--
--         , testRestoreDBClusterToPointInTimeResponse $
--             restoreDBClusterToPointInTimeResponse
--
--         , testDeleteDBParameterGroupResponse $
--             deleteDBParameterGroupResponse
--
--         , testDescribeDBSecurityGroupsResponse $
--             describeDBSecurityGroupsResponse
--
--           ]
--     ]

-- Requests

testDescribeDBEngineVersions :: DescribeDBEngineVersions -> TestTree
testDescribeDBEngineVersions = req
    "DescribeDBEngineVersions"
    "fixture/DescribeDBEngineVersions.yaml"

testDescribeDBClusterParameterGroups :: DescribeDBClusterParameterGroups -> TestTree
testDescribeDBClusterParameterGroups = req
    "DescribeDBClusterParameterGroups"
    "fixture/DescribeDBClusterParameterGroups.yaml"

testPromoteReadReplica :: PromoteReadReplica -> TestTree
testPromoteReadReplica = req
    "PromoteReadReplica"
    "fixture/PromoteReadReplica.yaml"

testModifyEventSubscription :: ModifyEventSubscription -> TestTree
testModifyEventSubscription = req
    "ModifyEventSubscription"
    "fixture/ModifyEventSubscription.yaml"

testCopyDBSnapshot :: CopyDBSnapshot -> TestTree
testCopyDBSnapshot = req
    "CopyDBSnapshot"
    "fixture/CopyDBSnapshot.yaml"

testAddSourceIdentifierToSubscription :: AddSourceIdentifierToSubscription -> TestTree
testAddSourceIdentifierToSubscription = req
    "AddSourceIdentifierToSubscription"
    "fixture/AddSourceIdentifierToSubscription.yaml"

testModifyDBInstance :: ModifyDBInstance -> TestTree
testModifyDBInstance = req
    "ModifyDBInstance"
    "fixture/ModifyDBInstance.yaml"

testResetDBClusterParameterGroup :: ResetDBClusterParameterGroup -> TestTree
testResetDBClusterParameterGroup = req
    "ResetDBClusterParameterGroup"
    "fixture/ResetDBClusterParameterGroup.yaml"

testDescribeEvents :: DescribeEvents -> TestTree
testDescribeEvents = req
    "DescribeEvents"
    "fixture/DescribeEvents.yaml"

testDescribeEngineDefaultParameters :: DescribeEngineDefaultParameters -> TestTree
testDescribeEngineDefaultParameters = req
    "DescribeEngineDefaultParameters"
    "fixture/DescribeEngineDefaultParameters.yaml"

testDescribeDBClusters :: DescribeDBClusters -> TestTree
testDescribeDBClusters = req
    "DescribeDBClusters"
    "fixture/DescribeDBClusters.yaml"

testModifyDBSubnetGroup :: ModifyDBSubnetGroup -> TestTree
testModifyDBSubnetGroup = req
    "ModifyDBSubnetGroup"
    "fixture/ModifyDBSubnetGroup.yaml"

testDescribeDBLogFiles :: DescribeDBLogFiles -> TestTree
testDescribeDBLogFiles = req
    "DescribeDBLogFiles"
    "fixture/DescribeDBLogFiles.yaml"

testListTagsForResource :: ListTagsForResource -> TestTree
testListTagsForResource = req
    "ListTagsForResource"
    "fixture/ListTagsForResource.yaml"

testDescribeOptionGroups :: DescribeOptionGroups -> TestTree
testDescribeOptionGroups = req
    "DescribeOptionGroups"
    "fixture/DescribeOptionGroups.yaml"

testDeleteDBCluster :: DeleteDBCluster -> TestTree
testDeleteDBCluster = req
    "DeleteDBCluster"
    "fixture/DeleteDBCluster.yaml"

testRemoveSourceIdentifierFromSubscription :: RemoveSourceIdentifierFromSubscription -> TestTree
testRemoveSourceIdentifierFromSubscription = req
    "RemoveSourceIdentifierFromSubscription"
    "fixture/RemoveSourceIdentifierFromSubscription.yaml"

testCopyDBParameterGroup :: CopyDBParameterGroup -> TestTree
testCopyDBParameterGroup = req
    "CopyDBParameterGroup"
    "fixture/CopyDBParameterGroup.yaml"

testDescribeReservedDBInstances :: DescribeReservedDBInstances -> TestTree
testDescribeReservedDBInstances = req
    "DescribeReservedDBInstances"
    "fixture/DescribeReservedDBInstances.yaml"

testDeleteOptionGroup :: DeleteOptionGroup -> TestTree
testDeleteOptionGroup = req
    "DeleteOptionGroup"
    "fixture/DeleteOptionGroup.yaml"

testDescribeEngineDefaultClusterParameters :: DescribeEngineDefaultClusterParameters -> TestTree
testDescribeEngineDefaultClusterParameters = req
    "DescribeEngineDefaultClusterParameters"
    "fixture/DescribeEngineDefaultClusterParameters.yaml"

testCreateEventSubscription :: CreateEventSubscription -> TestTree
testCreateEventSubscription = req
    "CreateEventSubscription"
    "fixture/CreateEventSubscription.yaml"

testRemoveTagsFromResource :: RemoveTagsFromResource -> TestTree
testRemoveTagsFromResource = req
    "RemoveTagsFromResource"
    "fixture/RemoveTagsFromResource.yaml"

testCreateDBInstance :: CreateDBInstance -> TestTree
testCreateDBInstance = req
    "CreateDBInstance"
    "fixture/CreateDBInstance.yaml"

testRestoreDBInstanceFromDBSnapshot :: RestoreDBInstanceFromDBSnapshot -> TestTree
testRestoreDBInstanceFromDBSnapshot = req
    "RestoreDBInstanceFromDBSnapshot"
    "fixture/RestoreDBInstanceFromDBSnapshot.yaml"

testAuthorizeDBSecurityGroupIngress :: AuthorizeDBSecurityGroupIngress -> TestTree
testAuthorizeDBSecurityGroupIngress = req
    "AuthorizeDBSecurityGroupIngress"
    "fixture/AuthorizeDBSecurityGroupIngress.yaml"

testDeleteDBClusterParameterGroup :: DeleteDBClusterParameterGroup -> TestTree
testDeleteDBClusterParameterGroup = req
    "DeleteDBClusterParameterGroup"
    "fixture/DeleteDBClusterParameterGroup.yaml"

testPurchaseReservedDBInstancesOffering :: PurchaseReservedDBInstancesOffering -> TestTree
testPurchaseReservedDBInstancesOffering = req
    "PurchaseReservedDBInstancesOffering"
    "fixture/PurchaseReservedDBInstancesOffering.yaml"

testDescribeCertificates :: DescribeCertificates -> TestTree
testDescribeCertificates = req
    "DescribeCertificates"
    "fixture/DescribeCertificates.yaml"

testRestoreDBClusterFromSnapshot :: RestoreDBClusterFromSnapshot -> TestTree
testRestoreDBClusterFromSnapshot = req
    "RestoreDBClusterFromSnapshot"
    "fixture/RestoreDBClusterFromSnapshot.yaml"

testCreateDBSnapshot :: CreateDBSnapshot -> TestTree
testCreateDBSnapshot = req
    "CreateDBSnapshot"
    "fixture/CreateDBSnapshot.yaml"

testDeleteEventSubscription :: DeleteEventSubscription -> TestTree
testDeleteEventSubscription = req
    "DeleteEventSubscription"
    "fixture/DeleteEventSubscription.yaml"

testDescribeDBParameterGroups :: DescribeDBParameterGroups -> TestTree
testDescribeDBParameterGroups = req
    "DescribeDBParameterGroups"
    "fixture/DescribeDBParameterGroups.yaml"

testDescribeOrderableDBInstanceOptions :: DescribeOrderableDBInstanceOptions -> TestTree
testDescribeOrderableDBInstanceOptions = req
    "DescribeOrderableDBInstanceOptions"
    "fixture/DescribeOrderableDBInstanceOptions.yaml"

testCreateDBClusterParameterGroup :: CreateDBClusterParameterGroup -> TestTree
testCreateDBClusterParameterGroup = req
    "CreateDBClusterParameterGroup"
    "fixture/CreateDBClusterParameterGroup.yaml"

testDescribeEventSubscriptions :: DescribeEventSubscriptions -> TestTree
testDescribeEventSubscriptions = req
    "DescribeEventSubscriptions"
    "fixture/DescribeEventSubscriptions.yaml"

testAddTagsToResource :: AddTagsToResource -> TestTree
testAddTagsToResource = req
    "AddTagsToResource"
    "fixture/AddTagsToResource.yaml"

testDescribeOptionGroupOptions :: DescribeOptionGroupOptions -> TestTree
testDescribeOptionGroupOptions = req
    "DescribeOptionGroupOptions"
    "fixture/DescribeOptionGroupOptions.yaml"

testDescribeDBParameters :: DescribeDBParameters -> TestTree
testDescribeDBParameters = req
    "DescribeDBParameters"
    "fixture/DescribeDBParameters.yaml"

testDeleteDBClusterSnapshot :: DeleteDBClusterSnapshot -> TestTree
testDeleteDBClusterSnapshot = req
    "DeleteDBClusterSnapshot"
    "fixture/DeleteDBClusterSnapshot.yaml"

testDescribeDBSnapshots :: DescribeDBSnapshots -> TestTree
testDescribeDBSnapshots = req
    "DescribeDBSnapshots"
    "fixture/DescribeDBSnapshots.yaml"

testDescribeDBSubnetGroups :: DescribeDBSubnetGroups -> TestTree
testDescribeDBSubnetGroups = req
    "DescribeDBSubnetGroups"
    "fixture/DescribeDBSubnetGroups.yaml"

testCreateDBParameterGroup :: CreateDBParameterGroup -> TestTree
testCreateDBParameterGroup = req
    "CreateDBParameterGroup"
    "fixture/CreateDBParameterGroup.yaml"

testCreateDBClusterSnapshot :: CreateDBClusterSnapshot -> TestTree
testCreateDBClusterSnapshot = req
    "CreateDBClusterSnapshot"
    "fixture/CreateDBClusterSnapshot.yaml"

testModifyOptionGroup :: ModifyOptionGroup -> TestTree
testModifyOptionGroup = req
    "ModifyOptionGroup"
    "fixture/ModifyOptionGroup.yaml"

testModifyDBCluster :: ModifyDBCluster -> TestTree
testModifyDBCluster = req
    "ModifyDBCluster"
    "fixture/ModifyDBCluster.yaml"

testDescribeEventCategories :: DescribeEventCategories -> TestTree
testDescribeEventCategories = req
    "DescribeEventCategories"
    "fixture/DescribeEventCategories.yaml"

testModifyDBClusterParameterGroup :: ModifyDBClusterParameterGroup -> TestTree
testModifyDBClusterParameterGroup = req
    "ModifyDBClusterParameterGroup"
    "fixture/ModifyDBClusterParameterGroup.yaml"

testDescribePendingMaintenanceActions :: DescribePendingMaintenanceActions -> TestTree
testDescribePendingMaintenanceActions = req
    "DescribePendingMaintenanceActions"
    "fixture/DescribePendingMaintenanceActions.yaml"

testRestoreDBInstanceToPointInTime :: RestoreDBInstanceToPointInTime -> TestTree
testRestoreDBInstanceToPointInTime = req
    "RestoreDBInstanceToPointInTime"
    "fixture/RestoreDBInstanceToPointInTime.yaml"

testResetDBParameterGroup :: ResetDBParameterGroup -> TestTree
testResetDBParameterGroup = req
    "ResetDBParameterGroup"
    "fixture/ResetDBParameterGroup.yaml"

testCopyDBClusterSnapshot :: CopyDBClusterSnapshot -> TestTree
testCopyDBClusterSnapshot = req
    "CopyDBClusterSnapshot"
    "fixture/CopyDBClusterSnapshot.yaml"

testModifyDBParameterGroup :: ModifyDBParameterGroup -> TestTree
testModifyDBParameterGroup = req
    "ModifyDBParameterGroup"
    "fixture/ModifyDBParameterGroup.yaml"

testFailoverDBCluster :: FailoverDBCluster -> TestTree
testFailoverDBCluster = req
    "FailoverDBCluster"
    "fixture/FailoverDBCluster.yaml"

testCreateDBCluster :: CreateDBCluster -> TestTree
testCreateDBCluster = req
    "CreateDBCluster"
    "fixture/CreateDBCluster.yaml"

testCreateOptionGroup :: CreateOptionGroup -> TestTree
testCreateOptionGroup = req
    "CreateOptionGroup"
    "fixture/CreateOptionGroup.yaml"

testApplyPendingMaintenanceAction :: ApplyPendingMaintenanceAction -> TestTree
testApplyPendingMaintenanceAction = req
    "ApplyPendingMaintenanceAction"
    "fixture/ApplyPendingMaintenanceAction.yaml"

testRevokeDBSecurityGroupIngress :: RevokeDBSecurityGroupIngress -> TestTree
testRevokeDBSecurityGroupIngress = req
    "RevokeDBSecurityGroupIngress"
    "fixture/RevokeDBSecurityGroupIngress.yaml"

testDeleteDBSnapshot :: DeleteDBSnapshot -> TestTree
testDeleteDBSnapshot = req
    "DeleteDBSnapshot"
    "fixture/DeleteDBSnapshot.yaml"

testDescribeDBClusterParameters :: DescribeDBClusterParameters -> TestTree
testDescribeDBClusterParameters = req
    "DescribeDBClusterParameters"
    "fixture/DescribeDBClusterParameters.yaml"

testCreateDBSecurityGroup :: CreateDBSecurityGroup -> TestTree
testCreateDBSecurityGroup = req
    "CreateDBSecurityGroup"
    "fixture/CreateDBSecurityGroup.yaml"

testDeleteDBSubnetGroup :: DeleteDBSubnetGroup -> TestTree
testDeleteDBSubnetGroup = req
    "DeleteDBSubnetGroup"
    "fixture/DeleteDBSubnetGroup.yaml"

testDescribeAccountAttributes :: DescribeAccountAttributes -> TestTree
testDescribeAccountAttributes = req
    "DescribeAccountAttributes"
    "fixture/DescribeAccountAttributes.yaml"

testDeleteDBSecurityGroup :: DeleteDBSecurityGroup -> TestTree
testDeleteDBSecurityGroup = req
    "DeleteDBSecurityGroup"
    "fixture/DeleteDBSecurityGroup.yaml"

testRebootDBInstance :: RebootDBInstance -> TestTree
testRebootDBInstance = req
    "RebootDBInstance"
    "fixture/RebootDBInstance.yaml"

testDescribeDBClusterSnapshots :: DescribeDBClusterSnapshots -> TestTree
testDescribeDBClusterSnapshots = req
    "DescribeDBClusterSnapshots"
    "fixture/DescribeDBClusterSnapshots.yaml"

testCreateDBSubnetGroup :: CreateDBSubnetGroup -> TestTree
testCreateDBSubnetGroup = req
    "CreateDBSubnetGroup"
    "fixture/CreateDBSubnetGroup.yaml"

testDescribeReservedDBInstancesOfferings :: DescribeReservedDBInstancesOfferings -> TestTree
testDescribeReservedDBInstancesOfferings = req
    "DescribeReservedDBInstancesOfferings"
    "fixture/DescribeReservedDBInstancesOfferings.yaml"

testDeleteDBInstance :: DeleteDBInstance -> TestTree
testDeleteDBInstance = req
    "DeleteDBInstance"
    "fixture/DeleteDBInstance.yaml"

testDescribeDBInstances :: DescribeDBInstances -> TestTree
testDescribeDBInstances = req
    "DescribeDBInstances"
    "fixture/DescribeDBInstances.yaml"

testCopyOptionGroup :: CopyOptionGroup -> TestTree
testCopyOptionGroup = req
    "CopyOptionGroup"
    "fixture/CopyOptionGroup.yaml"

testDownloadDBLogFilePortion :: DownloadDBLogFilePortion -> TestTree
testDownloadDBLogFilePortion = req
    "DownloadDBLogFilePortion"
    "fixture/DownloadDBLogFilePortion.yaml"

testCreateDBInstanceReadReplica :: CreateDBInstanceReadReplica -> TestTree
testCreateDBInstanceReadReplica = req
    "CreateDBInstanceReadReplica"
    "fixture/CreateDBInstanceReadReplica.yaml"

testRestoreDBClusterToPointInTime :: RestoreDBClusterToPointInTime -> TestTree
testRestoreDBClusterToPointInTime = req
    "RestoreDBClusterToPointInTime"
    "fixture/RestoreDBClusterToPointInTime.yaml"

testDeleteDBParameterGroup :: DeleteDBParameterGroup -> TestTree
testDeleteDBParameterGroup = req
    "DeleteDBParameterGroup"
    "fixture/DeleteDBParameterGroup.yaml"

testDescribeDBSecurityGroups :: DescribeDBSecurityGroups -> TestTree
testDescribeDBSecurityGroups = req
    "DescribeDBSecurityGroups"
    "fixture/DescribeDBSecurityGroups.yaml"

-- Responses

testDescribeDBEngineVersionsResponse :: DescribeDBEngineVersionsResponse -> TestTree
testDescribeDBEngineVersionsResponse = res
    "DescribeDBEngineVersionsResponse"
    "fixture/DescribeDBEngineVersionsResponse.proto"
    rDS
    (Proxy :: Proxy DescribeDBEngineVersions)

testDescribeDBClusterParameterGroupsResponse :: DescribeDBClusterParameterGroupsResponse -> TestTree
testDescribeDBClusterParameterGroupsResponse = res
    "DescribeDBClusterParameterGroupsResponse"
    "fixture/DescribeDBClusterParameterGroupsResponse.proto"
    rDS
    (Proxy :: Proxy DescribeDBClusterParameterGroups)

testPromoteReadReplicaResponse :: PromoteReadReplicaResponse -> TestTree
testPromoteReadReplicaResponse = res
    "PromoteReadReplicaResponse"
    "fixture/PromoteReadReplicaResponse.proto"
    rDS
    (Proxy :: Proxy PromoteReadReplica)

testModifyEventSubscriptionResponse :: ModifyEventSubscriptionResponse -> TestTree
testModifyEventSubscriptionResponse = res
    "ModifyEventSubscriptionResponse"
    "fixture/ModifyEventSubscriptionResponse.proto"
    rDS
    (Proxy :: Proxy ModifyEventSubscription)

testCopyDBSnapshotResponse :: CopyDBSnapshotResponse -> TestTree
testCopyDBSnapshotResponse = res
    "CopyDBSnapshotResponse"
    "fixture/CopyDBSnapshotResponse.proto"
    rDS
    (Proxy :: Proxy CopyDBSnapshot)

testAddSourceIdentifierToSubscriptionResponse :: AddSourceIdentifierToSubscriptionResponse -> TestTree
testAddSourceIdentifierToSubscriptionResponse = res
    "AddSourceIdentifierToSubscriptionResponse"
    "fixture/AddSourceIdentifierToSubscriptionResponse.proto"
    rDS
    (Proxy :: Proxy AddSourceIdentifierToSubscription)

testModifyDBInstanceResponse :: ModifyDBInstanceResponse -> TestTree
testModifyDBInstanceResponse = res
    "ModifyDBInstanceResponse"
    "fixture/ModifyDBInstanceResponse.proto"
    rDS
    (Proxy :: Proxy ModifyDBInstance)

testResetDBClusterParameterGroupResponse :: DBClusterParameterGroupNameMessage -> TestTree
testResetDBClusterParameterGroupResponse = res
    "ResetDBClusterParameterGroupResponse"
    "fixture/ResetDBClusterParameterGroupResponse.proto"
    rDS
    (Proxy :: Proxy ResetDBClusterParameterGroup)

testDescribeEventsResponse :: DescribeEventsResponse -> TestTree
testDescribeEventsResponse = res
    "DescribeEventsResponse"
    "fixture/DescribeEventsResponse.proto"
    rDS
    (Proxy :: Proxy DescribeEvents)

testDescribeEngineDefaultParametersResponse :: DescribeEngineDefaultParametersResponse -> TestTree
testDescribeEngineDefaultParametersResponse = res
    "DescribeEngineDefaultParametersResponse"
    "fixture/DescribeEngineDefaultParametersResponse.proto"
    rDS
    (Proxy :: Proxy DescribeEngineDefaultParameters)

testDescribeDBClustersResponse :: DescribeDBClustersResponse -> TestTree
testDescribeDBClustersResponse = res
    "DescribeDBClustersResponse"
    "fixture/DescribeDBClustersResponse.proto"
    rDS
    (Proxy :: Proxy DescribeDBClusters)

testModifyDBSubnetGroupResponse :: ModifyDBSubnetGroupResponse -> TestTree
testModifyDBSubnetGroupResponse = res
    "ModifyDBSubnetGroupResponse"
    "fixture/ModifyDBSubnetGroupResponse.proto"
    rDS
    (Proxy :: Proxy ModifyDBSubnetGroup)

testDescribeDBLogFilesResponse :: DescribeDBLogFilesResponse -> TestTree
testDescribeDBLogFilesResponse = res
    "DescribeDBLogFilesResponse"
    "fixture/DescribeDBLogFilesResponse.proto"
    rDS
    (Proxy :: Proxy DescribeDBLogFiles)

testListTagsForResourceResponse :: ListTagsForResourceResponse -> TestTree
testListTagsForResourceResponse = res
    "ListTagsForResourceResponse"
    "fixture/ListTagsForResourceResponse.proto"
    rDS
    (Proxy :: Proxy ListTagsForResource)

testDescribeOptionGroupsResponse :: DescribeOptionGroupsResponse -> TestTree
testDescribeOptionGroupsResponse = res
    "DescribeOptionGroupsResponse"
    "fixture/DescribeOptionGroupsResponse.proto"
    rDS
    (Proxy :: Proxy DescribeOptionGroups)

testDeleteDBClusterResponse :: DeleteDBClusterResponse -> TestTree
testDeleteDBClusterResponse = res
    "DeleteDBClusterResponse"
    "fixture/DeleteDBClusterResponse.proto"
    rDS
    (Proxy :: Proxy DeleteDBCluster)

testRemoveSourceIdentifierFromSubscriptionResponse :: RemoveSourceIdentifierFromSubscriptionResponse -> TestTree
testRemoveSourceIdentifierFromSubscriptionResponse = res
    "RemoveSourceIdentifierFromSubscriptionResponse"
    "fixture/RemoveSourceIdentifierFromSubscriptionResponse.proto"
    rDS
    (Proxy :: Proxy RemoveSourceIdentifierFromSubscription)

testCopyDBParameterGroupResponse :: CopyDBParameterGroupResponse -> TestTree
testCopyDBParameterGroupResponse = res
    "CopyDBParameterGroupResponse"
    "fixture/CopyDBParameterGroupResponse.proto"
    rDS
    (Proxy :: Proxy CopyDBParameterGroup)

testDescribeReservedDBInstancesResponse :: DescribeReservedDBInstancesResponse -> TestTree
testDescribeReservedDBInstancesResponse = res
    "DescribeReservedDBInstancesResponse"
    "fixture/DescribeReservedDBInstancesResponse.proto"
    rDS
    (Proxy :: Proxy DescribeReservedDBInstances)

testDeleteOptionGroupResponse :: DeleteOptionGroupResponse -> TestTree
testDeleteOptionGroupResponse = res
    "DeleteOptionGroupResponse"
    "fixture/DeleteOptionGroupResponse.proto"
    rDS
    (Proxy :: Proxy DeleteOptionGroup)

testDescribeEngineDefaultClusterParametersResponse :: DescribeEngineDefaultClusterParametersResponse -> TestTree
testDescribeEngineDefaultClusterParametersResponse = res
    "DescribeEngineDefaultClusterParametersResponse"
    "fixture/DescribeEngineDefaultClusterParametersResponse.proto"
    rDS
    (Proxy :: Proxy DescribeEngineDefaultClusterParameters)

testCreateEventSubscriptionResponse :: CreateEventSubscriptionResponse -> TestTree
testCreateEventSubscriptionResponse = res
    "CreateEventSubscriptionResponse"
    "fixture/CreateEventSubscriptionResponse.proto"
    rDS
    (Proxy :: Proxy CreateEventSubscription)

testRemoveTagsFromResourceResponse :: RemoveTagsFromResourceResponse -> TestTree
testRemoveTagsFromResourceResponse = res
    "RemoveTagsFromResourceResponse"
    "fixture/RemoveTagsFromResourceResponse.proto"
    rDS
    (Proxy :: Proxy RemoveTagsFromResource)

testCreateDBInstanceResponse :: CreateDBInstanceResponse -> TestTree
testCreateDBInstanceResponse = res
    "CreateDBInstanceResponse"
    "fixture/CreateDBInstanceResponse.proto"
    rDS
    (Proxy :: Proxy CreateDBInstance)

testRestoreDBInstanceFromDBSnapshotResponse :: RestoreDBInstanceFromDBSnapshotResponse -> TestTree
testRestoreDBInstanceFromDBSnapshotResponse = res
    "RestoreDBInstanceFromDBSnapshotResponse"
    "fixture/RestoreDBInstanceFromDBSnapshotResponse.proto"
    rDS
    (Proxy :: Proxy RestoreDBInstanceFromDBSnapshot)

testAuthorizeDBSecurityGroupIngressResponse :: AuthorizeDBSecurityGroupIngressResponse -> TestTree
testAuthorizeDBSecurityGroupIngressResponse = res
    "AuthorizeDBSecurityGroupIngressResponse"
    "fixture/AuthorizeDBSecurityGroupIngressResponse.proto"
    rDS
    (Proxy :: Proxy AuthorizeDBSecurityGroupIngress)

testDeleteDBClusterParameterGroupResponse :: DeleteDBClusterParameterGroupResponse -> TestTree
testDeleteDBClusterParameterGroupResponse = res
    "DeleteDBClusterParameterGroupResponse"
    "fixture/DeleteDBClusterParameterGroupResponse.proto"
    rDS
    (Proxy :: Proxy DeleteDBClusterParameterGroup)

testPurchaseReservedDBInstancesOfferingResponse :: PurchaseReservedDBInstancesOfferingResponse -> TestTree
testPurchaseReservedDBInstancesOfferingResponse = res
    "PurchaseReservedDBInstancesOfferingResponse"
    "fixture/PurchaseReservedDBInstancesOfferingResponse.proto"
    rDS
    (Proxy :: Proxy PurchaseReservedDBInstancesOffering)

testDescribeCertificatesResponse :: DescribeCertificatesResponse -> TestTree
testDescribeCertificatesResponse = res
    "DescribeCertificatesResponse"
    "fixture/DescribeCertificatesResponse.proto"
    rDS
    (Proxy :: Proxy DescribeCertificates)

testRestoreDBClusterFromSnapshotResponse :: RestoreDBClusterFromSnapshotResponse -> TestTree
testRestoreDBClusterFromSnapshotResponse = res
    "RestoreDBClusterFromSnapshotResponse"
    "fixture/RestoreDBClusterFromSnapshotResponse.proto"
    rDS
    (Proxy :: Proxy RestoreDBClusterFromSnapshot)

testCreateDBSnapshotResponse :: CreateDBSnapshotResponse -> TestTree
testCreateDBSnapshotResponse = res
    "CreateDBSnapshotResponse"
    "fixture/CreateDBSnapshotResponse.proto"
    rDS
    (Proxy :: Proxy CreateDBSnapshot)

testDeleteEventSubscriptionResponse :: DeleteEventSubscriptionResponse -> TestTree
testDeleteEventSubscriptionResponse = res
    "DeleteEventSubscriptionResponse"
    "fixture/DeleteEventSubscriptionResponse.proto"
    rDS
    (Proxy :: Proxy DeleteEventSubscription)

testDescribeDBParameterGroupsResponse :: DescribeDBParameterGroupsResponse -> TestTree
testDescribeDBParameterGroupsResponse = res
    "DescribeDBParameterGroupsResponse"
    "fixture/DescribeDBParameterGroupsResponse.proto"
    rDS
    (Proxy :: Proxy DescribeDBParameterGroups)

testDescribeOrderableDBInstanceOptionsResponse :: DescribeOrderableDBInstanceOptionsResponse -> TestTree
testDescribeOrderableDBInstanceOptionsResponse = res
    "DescribeOrderableDBInstanceOptionsResponse"
    "fixture/DescribeOrderableDBInstanceOptionsResponse.proto"
    rDS
    (Proxy :: Proxy DescribeOrderableDBInstanceOptions)

testCreateDBClusterParameterGroupResponse :: CreateDBClusterParameterGroupResponse -> TestTree
testCreateDBClusterParameterGroupResponse = res
    "CreateDBClusterParameterGroupResponse"
    "fixture/CreateDBClusterParameterGroupResponse.proto"
    rDS
    (Proxy :: Proxy CreateDBClusterParameterGroup)

testDescribeEventSubscriptionsResponse :: DescribeEventSubscriptionsResponse -> TestTree
testDescribeEventSubscriptionsResponse = res
    "DescribeEventSubscriptionsResponse"
    "fixture/DescribeEventSubscriptionsResponse.proto"
    rDS
    (Proxy :: Proxy DescribeEventSubscriptions)

testAddTagsToResourceResponse :: AddTagsToResourceResponse -> TestTree
testAddTagsToResourceResponse = res
    "AddTagsToResourceResponse"
    "fixture/AddTagsToResourceResponse.proto"
    rDS
    (Proxy :: Proxy AddTagsToResource)

testDescribeOptionGroupOptionsResponse :: DescribeOptionGroupOptionsResponse -> TestTree
testDescribeOptionGroupOptionsResponse = res
    "DescribeOptionGroupOptionsResponse"
    "fixture/DescribeOptionGroupOptionsResponse.proto"
    rDS
    (Proxy :: Proxy DescribeOptionGroupOptions)

testDescribeDBParametersResponse :: DescribeDBParametersResponse -> TestTree
testDescribeDBParametersResponse = res
    "DescribeDBParametersResponse"
    "fixture/DescribeDBParametersResponse.proto"
    rDS
    (Proxy :: Proxy DescribeDBParameters)

testDeleteDBClusterSnapshotResponse :: DeleteDBClusterSnapshotResponse -> TestTree
testDeleteDBClusterSnapshotResponse = res
    "DeleteDBClusterSnapshotResponse"
    "fixture/DeleteDBClusterSnapshotResponse.proto"
    rDS
    (Proxy :: Proxy DeleteDBClusterSnapshot)

testDescribeDBSnapshotsResponse :: DescribeDBSnapshotsResponse -> TestTree
testDescribeDBSnapshotsResponse = res
    "DescribeDBSnapshotsResponse"
    "fixture/DescribeDBSnapshotsResponse.proto"
    rDS
    (Proxy :: Proxy DescribeDBSnapshots)

testDescribeDBSubnetGroupsResponse :: DescribeDBSubnetGroupsResponse -> TestTree
testDescribeDBSubnetGroupsResponse = res
    "DescribeDBSubnetGroupsResponse"
    "fixture/DescribeDBSubnetGroupsResponse.proto"
    rDS
    (Proxy :: Proxy DescribeDBSubnetGroups)

testCreateDBParameterGroupResponse :: CreateDBParameterGroupResponse -> TestTree
testCreateDBParameterGroupResponse = res
    "CreateDBParameterGroupResponse"
    "fixture/CreateDBParameterGroupResponse.proto"
    rDS
    (Proxy :: Proxy CreateDBParameterGroup)

testCreateDBClusterSnapshotResponse :: CreateDBClusterSnapshotResponse -> TestTree
testCreateDBClusterSnapshotResponse = res
    "CreateDBClusterSnapshotResponse"
    "fixture/CreateDBClusterSnapshotResponse.proto"
    rDS
    (Proxy :: Proxy CreateDBClusterSnapshot)

testModifyOptionGroupResponse :: ModifyOptionGroupResponse -> TestTree
testModifyOptionGroupResponse = res
    "ModifyOptionGroupResponse"
    "fixture/ModifyOptionGroupResponse.proto"
    rDS
    (Proxy :: Proxy ModifyOptionGroup)

testModifyDBClusterResponse :: ModifyDBClusterResponse -> TestTree
testModifyDBClusterResponse = res
    "ModifyDBClusterResponse"
    "fixture/ModifyDBClusterResponse.proto"
    rDS
    (Proxy :: Proxy ModifyDBCluster)

testDescribeEventCategoriesResponse :: DescribeEventCategoriesResponse -> TestTree
testDescribeEventCategoriesResponse = res
    "DescribeEventCategoriesResponse"
    "fixture/DescribeEventCategoriesResponse.proto"
    rDS
    (Proxy :: Proxy DescribeEventCategories)

testModifyDBClusterParameterGroupResponse :: DBClusterParameterGroupNameMessage -> TestTree
testModifyDBClusterParameterGroupResponse = res
    "ModifyDBClusterParameterGroupResponse"
    "fixture/ModifyDBClusterParameterGroupResponse.proto"
    rDS
    (Proxy :: Proxy ModifyDBClusterParameterGroup)

testDescribePendingMaintenanceActionsResponse :: DescribePendingMaintenanceActionsResponse -> TestTree
testDescribePendingMaintenanceActionsResponse = res
    "DescribePendingMaintenanceActionsResponse"
    "fixture/DescribePendingMaintenanceActionsResponse.proto"
    rDS
    (Proxy :: Proxy DescribePendingMaintenanceActions)

testRestoreDBInstanceToPointInTimeResponse :: RestoreDBInstanceToPointInTimeResponse -> TestTree
testRestoreDBInstanceToPointInTimeResponse = res
    "RestoreDBInstanceToPointInTimeResponse"
    "fixture/RestoreDBInstanceToPointInTimeResponse.proto"
    rDS
    (Proxy :: Proxy RestoreDBInstanceToPointInTime)

testResetDBParameterGroupResponse :: DBParameterGroupNameMessage -> TestTree
testResetDBParameterGroupResponse = res
    "ResetDBParameterGroupResponse"
    "fixture/ResetDBParameterGroupResponse.proto"
    rDS
    (Proxy :: Proxy ResetDBParameterGroup)

testCopyDBClusterSnapshotResponse :: CopyDBClusterSnapshotResponse -> TestTree
testCopyDBClusterSnapshotResponse = res
    "CopyDBClusterSnapshotResponse"
    "fixture/CopyDBClusterSnapshotResponse.proto"
    rDS
    (Proxy :: Proxy CopyDBClusterSnapshot)

testModifyDBParameterGroupResponse :: DBParameterGroupNameMessage -> TestTree
testModifyDBParameterGroupResponse = res
    "ModifyDBParameterGroupResponse"
    "fixture/ModifyDBParameterGroupResponse.proto"
    rDS
    (Proxy :: Proxy ModifyDBParameterGroup)

testFailoverDBClusterResponse :: FailoverDBClusterResponse -> TestTree
testFailoverDBClusterResponse = res
    "FailoverDBClusterResponse"
    "fixture/FailoverDBClusterResponse.proto"
    rDS
    (Proxy :: Proxy FailoverDBCluster)

testCreateDBClusterResponse :: CreateDBClusterResponse -> TestTree
testCreateDBClusterResponse = res
    "CreateDBClusterResponse"
    "fixture/CreateDBClusterResponse.proto"
    rDS
    (Proxy :: Proxy CreateDBCluster)

testCreateOptionGroupResponse :: CreateOptionGroupResponse -> TestTree
testCreateOptionGroupResponse = res
    "CreateOptionGroupResponse"
    "fixture/CreateOptionGroupResponse.proto"
    rDS
    (Proxy :: Proxy CreateOptionGroup)

testApplyPendingMaintenanceActionResponse :: ApplyPendingMaintenanceActionResponse -> TestTree
testApplyPendingMaintenanceActionResponse = res
    "ApplyPendingMaintenanceActionResponse"
    "fixture/ApplyPendingMaintenanceActionResponse.proto"
    rDS
    (Proxy :: Proxy ApplyPendingMaintenanceAction)

testRevokeDBSecurityGroupIngressResponse :: RevokeDBSecurityGroupIngressResponse -> TestTree
testRevokeDBSecurityGroupIngressResponse = res
    "RevokeDBSecurityGroupIngressResponse"
    "fixture/RevokeDBSecurityGroupIngressResponse.proto"
    rDS
    (Proxy :: Proxy RevokeDBSecurityGroupIngress)

testDeleteDBSnapshotResponse :: DeleteDBSnapshotResponse -> TestTree
testDeleteDBSnapshotResponse = res
    "DeleteDBSnapshotResponse"
    "fixture/DeleteDBSnapshotResponse.proto"
    rDS
    (Proxy :: Proxy DeleteDBSnapshot)

testDescribeDBClusterParametersResponse :: DescribeDBClusterParametersResponse -> TestTree
testDescribeDBClusterParametersResponse = res
    "DescribeDBClusterParametersResponse"
    "fixture/DescribeDBClusterParametersResponse.proto"
    rDS
    (Proxy :: Proxy DescribeDBClusterParameters)

testCreateDBSecurityGroupResponse :: CreateDBSecurityGroupResponse -> TestTree
testCreateDBSecurityGroupResponse = res
    "CreateDBSecurityGroupResponse"
    "fixture/CreateDBSecurityGroupResponse.proto"
    rDS
    (Proxy :: Proxy CreateDBSecurityGroup)

testDeleteDBSubnetGroupResponse :: DeleteDBSubnetGroupResponse -> TestTree
testDeleteDBSubnetGroupResponse = res
    "DeleteDBSubnetGroupResponse"
    "fixture/DeleteDBSubnetGroupResponse.proto"
    rDS
    (Proxy :: Proxy DeleteDBSubnetGroup)

testDescribeAccountAttributesResponse :: DescribeAccountAttributesResponse -> TestTree
testDescribeAccountAttributesResponse = res
    "DescribeAccountAttributesResponse"
    "fixture/DescribeAccountAttributesResponse.proto"
    rDS
    (Proxy :: Proxy DescribeAccountAttributes)

testDeleteDBSecurityGroupResponse :: DeleteDBSecurityGroupResponse -> TestTree
testDeleteDBSecurityGroupResponse = res
    "DeleteDBSecurityGroupResponse"
    "fixture/DeleteDBSecurityGroupResponse.proto"
    rDS
    (Proxy :: Proxy DeleteDBSecurityGroup)

testRebootDBInstanceResponse :: RebootDBInstanceResponse -> TestTree
testRebootDBInstanceResponse = res
    "RebootDBInstanceResponse"
    "fixture/RebootDBInstanceResponse.proto"
    rDS
    (Proxy :: Proxy RebootDBInstance)

testDescribeDBClusterSnapshotsResponse :: DescribeDBClusterSnapshotsResponse -> TestTree
testDescribeDBClusterSnapshotsResponse = res
    "DescribeDBClusterSnapshotsResponse"
    "fixture/DescribeDBClusterSnapshotsResponse.proto"
    rDS
    (Proxy :: Proxy DescribeDBClusterSnapshots)

testCreateDBSubnetGroupResponse :: CreateDBSubnetGroupResponse -> TestTree
testCreateDBSubnetGroupResponse = res
    "CreateDBSubnetGroupResponse"
    "fixture/CreateDBSubnetGroupResponse.proto"
    rDS
    (Proxy :: Proxy CreateDBSubnetGroup)

testDescribeReservedDBInstancesOfferingsResponse :: DescribeReservedDBInstancesOfferingsResponse -> TestTree
testDescribeReservedDBInstancesOfferingsResponse = res
    "DescribeReservedDBInstancesOfferingsResponse"
    "fixture/DescribeReservedDBInstancesOfferingsResponse.proto"
    rDS
    (Proxy :: Proxy DescribeReservedDBInstancesOfferings)

testDeleteDBInstanceResponse :: DeleteDBInstanceResponse -> TestTree
testDeleteDBInstanceResponse = res
    "DeleteDBInstanceResponse"
    "fixture/DeleteDBInstanceResponse.proto"
    rDS
    (Proxy :: Proxy DeleteDBInstance)

testDescribeDBInstancesResponse :: DescribeDBInstancesResponse -> TestTree
testDescribeDBInstancesResponse = res
    "DescribeDBInstancesResponse"
    "fixture/DescribeDBInstancesResponse.proto"
    rDS
    (Proxy :: Proxy DescribeDBInstances)

testCopyOptionGroupResponse :: CopyOptionGroupResponse -> TestTree
testCopyOptionGroupResponse = res
    "CopyOptionGroupResponse"
    "fixture/CopyOptionGroupResponse.proto"
    rDS
    (Proxy :: Proxy CopyOptionGroup)

testDownloadDBLogFilePortionResponse :: DownloadDBLogFilePortionResponse -> TestTree
testDownloadDBLogFilePortionResponse = res
    "DownloadDBLogFilePortionResponse"
    "fixture/DownloadDBLogFilePortionResponse.proto"
    rDS
    (Proxy :: Proxy DownloadDBLogFilePortion)

testCreateDBInstanceReadReplicaResponse :: CreateDBInstanceReadReplicaResponse -> TestTree
testCreateDBInstanceReadReplicaResponse = res
    "CreateDBInstanceReadReplicaResponse"
    "fixture/CreateDBInstanceReadReplicaResponse.proto"
    rDS
    (Proxy :: Proxy CreateDBInstanceReadReplica)

testRestoreDBClusterToPointInTimeResponse :: RestoreDBClusterToPointInTimeResponse -> TestTree
testRestoreDBClusterToPointInTimeResponse = res
    "RestoreDBClusterToPointInTimeResponse"
    "fixture/RestoreDBClusterToPointInTimeResponse.proto"
    rDS
    (Proxy :: Proxy RestoreDBClusterToPointInTime)

testDeleteDBParameterGroupResponse :: DeleteDBParameterGroupResponse -> TestTree
testDeleteDBParameterGroupResponse = res
    "DeleteDBParameterGroupResponse"
    "fixture/DeleteDBParameterGroupResponse.proto"
    rDS
    (Proxy :: Proxy DeleteDBParameterGroup)

testDescribeDBSecurityGroupsResponse :: DescribeDBSecurityGroupsResponse -> TestTree
testDescribeDBSecurityGroupsResponse = res
    "DescribeDBSecurityGroupsResponse"
    "fixture/DescribeDBSecurityGroupsResponse.proto"
    rDS
    (Proxy :: Proxy DescribeDBSecurityGroups)
