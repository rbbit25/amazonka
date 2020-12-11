{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.DMS
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.AWS.Gen.DMS where

import Data.Proxy
import Network.AWS.DMS
import Test.AWS.DMS.Internal
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
--         [ requestDeleteReplicationInstance $
--             mkDeleteReplicationInstance
--
--         , requestRebootReplicationInstance $
--             mkRebootReplicationInstance
--
--         , requestReloadTables $
--             mkReloadTables
--
--         , requestStartReplicationTaskAssessment $
--             mkStartReplicationTaskAssessment
--
--         , requestDeleteReplicationTaskAssessmentRun $
--             mkDeleteReplicationTaskAssessmentRun
--
--         , requestCreateEndpoint $
--             mkCreateEndpoint
--
--         , requestDescribeSchemas $
--             mkDescribeSchemas
--
--         , requestDeleteConnection $
--             mkDeleteConnection
--
--         , requestModifyEventSubscription $
--             mkModifyEventSubscription
--
--         , requestDescribeReplicationInstanceTaskLogs $
--             mkDescribeReplicationInstanceTaskLogs
--
--         , requestDescribeEvents $
--             mkDescribeEvents
--
--         , requestDeleteEndpoint $
--             mkDeleteEndpoint
--
--         , requestListTagsForResource $
--             mkListTagsForResource
--
--         , requestDescribeEndpointTypes $
--             mkDescribeEndpointTypes
--
--         , requestDeleteReplicationTask $
--             mkDeleteReplicationTask
--
--         , requestDescribeReplicationTaskAssessmentRuns $
--             mkDescribeReplicationTaskAssessmentRuns
--
--         , requestDescribeReplicationTaskAssessmentResults $
--             mkDescribeReplicationTaskAssessmentResults
--
--         , requestTestConnection $
--             mkTestConnection
--
--         , requestDescribeConnections $
--             mkDescribeConnections
--
--         , requestMoveReplicationTask $
--             mkMoveReplicationTask
--
--         , requestRemoveTagsFromResource $
--             mkRemoveTagsFromResource
--
--         , requestModifyEndpoint $
--             mkModifyEndpoint
--
--         , requestCreateEventSubscription $
--             mkCreateEventSubscription
--
--         , requestDescribeCertificates $
--             mkDescribeCertificates
--
--         , requestStartReplicationTaskAssessmentRun $
--             mkStartReplicationTaskAssessmentRun
--
--         , requestDeleteEventSubscription $
--             mkDeleteEventSubscription
--
--         , requestDescribeTableStatistics $
--             mkDescribeTableStatistics
--
--         , requestDescribeReplicationSubnetGroups $
--             mkDescribeReplicationSubnetGroups
--
--         , requestStartReplicationTask $
--             mkStartReplicationTask
--
--         , requestDescribeEventSubscriptions $
--             mkDescribeEventSubscriptions
--
--         , requestAddTagsToResource $
--             mkAddTagsToResource
--
--         , requestCreateReplicationSubnetGroup $
--             mkCreateReplicationSubnetGroup
--
--         , requestDescribeApplicableIndividualAssessments $
--             mkDescribeApplicableIndividualAssessments
--
--         , requestDeleteCertificate $
--             mkDeleteCertificate
--
--         , requestRefreshSchemas $
--             mkRefreshSchemas
--
--         , requestDescribeReplicationTasks $
--             mkDescribeReplicationTasks
--
--         , requestDescribeEventCategories $
--             mkDescribeEventCategories
--
--         , requestDescribeOrderableReplicationInstances $
--             mkDescribeOrderableReplicationInstances
--
--         , requestDescribePendingMaintenanceActions $
--             mkDescribePendingMaintenanceActions
--
--         , requestCreateReplicationTask $
--             mkCreateReplicationTask
--
--         , requestDescribeEndpoints $
--             mkDescribeEndpoints
--
--         , requestModifyReplicationInstance $
--             mkModifyReplicationInstance
--
--         , requestImportCertificate $
--             mkImportCertificate
--
--         , requestCancelReplicationTaskAssessmentRun $
--             mkCancelReplicationTaskAssessmentRun
--
--         , requestModifyReplicationSubnetGroup $
--             mkModifyReplicationSubnetGroup
--
--         , requestDescribeReplicationTaskIndividualAssessments $
--             mkDescribeReplicationTaskIndividualAssessments
--
--         , requestApplyPendingMaintenanceAction $
--             mkApplyPendingMaintenanceAction
--
--         , requestDescribeAccountAttributes $
--             mkDescribeAccountAttributes
--
--         , requestDescribeReplicationInstances $
--             mkDescribeReplicationInstances
--
--         , requestDescribeRefreshSchemasStatus $
--             mkDescribeRefreshSchemasStatus
--
--         , requestStopReplicationTask $
--             mkStopReplicationTask
--
--         , requestModifyReplicationTask $
--             mkModifyReplicationTask
--
--         , requestCreateReplicationInstance $
--             mkCreateReplicationInstance
--
--         , requestDeleteReplicationSubnetGroup $
--             mkDeleteReplicationSubnetGroup
--
--           ]

--     , testGroup "response"
--         [ responseDeleteReplicationInstance $
--             mkDeleteReplicationInstanceResponse
--
--         , responseRebootReplicationInstance $
--             mkRebootReplicationInstanceResponse
--
--         , responseReloadTables $
--             mkReloadTablesResponse
--
--         , responseStartReplicationTaskAssessment $
--             mkStartReplicationTaskAssessmentResponse
--
--         , responseDeleteReplicationTaskAssessmentRun $
--             mkDeleteReplicationTaskAssessmentRunResponse
--
--         , responseCreateEndpoint $
--             mkCreateEndpointResponse
--
--         , responseDescribeSchemas $
--             mkDescribeSchemasResponse
--
--         , responseDeleteConnection $
--             mkDeleteConnectionResponse
--
--         , responseModifyEventSubscription $
--             mkModifyEventSubscriptionResponse
--
--         , responseDescribeReplicationInstanceTaskLogs $
--             mkDescribeReplicationInstanceTaskLogsResponse
--
--         , responseDescribeEvents $
--             mkDescribeEventsResponse
--
--         , responseDeleteEndpoint $
--             mkDeleteEndpointResponse
--
--         , responseListTagsForResource $
--             mkListTagsForResourceResponse
--
--         , responseDescribeEndpointTypes $
--             mkDescribeEndpointTypesResponse
--
--         , responseDeleteReplicationTask $
--             mkDeleteReplicationTaskResponse
--
--         , responseDescribeReplicationTaskAssessmentRuns $
--             mkDescribeReplicationTaskAssessmentRunsResponse
--
--         , responseDescribeReplicationTaskAssessmentResults $
--             mkDescribeReplicationTaskAssessmentResultsResponse
--
--         , responseTestConnection $
--             mkTestConnectionResponse
--
--         , responseDescribeConnections $
--             mkDescribeConnectionsResponse
--
--         , responseMoveReplicationTask $
--             mkMoveReplicationTaskResponse
--
--         , responseRemoveTagsFromResource $
--             mkRemoveTagsFromResourceResponse
--
--         , responseModifyEndpoint $
--             mkModifyEndpointResponse
--
--         , responseCreateEventSubscription $
--             mkCreateEventSubscriptionResponse
--
--         , responseDescribeCertificates $
--             mkDescribeCertificatesResponse
--
--         , responseStartReplicationTaskAssessmentRun $
--             mkStartReplicationTaskAssessmentRunResponse
--
--         , responseDeleteEventSubscription $
--             mkDeleteEventSubscriptionResponse
--
--         , responseDescribeTableStatistics $
--             mkDescribeTableStatisticsResponse
--
--         , responseDescribeReplicationSubnetGroups $
--             mkDescribeReplicationSubnetGroupsResponse
--
--         , responseStartReplicationTask $
--             mkStartReplicationTaskResponse
--
--         , responseDescribeEventSubscriptions $
--             mkDescribeEventSubscriptionsResponse
--
--         , responseAddTagsToResource $
--             mkAddTagsToResourceResponse
--
--         , responseCreateReplicationSubnetGroup $
--             mkCreateReplicationSubnetGroupResponse
--
--         , responseDescribeApplicableIndividualAssessments $
--             mkDescribeApplicableIndividualAssessmentsResponse
--
--         , responseDeleteCertificate $
--             mkDeleteCertificateResponse
--
--         , responseRefreshSchemas $
--             mkRefreshSchemasResponse
--
--         , responseDescribeReplicationTasks $
--             mkDescribeReplicationTasksResponse
--
--         , responseDescribeEventCategories $
--             mkDescribeEventCategoriesResponse
--
--         , responseDescribeOrderableReplicationInstances $
--             mkDescribeOrderableReplicationInstancesResponse
--
--         , responseDescribePendingMaintenanceActions $
--             mkDescribePendingMaintenanceActionsResponse
--
--         , responseCreateReplicationTask $
--             mkCreateReplicationTaskResponse
--
--         , responseDescribeEndpoints $
--             mkDescribeEndpointsResponse
--
--         , responseModifyReplicationInstance $
--             mkModifyReplicationInstanceResponse
--
--         , responseImportCertificate $
--             mkImportCertificateResponse
--
--         , responseCancelReplicationTaskAssessmentRun $
--             mkCancelReplicationTaskAssessmentRunResponse
--
--         , responseModifyReplicationSubnetGroup $
--             mkModifyReplicationSubnetGroupResponse
--
--         , responseDescribeReplicationTaskIndividualAssessments $
--             mkDescribeReplicationTaskIndividualAssessmentsResponse
--
--         , responseApplyPendingMaintenanceAction $
--             mkApplyPendingMaintenanceActionResponse
--
--         , responseDescribeAccountAttributes $
--             mkDescribeAccountAttributesResponse
--
--         , responseDescribeReplicationInstances $
--             mkDescribeReplicationInstancesResponse
--
--         , responseDescribeRefreshSchemasStatus $
--             mkDescribeRefreshSchemasStatusResponse
--
--         , responseStopReplicationTask $
--             mkStopReplicationTaskResponse
--
--         , responseModifyReplicationTask $
--             mkModifyReplicationTaskResponse
--
--         , responseCreateReplicationInstance $
--             mkCreateReplicationInstanceResponse
--
--         , responseDeleteReplicationSubnetGroup $
--             mkDeleteReplicationSubnetGroupResponse
--
--           ]
--     ]

-- Requests

requestDeleteReplicationInstance :: DeleteReplicationInstance -> TestTree
requestDeleteReplicationInstance =
  req
    "DeleteReplicationInstance"
    "fixture/DeleteReplicationInstance.yaml"

requestRebootReplicationInstance :: RebootReplicationInstance -> TestTree
requestRebootReplicationInstance =
  req
    "RebootReplicationInstance"
    "fixture/RebootReplicationInstance.yaml"

requestReloadTables :: ReloadTables -> TestTree
requestReloadTables =
  req
    "ReloadTables"
    "fixture/ReloadTables.yaml"

requestStartReplicationTaskAssessment :: StartReplicationTaskAssessment -> TestTree
requestStartReplicationTaskAssessment =
  req
    "StartReplicationTaskAssessment"
    "fixture/StartReplicationTaskAssessment.yaml"

requestDeleteReplicationTaskAssessmentRun :: DeleteReplicationTaskAssessmentRun -> TestTree
requestDeleteReplicationTaskAssessmentRun =
  req
    "DeleteReplicationTaskAssessmentRun"
    "fixture/DeleteReplicationTaskAssessmentRun.yaml"

requestCreateEndpoint :: CreateEndpoint -> TestTree
requestCreateEndpoint =
  req
    "CreateEndpoint"
    "fixture/CreateEndpoint.yaml"

requestDescribeSchemas :: DescribeSchemas -> TestTree
requestDescribeSchemas =
  req
    "DescribeSchemas"
    "fixture/DescribeSchemas.yaml"

requestDeleteConnection :: DeleteConnection -> TestTree
requestDeleteConnection =
  req
    "DeleteConnection"
    "fixture/DeleteConnection.yaml"

requestModifyEventSubscription :: ModifyEventSubscription -> TestTree
requestModifyEventSubscription =
  req
    "ModifyEventSubscription"
    "fixture/ModifyEventSubscription.yaml"

requestDescribeReplicationInstanceTaskLogs :: DescribeReplicationInstanceTaskLogs -> TestTree
requestDescribeReplicationInstanceTaskLogs =
  req
    "DescribeReplicationInstanceTaskLogs"
    "fixture/DescribeReplicationInstanceTaskLogs.yaml"

requestDescribeEvents :: DescribeEvents -> TestTree
requestDescribeEvents =
  req
    "DescribeEvents"
    "fixture/DescribeEvents.yaml"

requestDeleteEndpoint :: DeleteEndpoint -> TestTree
requestDeleteEndpoint =
  req
    "DeleteEndpoint"
    "fixture/DeleteEndpoint.yaml"

requestListTagsForResource :: ListTagsForResource -> TestTree
requestListTagsForResource =
  req
    "ListTagsForResource"
    "fixture/ListTagsForResource.yaml"

requestDescribeEndpointTypes :: DescribeEndpointTypes -> TestTree
requestDescribeEndpointTypes =
  req
    "DescribeEndpointTypes"
    "fixture/DescribeEndpointTypes.yaml"

requestDeleteReplicationTask :: DeleteReplicationTask -> TestTree
requestDeleteReplicationTask =
  req
    "DeleteReplicationTask"
    "fixture/DeleteReplicationTask.yaml"

requestDescribeReplicationTaskAssessmentRuns :: DescribeReplicationTaskAssessmentRuns -> TestTree
requestDescribeReplicationTaskAssessmentRuns =
  req
    "DescribeReplicationTaskAssessmentRuns"
    "fixture/DescribeReplicationTaskAssessmentRuns.yaml"

requestDescribeReplicationTaskAssessmentResults :: DescribeReplicationTaskAssessmentResults -> TestTree
requestDescribeReplicationTaskAssessmentResults =
  req
    "DescribeReplicationTaskAssessmentResults"
    "fixture/DescribeReplicationTaskAssessmentResults.yaml"

requestTestConnection :: TestConnection -> TestTree
requestTestConnection =
  req
    "TestConnection"
    "fixture/TestConnection.yaml"

requestDescribeConnections :: DescribeConnections -> TestTree
requestDescribeConnections =
  req
    "DescribeConnections"
    "fixture/DescribeConnections.yaml"

requestMoveReplicationTask :: MoveReplicationTask -> TestTree
requestMoveReplicationTask =
  req
    "MoveReplicationTask"
    "fixture/MoveReplicationTask.yaml"

requestRemoveTagsFromResource :: RemoveTagsFromResource -> TestTree
requestRemoveTagsFromResource =
  req
    "RemoveTagsFromResource"
    "fixture/RemoveTagsFromResource.yaml"

requestModifyEndpoint :: ModifyEndpoint -> TestTree
requestModifyEndpoint =
  req
    "ModifyEndpoint"
    "fixture/ModifyEndpoint.yaml"

requestCreateEventSubscription :: CreateEventSubscription -> TestTree
requestCreateEventSubscription =
  req
    "CreateEventSubscription"
    "fixture/CreateEventSubscription.yaml"

requestDescribeCertificates :: DescribeCertificates -> TestTree
requestDescribeCertificates =
  req
    "DescribeCertificates"
    "fixture/DescribeCertificates.yaml"

requestStartReplicationTaskAssessmentRun :: StartReplicationTaskAssessmentRun -> TestTree
requestStartReplicationTaskAssessmentRun =
  req
    "StartReplicationTaskAssessmentRun"
    "fixture/StartReplicationTaskAssessmentRun.yaml"

requestDeleteEventSubscription :: DeleteEventSubscription -> TestTree
requestDeleteEventSubscription =
  req
    "DeleteEventSubscription"
    "fixture/DeleteEventSubscription.yaml"

requestDescribeTableStatistics :: DescribeTableStatistics -> TestTree
requestDescribeTableStatistics =
  req
    "DescribeTableStatistics"
    "fixture/DescribeTableStatistics.yaml"

requestDescribeReplicationSubnetGroups :: DescribeReplicationSubnetGroups -> TestTree
requestDescribeReplicationSubnetGroups =
  req
    "DescribeReplicationSubnetGroups"
    "fixture/DescribeReplicationSubnetGroups.yaml"

requestStartReplicationTask :: StartReplicationTask -> TestTree
requestStartReplicationTask =
  req
    "StartReplicationTask"
    "fixture/StartReplicationTask.yaml"

requestDescribeEventSubscriptions :: DescribeEventSubscriptions -> TestTree
requestDescribeEventSubscriptions =
  req
    "DescribeEventSubscriptions"
    "fixture/DescribeEventSubscriptions.yaml"

requestAddTagsToResource :: AddTagsToResource -> TestTree
requestAddTagsToResource =
  req
    "AddTagsToResource"
    "fixture/AddTagsToResource.yaml"

requestCreateReplicationSubnetGroup :: CreateReplicationSubnetGroup -> TestTree
requestCreateReplicationSubnetGroup =
  req
    "CreateReplicationSubnetGroup"
    "fixture/CreateReplicationSubnetGroup.yaml"

requestDescribeApplicableIndividualAssessments :: DescribeApplicableIndividualAssessments -> TestTree
requestDescribeApplicableIndividualAssessments =
  req
    "DescribeApplicableIndividualAssessments"
    "fixture/DescribeApplicableIndividualAssessments.yaml"

requestDeleteCertificate :: DeleteCertificate -> TestTree
requestDeleteCertificate =
  req
    "DeleteCertificate"
    "fixture/DeleteCertificate.yaml"

requestRefreshSchemas :: RefreshSchemas -> TestTree
requestRefreshSchemas =
  req
    "RefreshSchemas"
    "fixture/RefreshSchemas.yaml"

requestDescribeReplicationTasks :: DescribeReplicationTasks -> TestTree
requestDescribeReplicationTasks =
  req
    "DescribeReplicationTasks"
    "fixture/DescribeReplicationTasks.yaml"

requestDescribeEventCategories :: DescribeEventCategories -> TestTree
requestDescribeEventCategories =
  req
    "DescribeEventCategories"
    "fixture/DescribeEventCategories.yaml"

requestDescribeOrderableReplicationInstances :: DescribeOrderableReplicationInstances -> TestTree
requestDescribeOrderableReplicationInstances =
  req
    "DescribeOrderableReplicationInstances"
    "fixture/DescribeOrderableReplicationInstances.yaml"

requestDescribePendingMaintenanceActions :: DescribePendingMaintenanceActions -> TestTree
requestDescribePendingMaintenanceActions =
  req
    "DescribePendingMaintenanceActions"
    "fixture/DescribePendingMaintenanceActions.yaml"

requestCreateReplicationTask :: CreateReplicationTask -> TestTree
requestCreateReplicationTask =
  req
    "CreateReplicationTask"
    "fixture/CreateReplicationTask.yaml"

requestDescribeEndpoints :: DescribeEndpoints -> TestTree
requestDescribeEndpoints =
  req
    "DescribeEndpoints"
    "fixture/DescribeEndpoints.yaml"

requestModifyReplicationInstance :: ModifyReplicationInstance -> TestTree
requestModifyReplicationInstance =
  req
    "ModifyReplicationInstance"
    "fixture/ModifyReplicationInstance.yaml"

requestImportCertificate :: ImportCertificate -> TestTree
requestImportCertificate =
  req
    "ImportCertificate"
    "fixture/ImportCertificate.yaml"

requestCancelReplicationTaskAssessmentRun :: CancelReplicationTaskAssessmentRun -> TestTree
requestCancelReplicationTaskAssessmentRun =
  req
    "CancelReplicationTaskAssessmentRun"
    "fixture/CancelReplicationTaskAssessmentRun.yaml"

requestModifyReplicationSubnetGroup :: ModifyReplicationSubnetGroup -> TestTree
requestModifyReplicationSubnetGroup =
  req
    "ModifyReplicationSubnetGroup"
    "fixture/ModifyReplicationSubnetGroup.yaml"

requestDescribeReplicationTaskIndividualAssessments :: DescribeReplicationTaskIndividualAssessments -> TestTree
requestDescribeReplicationTaskIndividualAssessments =
  req
    "DescribeReplicationTaskIndividualAssessments"
    "fixture/DescribeReplicationTaskIndividualAssessments.yaml"

requestApplyPendingMaintenanceAction :: ApplyPendingMaintenanceAction -> TestTree
requestApplyPendingMaintenanceAction =
  req
    "ApplyPendingMaintenanceAction"
    "fixture/ApplyPendingMaintenanceAction.yaml"

requestDescribeAccountAttributes :: DescribeAccountAttributes -> TestTree
requestDescribeAccountAttributes =
  req
    "DescribeAccountAttributes"
    "fixture/DescribeAccountAttributes.yaml"

requestDescribeReplicationInstances :: DescribeReplicationInstances -> TestTree
requestDescribeReplicationInstances =
  req
    "DescribeReplicationInstances"
    "fixture/DescribeReplicationInstances.yaml"

requestDescribeRefreshSchemasStatus :: DescribeRefreshSchemasStatus -> TestTree
requestDescribeRefreshSchemasStatus =
  req
    "DescribeRefreshSchemasStatus"
    "fixture/DescribeRefreshSchemasStatus.yaml"

requestStopReplicationTask :: StopReplicationTask -> TestTree
requestStopReplicationTask =
  req
    "StopReplicationTask"
    "fixture/StopReplicationTask.yaml"

requestModifyReplicationTask :: ModifyReplicationTask -> TestTree
requestModifyReplicationTask =
  req
    "ModifyReplicationTask"
    "fixture/ModifyReplicationTask.yaml"

requestCreateReplicationInstance :: CreateReplicationInstance -> TestTree
requestCreateReplicationInstance =
  req
    "CreateReplicationInstance"
    "fixture/CreateReplicationInstance.yaml"

requestDeleteReplicationSubnetGroup :: DeleteReplicationSubnetGroup -> TestTree
requestDeleteReplicationSubnetGroup =
  req
    "DeleteReplicationSubnetGroup"
    "fixture/DeleteReplicationSubnetGroup.yaml"

-- Responses

responseDeleteReplicationInstance :: DeleteReplicationInstanceResponse -> TestTree
responseDeleteReplicationInstance =
  res
    "DeleteReplicationInstanceResponse"
    "fixture/DeleteReplicationInstanceResponse.proto"
    dmsService
    (Proxy :: Proxy DeleteReplicationInstance)

responseRebootReplicationInstance :: RebootReplicationInstanceResponse -> TestTree
responseRebootReplicationInstance =
  res
    "RebootReplicationInstanceResponse"
    "fixture/RebootReplicationInstanceResponse.proto"
    dmsService
    (Proxy :: Proxy RebootReplicationInstance)

responseReloadTables :: ReloadTablesResponse -> TestTree
responseReloadTables =
  res
    "ReloadTablesResponse"
    "fixture/ReloadTablesResponse.proto"
    dmsService
    (Proxy :: Proxy ReloadTables)

responseStartReplicationTaskAssessment :: StartReplicationTaskAssessmentResponse -> TestTree
responseStartReplicationTaskAssessment =
  res
    "StartReplicationTaskAssessmentResponse"
    "fixture/StartReplicationTaskAssessmentResponse.proto"
    dmsService
    (Proxy :: Proxy StartReplicationTaskAssessment)

responseDeleteReplicationTaskAssessmentRun :: DeleteReplicationTaskAssessmentRunResponse -> TestTree
responseDeleteReplicationTaskAssessmentRun =
  res
    "DeleteReplicationTaskAssessmentRunResponse"
    "fixture/DeleteReplicationTaskAssessmentRunResponse.proto"
    dmsService
    (Proxy :: Proxy DeleteReplicationTaskAssessmentRun)

responseCreateEndpoint :: CreateEndpointResponse -> TestTree
responseCreateEndpoint =
  res
    "CreateEndpointResponse"
    "fixture/CreateEndpointResponse.proto"
    dmsService
    (Proxy :: Proxy CreateEndpoint)

responseDescribeSchemas :: DescribeSchemasResponse -> TestTree
responseDescribeSchemas =
  res
    "DescribeSchemasResponse"
    "fixture/DescribeSchemasResponse.proto"
    dmsService
    (Proxy :: Proxy DescribeSchemas)

responseDeleteConnection :: DeleteConnectionResponse -> TestTree
responseDeleteConnection =
  res
    "DeleteConnectionResponse"
    "fixture/DeleteConnectionResponse.proto"
    dmsService
    (Proxy :: Proxy DeleteConnection)

responseModifyEventSubscription :: ModifyEventSubscriptionResponse -> TestTree
responseModifyEventSubscription =
  res
    "ModifyEventSubscriptionResponse"
    "fixture/ModifyEventSubscriptionResponse.proto"
    dmsService
    (Proxy :: Proxy ModifyEventSubscription)

responseDescribeReplicationInstanceTaskLogs :: DescribeReplicationInstanceTaskLogsResponse -> TestTree
responseDescribeReplicationInstanceTaskLogs =
  res
    "DescribeReplicationInstanceTaskLogsResponse"
    "fixture/DescribeReplicationInstanceTaskLogsResponse.proto"
    dmsService
    (Proxy :: Proxy DescribeReplicationInstanceTaskLogs)

responseDescribeEvents :: DescribeEventsResponse -> TestTree
responseDescribeEvents =
  res
    "DescribeEventsResponse"
    "fixture/DescribeEventsResponse.proto"
    dmsService
    (Proxy :: Proxy DescribeEvents)

responseDeleteEndpoint :: DeleteEndpointResponse -> TestTree
responseDeleteEndpoint =
  res
    "DeleteEndpointResponse"
    "fixture/DeleteEndpointResponse.proto"
    dmsService
    (Proxy :: Proxy DeleteEndpoint)

responseListTagsForResource :: ListTagsForResourceResponse -> TestTree
responseListTagsForResource =
  res
    "ListTagsForResourceResponse"
    "fixture/ListTagsForResourceResponse.proto"
    dmsService
    (Proxy :: Proxy ListTagsForResource)

responseDescribeEndpointTypes :: DescribeEndpointTypesResponse -> TestTree
responseDescribeEndpointTypes =
  res
    "DescribeEndpointTypesResponse"
    "fixture/DescribeEndpointTypesResponse.proto"
    dmsService
    (Proxy :: Proxy DescribeEndpointTypes)

responseDeleteReplicationTask :: DeleteReplicationTaskResponse -> TestTree
responseDeleteReplicationTask =
  res
    "DeleteReplicationTaskResponse"
    "fixture/DeleteReplicationTaskResponse.proto"
    dmsService
    (Proxy :: Proxy DeleteReplicationTask)

responseDescribeReplicationTaskAssessmentRuns :: DescribeReplicationTaskAssessmentRunsResponse -> TestTree
responseDescribeReplicationTaskAssessmentRuns =
  res
    "DescribeReplicationTaskAssessmentRunsResponse"
    "fixture/DescribeReplicationTaskAssessmentRunsResponse.proto"
    dmsService
    (Proxy :: Proxy DescribeReplicationTaskAssessmentRuns)

responseDescribeReplicationTaskAssessmentResults :: DescribeReplicationTaskAssessmentResultsResponse -> TestTree
responseDescribeReplicationTaskAssessmentResults =
  res
    "DescribeReplicationTaskAssessmentResultsResponse"
    "fixture/DescribeReplicationTaskAssessmentResultsResponse.proto"
    dmsService
    (Proxy :: Proxy DescribeReplicationTaskAssessmentResults)

responseTestConnection :: TestConnectionResponse -> TestTree
responseTestConnection =
  res
    "TestConnectionResponse"
    "fixture/TestConnectionResponse.proto"
    dmsService
    (Proxy :: Proxy TestConnection)

responseDescribeConnections :: DescribeConnectionsResponse -> TestTree
responseDescribeConnections =
  res
    "DescribeConnectionsResponse"
    "fixture/DescribeConnectionsResponse.proto"
    dmsService
    (Proxy :: Proxy DescribeConnections)

responseMoveReplicationTask :: MoveReplicationTaskResponse -> TestTree
responseMoveReplicationTask =
  res
    "MoveReplicationTaskResponse"
    "fixture/MoveReplicationTaskResponse.proto"
    dmsService
    (Proxy :: Proxy MoveReplicationTask)

responseRemoveTagsFromResource :: RemoveTagsFromResourceResponse -> TestTree
responseRemoveTagsFromResource =
  res
    "RemoveTagsFromResourceResponse"
    "fixture/RemoveTagsFromResourceResponse.proto"
    dmsService
    (Proxy :: Proxy RemoveTagsFromResource)

responseModifyEndpoint :: ModifyEndpointResponse -> TestTree
responseModifyEndpoint =
  res
    "ModifyEndpointResponse"
    "fixture/ModifyEndpointResponse.proto"
    dmsService
    (Proxy :: Proxy ModifyEndpoint)

responseCreateEventSubscription :: CreateEventSubscriptionResponse -> TestTree
responseCreateEventSubscription =
  res
    "CreateEventSubscriptionResponse"
    "fixture/CreateEventSubscriptionResponse.proto"
    dmsService
    (Proxy :: Proxy CreateEventSubscription)

responseDescribeCertificates :: DescribeCertificatesResponse -> TestTree
responseDescribeCertificates =
  res
    "DescribeCertificatesResponse"
    "fixture/DescribeCertificatesResponse.proto"
    dmsService
    (Proxy :: Proxy DescribeCertificates)

responseStartReplicationTaskAssessmentRun :: StartReplicationTaskAssessmentRunResponse -> TestTree
responseStartReplicationTaskAssessmentRun =
  res
    "StartReplicationTaskAssessmentRunResponse"
    "fixture/StartReplicationTaskAssessmentRunResponse.proto"
    dmsService
    (Proxy :: Proxy StartReplicationTaskAssessmentRun)

responseDeleteEventSubscription :: DeleteEventSubscriptionResponse -> TestTree
responseDeleteEventSubscription =
  res
    "DeleteEventSubscriptionResponse"
    "fixture/DeleteEventSubscriptionResponse.proto"
    dmsService
    (Proxy :: Proxy DeleteEventSubscription)

responseDescribeTableStatistics :: DescribeTableStatisticsResponse -> TestTree
responseDescribeTableStatistics =
  res
    "DescribeTableStatisticsResponse"
    "fixture/DescribeTableStatisticsResponse.proto"
    dmsService
    (Proxy :: Proxy DescribeTableStatistics)

responseDescribeReplicationSubnetGroups :: DescribeReplicationSubnetGroupsResponse -> TestTree
responseDescribeReplicationSubnetGroups =
  res
    "DescribeReplicationSubnetGroupsResponse"
    "fixture/DescribeReplicationSubnetGroupsResponse.proto"
    dmsService
    (Proxy :: Proxy DescribeReplicationSubnetGroups)

responseStartReplicationTask :: StartReplicationTaskResponse -> TestTree
responseStartReplicationTask =
  res
    "StartReplicationTaskResponse"
    "fixture/StartReplicationTaskResponse.proto"
    dmsService
    (Proxy :: Proxy StartReplicationTask)

responseDescribeEventSubscriptions :: DescribeEventSubscriptionsResponse -> TestTree
responseDescribeEventSubscriptions =
  res
    "DescribeEventSubscriptionsResponse"
    "fixture/DescribeEventSubscriptionsResponse.proto"
    dmsService
    (Proxy :: Proxy DescribeEventSubscriptions)

responseAddTagsToResource :: AddTagsToResourceResponse -> TestTree
responseAddTagsToResource =
  res
    "AddTagsToResourceResponse"
    "fixture/AddTagsToResourceResponse.proto"
    dmsService
    (Proxy :: Proxy AddTagsToResource)

responseCreateReplicationSubnetGroup :: CreateReplicationSubnetGroupResponse -> TestTree
responseCreateReplicationSubnetGroup =
  res
    "CreateReplicationSubnetGroupResponse"
    "fixture/CreateReplicationSubnetGroupResponse.proto"
    dmsService
    (Proxy :: Proxy CreateReplicationSubnetGroup)

responseDescribeApplicableIndividualAssessments :: DescribeApplicableIndividualAssessmentsResponse -> TestTree
responseDescribeApplicableIndividualAssessments =
  res
    "DescribeApplicableIndividualAssessmentsResponse"
    "fixture/DescribeApplicableIndividualAssessmentsResponse.proto"
    dmsService
    (Proxy :: Proxy DescribeApplicableIndividualAssessments)

responseDeleteCertificate :: DeleteCertificateResponse -> TestTree
responseDeleteCertificate =
  res
    "DeleteCertificateResponse"
    "fixture/DeleteCertificateResponse.proto"
    dmsService
    (Proxy :: Proxy DeleteCertificate)

responseRefreshSchemas :: RefreshSchemasResponse -> TestTree
responseRefreshSchemas =
  res
    "RefreshSchemasResponse"
    "fixture/RefreshSchemasResponse.proto"
    dmsService
    (Proxy :: Proxy RefreshSchemas)

responseDescribeReplicationTasks :: DescribeReplicationTasksResponse -> TestTree
responseDescribeReplicationTasks =
  res
    "DescribeReplicationTasksResponse"
    "fixture/DescribeReplicationTasksResponse.proto"
    dmsService
    (Proxy :: Proxy DescribeReplicationTasks)

responseDescribeEventCategories :: DescribeEventCategoriesResponse -> TestTree
responseDescribeEventCategories =
  res
    "DescribeEventCategoriesResponse"
    "fixture/DescribeEventCategoriesResponse.proto"
    dmsService
    (Proxy :: Proxy DescribeEventCategories)

responseDescribeOrderableReplicationInstances :: DescribeOrderableReplicationInstancesResponse -> TestTree
responseDescribeOrderableReplicationInstances =
  res
    "DescribeOrderableReplicationInstancesResponse"
    "fixture/DescribeOrderableReplicationInstancesResponse.proto"
    dmsService
    (Proxy :: Proxy DescribeOrderableReplicationInstances)

responseDescribePendingMaintenanceActions :: DescribePendingMaintenanceActionsResponse -> TestTree
responseDescribePendingMaintenanceActions =
  res
    "DescribePendingMaintenanceActionsResponse"
    "fixture/DescribePendingMaintenanceActionsResponse.proto"
    dmsService
    (Proxy :: Proxy DescribePendingMaintenanceActions)

responseCreateReplicationTask :: CreateReplicationTaskResponse -> TestTree
responseCreateReplicationTask =
  res
    "CreateReplicationTaskResponse"
    "fixture/CreateReplicationTaskResponse.proto"
    dmsService
    (Proxy :: Proxy CreateReplicationTask)

responseDescribeEndpoints :: DescribeEndpointsResponse -> TestTree
responseDescribeEndpoints =
  res
    "DescribeEndpointsResponse"
    "fixture/DescribeEndpointsResponse.proto"
    dmsService
    (Proxy :: Proxy DescribeEndpoints)

responseModifyReplicationInstance :: ModifyReplicationInstanceResponse -> TestTree
responseModifyReplicationInstance =
  res
    "ModifyReplicationInstanceResponse"
    "fixture/ModifyReplicationInstanceResponse.proto"
    dmsService
    (Proxy :: Proxy ModifyReplicationInstance)

responseImportCertificate :: ImportCertificateResponse -> TestTree
responseImportCertificate =
  res
    "ImportCertificateResponse"
    "fixture/ImportCertificateResponse.proto"
    dmsService
    (Proxy :: Proxy ImportCertificate)

responseCancelReplicationTaskAssessmentRun :: CancelReplicationTaskAssessmentRunResponse -> TestTree
responseCancelReplicationTaskAssessmentRun =
  res
    "CancelReplicationTaskAssessmentRunResponse"
    "fixture/CancelReplicationTaskAssessmentRunResponse.proto"
    dmsService
    (Proxy :: Proxy CancelReplicationTaskAssessmentRun)

responseModifyReplicationSubnetGroup :: ModifyReplicationSubnetGroupResponse -> TestTree
responseModifyReplicationSubnetGroup =
  res
    "ModifyReplicationSubnetGroupResponse"
    "fixture/ModifyReplicationSubnetGroupResponse.proto"
    dmsService
    (Proxy :: Proxy ModifyReplicationSubnetGroup)

responseDescribeReplicationTaskIndividualAssessments :: DescribeReplicationTaskIndividualAssessmentsResponse -> TestTree
responseDescribeReplicationTaskIndividualAssessments =
  res
    "DescribeReplicationTaskIndividualAssessmentsResponse"
    "fixture/DescribeReplicationTaskIndividualAssessmentsResponse.proto"
    dmsService
    (Proxy :: Proxy DescribeReplicationTaskIndividualAssessments)

responseApplyPendingMaintenanceAction :: ApplyPendingMaintenanceActionResponse -> TestTree
responseApplyPendingMaintenanceAction =
  res
    "ApplyPendingMaintenanceActionResponse"
    "fixture/ApplyPendingMaintenanceActionResponse.proto"
    dmsService
    (Proxy :: Proxy ApplyPendingMaintenanceAction)

responseDescribeAccountAttributes :: DescribeAccountAttributesResponse -> TestTree
responseDescribeAccountAttributes =
  res
    "DescribeAccountAttributesResponse"
    "fixture/DescribeAccountAttributesResponse.proto"
    dmsService
    (Proxy :: Proxy DescribeAccountAttributes)

responseDescribeReplicationInstances :: DescribeReplicationInstancesResponse -> TestTree
responseDescribeReplicationInstances =
  res
    "DescribeReplicationInstancesResponse"
    "fixture/DescribeReplicationInstancesResponse.proto"
    dmsService
    (Proxy :: Proxy DescribeReplicationInstances)

responseDescribeRefreshSchemasStatus :: DescribeRefreshSchemasStatusResponse -> TestTree
responseDescribeRefreshSchemasStatus =
  res
    "DescribeRefreshSchemasStatusResponse"
    "fixture/DescribeRefreshSchemasStatusResponse.proto"
    dmsService
    (Proxy :: Proxy DescribeRefreshSchemasStatus)

responseStopReplicationTask :: StopReplicationTaskResponse -> TestTree
responseStopReplicationTask =
  res
    "StopReplicationTaskResponse"
    "fixture/StopReplicationTaskResponse.proto"
    dmsService
    (Proxy :: Proxy StopReplicationTask)

responseModifyReplicationTask :: ModifyReplicationTaskResponse -> TestTree
responseModifyReplicationTask =
  res
    "ModifyReplicationTaskResponse"
    "fixture/ModifyReplicationTaskResponse.proto"
    dmsService
    (Proxy :: Proxy ModifyReplicationTask)

responseCreateReplicationInstance :: CreateReplicationInstanceResponse -> TestTree
responseCreateReplicationInstance =
  res
    "CreateReplicationInstanceResponse"
    "fixture/CreateReplicationInstanceResponse.proto"
    dmsService
    (Proxy :: Proxy CreateReplicationInstance)

responseDeleteReplicationSubnetGroup :: DeleteReplicationSubnetGroupResponse -> TestTree
responseDeleteReplicationSubnetGroup =
  res
    "DeleteReplicationSubnetGroupResponse"
    "fixture/DeleteReplicationSubnetGroupResponse.proto"
    dmsService
    (Proxy :: Proxy DeleteReplicationSubnetGroup)