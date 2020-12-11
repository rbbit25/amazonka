{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.Inspector
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.AWS.Gen.Inspector where

import Data.Proxy
import Network.AWS.Inspector
import Test.AWS.Fixture
import Test.AWS.Inspector.Internal
import Test.AWS.Prelude
import Test.Tasty

-- Auto-generated: the actual test selection needs to be manually placed into
-- the top-level so that real test data can be incrementally added.
--
-- This commented snippet is what the entire set should look like:

-- fixtures :: TestTree
-- fixtures =
--     [ testGroup "request"
--         [ requestGetTelemetryMetadata $
--             mkGetTelemetryMetadata
--
--         , requestListFindings $
--             mkListFindings
--
--         , requestListAssessmentTemplates $
--             mkListAssessmentTemplates
--
--         , requestSubscribeToEvent $
--             mkSubscribeToEvent
--
--         , requestListAssessmentRunAgents $
--             mkListAssessmentRunAgents
--
--         , requestStartAssessmentRun $
--             mkStartAssessmentRun
--
--         , requestDeleteAssessmentTemplate $
--             mkDeleteAssessmentTemplate
--
--         , requestCreateAssessmentTemplate $
--             mkCreateAssessmentTemplate
--
--         , requestDescribeExclusions $
--             mkDescribeExclusions
--
--         , requestListTagsForResource $
--             mkListTagsForResource
--
--         , requestSetTagsForResource $
--             mkSetTagsForResource
--
--         , requestDescribeCrossAccountAccessRole $
--             mkDescribeCrossAccountAccessRole
--
--         , requestDescribeAssessmentTemplates $
--             mkDescribeAssessmentTemplates
--
--         , requestDescribeResourceGroups $
--             mkDescribeResourceGroups
--
--         , requestCreateAssessmentTarget $
--             mkCreateAssessmentTarget
--
--         , requestGetExclusionsPreview $
--             mkGetExclusionsPreview
--
--         , requestListEventSubscriptions $
--             mkListEventSubscriptions
--
--         , requestRegisterCrossAccountAccessRole $
--             mkRegisterCrossAccountAccessRole
--
--         , requestListAssessmentTargets $
--             mkListAssessmentTargets
--
--         , requestCreateExclusionsPreview $
--             mkCreateExclusionsPreview
--
--         , requestCreateResourceGroup $
--             mkCreateResourceGroup
--
--         , requestDescribeRulesPackages $
--             mkDescribeRulesPackages
--
--         , requestStopAssessmentRun $
--             mkStopAssessmentRun
--
--         , requestListExclusions $
--             mkListExclusions
--
--         , requestPreviewAgents $
--             mkPreviewAgents
--
--         , requestDescribeFindings $
--             mkDescribeFindings
--
--         , requestAddAttributesToFindings $
--             mkAddAttributesToFindings
--
--         , requestUpdateAssessmentTarget $
--             mkUpdateAssessmentTarget
--
--         , requestDeleteAssessmentTarget $
--             mkDeleteAssessmentTarget
--
--         , requestDeleteAssessmentRun $
--             mkDeleteAssessmentRun
--
--         , requestListAssessmentRuns $
--             mkListAssessmentRuns
--
--         , requestGetAssessmentReport $
--             mkGetAssessmentReport
--
--         , requestListRulesPackages $
--             mkListRulesPackages
--
--         , requestDescribeAssessmentRuns $
--             mkDescribeAssessmentRuns
--
--         , requestUnsubscribeFromEvent $
--             mkUnsubscribeFromEvent
--
--         , requestRemoveAttributesFromFindings $
--             mkRemoveAttributesFromFindings
--
--         , requestDescribeAssessmentTargets $
--             mkDescribeAssessmentTargets
--
--           ]

--     , testGroup "response"
--         [ responseGetTelemetryMetadata $
--             mkGetTelemetryMetadataResponse
--
--         , responseListFindings $
--             mkListFindingsResponse
--
--         , responseListAssessmentTemplates $
--             mkListAssessmentTemplatesResponse
--
--         , responseSubscribeToEvent $
--             mkSubscribeToEventResponse
--
--         , responseListAssessmentRunAgents $
--             mkListAssessmentRunAgentsResponse
--
--         , responseStartAssessmentRun $
--             mkStartAssessmentRunResponse
--
--         , responseDeleteAssessmentTemplate $
--             mkDeleteAssessmentTemplateResponse
--
--         , responseCreateAssessmentTemplate $
--             mkCreateAssessmentTemplateResponse
--
--         , responseDescribeExclusions $
--             mkDescribeExclusionsResponse
--
--         , responseListTagsForResource $
--             mkListTagsForResourceResponse
--
--         , responseSetTagsForResource $
--             mkSetTagsForResourceResponse
--
--         , responseDescribeCrossAccountAccessRole $
--             mkDescribeCrossAccountAccessRoleResponse
--
--         , responseDescribeAssessmentTemplates $
--             mkDescribeAssessmentTemplatesResponse
--
--         , responseDescribeResourceGroups $
--             mkDescribeResourceGroupsResponse
--
--         , responseCreateAssessmentTarget $
--             mkCreateAssessmentTargetResponse
--
--         , responseGetExclusionsPreview $
--             mkGetExclusionsPreviewResponse
--
--         , responseListEventSubscriptions $
--             mkListEventSubscriptionsResponse
--
--         , responseRegisterCrossAccountAccessRole $
--             mkRegisterCrossAccountAccessRoleResponse
--
--         , responseListAssessmentTargets $
--             mkListAssessmentTargetsResponse
--
--         , responseCreateExclusionsPreview $
--             mkCreateExclusionsPreviewResponse
--
--         , responseCreateResourceGroup $
--             mkCreateResourceGroupResponse
--
--         , responseDescribeRulesPackages $
--             mkDescribeRulesPackagesResponse
--
--         , responseStopAssessmentRun $
--             mkStopAssessmentRunResponse
--
--         , responseListExclusions $
--             mkListExclusionsResponse
--
--         , responsePreviewAgents $
--             mkPreviewAgentsResponse
--
--         , responseDescribeFindings $
--             mkDescribeFindingsResponse
--
--         , responseAddAttributesToFindings $
--             mkAddAttributesToFindingsResponse
--
--         , responseUpdateAssessmentTarget $
--             mkUpdateAssessmentTargetResponse
--
--         , responseDeleteAssessmentTarget $
--             mkDeleteAssessmentTargetResponse
--
--         , responseDeleteAssessmentRun $
--             mkDeleteAssessmentRunResponse
--
--         , responseListAssessmentRuns $
--             mkListAssessmentRunsResponse
--
--         , responseGetAssessmentReport $
--             mkGetAssessmentReportResponse
--
--         , responseListRulesPackages $
--             mkListRulesPackagesResponse
--
--         , responseDescribeAssessmentRuns $
--             mkDescribeAssessmentRunsResponse
--
--         , responseUnsubscribeFromEvent $
--             mkUnsubscribeFromEventResponse
--
--         , responseRemoveAttributesFromFindings $
--             mkRemoveAttributesFromFindingsResponse
--
--         , responseDescribeAssessmentTargets $
--             mkDescribeAssessmentTargetsResponse
--
--           ]
--     ]

-- Requests

requestGetTelemetryMetadata :: GetTelemetryMetadata -> TestTree
requestGetTelemetryMetadata =
  req
    "GetTelemetryMetadata"
    "fixture/GetTelemetryMetadata.yaml"

requestListFindings :: ListFindings -> TestTree
requestListFindings =
  req
    "ListFindings"
    "fixture/ListFindings.yaml"

requestListAssessmentTemplates :: ListAssessmentTemplates -> TestTree
requestListAssessmentTemplates =
  req
    "ListAssessmentTemplates"
    "fixture/ListAssessmentTemplates.yaml"

requestSubscribeToEvent :: SubscribeToEvent -> TestTree
requestSubscribeToEvent =
  req
    "SubscribeToEvent"
    "fixture/SubscribeToEvent.yaml"

requestListAssessmentRunAgents :: ListAssessmentRunAgents -> TestTree
requestListAssessmentRunAgents =
  req
    "ListAssessmentRunAgents"
    "fixture/ListAssessmentRunAgents.yaml"

requestStartAssessmentRun :: StartAssessmentRun -> TestTree
requestStartAssessmentRun =
  req
    "StartAssessmentRun"
    "fixture/StartAssessmentRun.yaml"

requestDeleteAssessmentTemplate :: DeleteAssessmentTemplate -> TestTree
requestDeleteAssessmentTemplate =
  req
    "DeleteAssessmentTemplate"
    "fixture/DeleteAssessmentTemplate.yaml"

requestCreateAssessmentTemplate :: CreateAssessmentTemplate -> TestTree
requestCreateAssessmentTemplate =
  req
    "CreateAssessmentTemplate"
    "fixture/CreateAssessmentTemplate.yaml"

requestDescribeExclusions :: DescribeExclusions -> TestTree
requestDescribeExclusions =
  req
    "DescribeExclusions"
    "fixture/DescribeExclusions.yaml"

requestListTagsForResource :: ListTagsForResource -> TestTree
requestListTagsForResource =
  req
    "ListTagsForResource"
    "fixture/ListTagsForResource.yaml"

requestSetTagsForResource :: SetTagsForResource -> TestTree
requestSetTagsForResource =
  req
    "SetTagsForResource"
    "fixture/SetTagsForResource.yaml"

requestDescribeCrossAccountAccessRole :: DescribeCrossAccountAccessRole -> TestTree
requestDescribeCrossAccountAccessRole =
  req
    "DescribeCrossAccountAccessRole"
    "fixture/DescribeCrossAccountAccessRole.yaml"

requestDescribeAssessmentTemplates :: DescribeAssessmentTemplates -> TestTree
requestDescribeAssessmentTemplates =
  req
    "DescribeAssessmentTemplates"
    "fixture/DescribeAssessmentTemplates.yaml"

requestDescribeResourceGroups :: DescribeResourceGroups -> TestTree
requestDescribeResourceGroups =
  req
    "DescribeResourceGroups"
    "fixture/DescribeResourceGroups.yaml"

requestCreateAssessmentTarget :: CreateAssessmentTarget -> TestTree
requestCreateAssessmentTarget =
  req
    "CreateAssessmentTarget"
    "fixture/CreateAssessmentTarget.yaml"

requestGetExclusionsPreview :: GetExclusionsPreview -> TestTree
requestGetExclusionsPreview =
  req
    "GetExclusionsPreview"
    "fixture/GetExclusionsPreview.yaml"

requestListEventSubscriptions :: ListEventSubscriptions -> TestTree
requestListEventSubscriptions =
  req
    "ListEventSubscriptions"
    "fixture/ListEventSubscriptions.yaml"

requestRegisterCrossAccountAccessRole :: RegisterCrossAccountAccessRole -> TestTree
requestRegisterCrossAccountAccessRole =
  req
    "RegisterCrossAccountAccessRole"
    "fixture/RegisterCrossAccountAccessRole.yaml"

requestListAssessmentTargets :: ListAssessmentTargets -> TestTree
requestListAssessmentTargets =
  req
    "ListAssessmentTargets"
    "fixture/ListAssessmentTargets.yaml"

requestCreateExclusionsPreview :: CreateExclusionsPreview -> TestTree
requestCreateExclusionsPreview =
  req
    "CreateExclusionsPreview"
    "fixture/CreateExclusionsPreview.yaml"

requestCreateResourceGroup :: CreateResourceGroup -> TestTree
requestCreateResourceGroup =
  req
    "CreateResourceGroup"
    "fixture/CreateResourceGroup.yaml"

requestDescribeRulesPackages :: DescribeRulesPackages -> TestTree
requestDescribeRulesPackages =
  req
    "DescribeRulesPackages"
    "fixture/DescribeRulesPackages.yaml"

requestStopAssessmentRun :: StopAssessmentRun -> TestTree
requestStopAssessmentRun =
  req
    "StopAssessmentRun"
    "fixture/StopAssessmentRun.yaml"

requestListExclusions :: ListExclusions -> TestTree
requestListExclusions =
  req
    "ListExclusions"
    "fixture/ListExclusions.yaml"

requestPreviewAgents :: PreviewAgents -> TestTree
requestPreviewAgents =
  req
    "PreviewAgents"
    "fixture/PreviewAgents.yaml"

requestDescribeFindings :: DescribeFindings -> TestTree
requestDescribeFindings =
  req
    "DescribeFindings"
    "fixture/DescribeFindings.yaml"

requestAddAttributesToFindings :: AddAttributesToFindings -> TestTree
requestAddAttributesToFindings =
  req
    "AddAttributesToFindings"
    "fixture/AddAttributesToFindings.yaml"

requestUpdateAssessmentTarget :: UpdateAssessmentTarget -> TestTree
requestUpdateAssessmentTarget =
  req
    "UpdateAssessmentTarget"
    "fixture/UpdateAssessmentTarget.yaml"

requestDeleteAssessmentTarget :: DeleteAssessmentTarget -> TestTree
requestDeleteAssessmentTarget =
  req
    "DeleteAssessmentTarget"
    "fixture/DeleteAssessmentTarget.yaml"

requestDeleteAssessmentRun :: DeleteAssessmentRun -> TestTree
requestDeleteAssessmentRun =
  req
    "DeleteAssessmentRun"
    "fixture/DeleteAssessmentRun.yaml"

requestListAssessmentRuns :: ListAssessmentRuns -> TestTree
requestListAssessmentRuns =
  req
    "ListAssessmentRuns"
    "fixture/ListAssessmentRuns.yaml"

requestGetAssessmentReport :: GetAssessmentReport -> TestTree
requestGetAssessmentReport =
  req
    "GetAssessmentReport"
    "fixture/GetAssessmentReport.yaml"

requestListRulesPackages :: ListRulesPackages -> TestTree
requestListRulesPackages =
  req
    "ListRulesPackages"
    "fixture/ListRulesPackages.yaml"

requestDescribeAssessmentRuns :: DescribeAssessmentRuns -> TestTree
requestDescribeAssessmentRuns =
  req
    "DescribeAssessmentRuns"
    "fixture/DescribeAssessmentRuns.yaml"

requestUnsubscribeFromEvent :: UnsubscribeFromEvent -> TestTree
requestUnsubscribeFromEvent =
  req
    "UnsubscribeFromEvent"
    "fixture/UnsubscribeFromEvent.yaml"

requestRemoveAttributesFromFindings :: RemoveAttributesFromFindings -> TestTree
requestRemoveAttributesFromFindings =
  req
    "RemoveAttributesFromFindings"
    "fixture/RemoveAttributesFromFindings.yaml"

requestDescribeAssessmentTargets :: DescribeAssessmentTargets -> TestTree
requestDescribeAssessmentTargets =
  req
    "DescribeAssessmentTargets"
    "fixture/DescribeAssessmentTargets.yaml"

-- Responses

responseGetTelemetryMetadata :: GetTelemetryMetadataResponse -> TestTree
responseGetTelemetryMetadata =
  res
    "GetTelemetryMetadataResponse"
    "fixture/GetTelemetryMetadataResponse.proto"
    inspectorService
    (Proxy :: Proxy GetTelemetryMetadata)

responseListFindings :: ListFindingsResponse -> TestTree
responseListFindings =
  res
    "ListFindingsResponse"
    "fixture/ListFindingsResponse.proto"
    inspectorService
    (Proxy :: Proxy ListFindings)

responseListAssessmentTemplates :: ListAssessmentTemplatesResponse -> TestTree
responseListAssessmentTemplates =
  res
    "ListAssessmentTemplatesResponse"
    "fixture/ListAssessmentTemplatesResponse.proto"
    inspectorService
    (Proxy :: Proxy ListAssessmentTemplates)

responseSubscribeToEvent :: SubscribeToEventResponse -> TestTree
responseSubscribeToEvent =
  res
    "SubscribeToEventResponse"
    "fixture/SubscribeToEventResponse.proto"
    inspectorService
    (Proxy :: Proxy SubscribeToEvent)

responseListAssessmentRunAgents :: ListAssessmentRunAgentsResponse -> TestTree
responseListAssessmentRunAgents =
  res
    "ListAssessmentRunAgentsResponse"
    "fixture/ListAssessmentRunAgentsResponse.proto"
    inspectorService
    (Proxy :: Proxy ListAssessmentRunAgents)

responseStartAssessmentRun :: StartAssessmentRunResponse -> TestTree
responseStartAssessmentRun =
  res
    "StartAssessmentRunResponse"
    "fixture/StartAssessmentRunResponse.proto"
    inspectorService
    (Proxy :: Proxy StartAssessmentRun)

responseDeleteAssessmentTemplate :: DeleteAssessmentTemplateResponse -> TestTree
responseDeleteAssessmentTemplate =
  res
    "DeleteAssessmentTemplateResponse"
    "fixture/DeleteAssessmentTemplateResponse.proto"
    inspectorService
    (Proxy :: Proxy DeleteAssessmentTemplate)

responseCreateAssessmentTemplate :: CreateAssessmentTemplateResponse -> TestTree
responseCreateAssessmentTemplate =
  res
    "CreateAssessmentTemplateResponse"
    "fixture/CreateAssessmentTemplateResponse.proto"
    inspectorService
    (Proxy :: Proxy CreateAssessmentTemplate)

responseDescribeExclusions :: DescribeExclusionsResponse -> TestTree
responseDescribeExclusions =
  res
    "DescribeExclusionsResponse"
    "fixture/DescribeExclusionsResponse.proto"
    inspectorService
    (Proxy :: Proxy DescribeExclusions)

responseListTagsForResource :: ListTagsForResourceResponse -> TestTree
responseListTagsForResource =
  res
    "ListTagsForResourceResponse"
    "fixture/ListTagsForResourceResponse.proto"
    inspectorService
    (Proxy :: Proxy ListTagsForResource)

responseSetTagsForResource :: SetTagsForResourceResponse -> TestTree
responseSetTagsForResource =
  res
    "SetTagsForResourceResponse"
    "fixture/SetTagsForResourceResponse.proto"
    inspectorService
    (Proxy :: Proxy SetTagsForResource)

responseDescribeCrossAccountAccessRole :: DescribeCrossAccountAccessRoleResponse -> TestTree
responseDescribeCrossAccountAccessRole =
  res
    "DescribeCrossAccountAccessRoleResponse"
    "fixture/DescribeCrossAccountAccessRoleResponse.proto"
    inspectorService
    (Proxy :: Proxy DescribeCrossAccountAccessRole)

responseDescribeAssessmentTemplates :: DescribeAssessmentTemplatesResponse -> TestTree
responseDescribeAssessmentTemplates =
  res
    "DescribeAssessmentTemplatesResponse"
    "fixture/DescribeAssessmentTemplatesResponse.proto"
    inspectorService
    (Proxy :: Proxy DescribeAssessmentTemplates)

responseDescribeResourceGroups :: DescribeResourceGroupsResponse -> TestTree
responseDescribeResourceGroups =
  res
    "DescribeResourceGroupsResponse"
    "fixture/DescribeResourceGroupsResponse.proto"
    inspectorService
    (Proxy :: Proxy DescribeResourceGroups)

responseCreateAssessmentTarget :: CreateAssessmentTargetResponse -> TestTree
responseCreateAssessmentTarget =
  res
    "CreateAssessmentTargetResponse"
    "fixture/CreateAssessmentTargetResponse.proto"
    inspectorService
    (Proxy :: Proxy CreateAssessmentTarget)

responseGetExclusionsPreview :: GetExclusionsPreviewResponse -> TestTree
responseGetExclusionsPreview =
  res
    "GetExclusionsPreviewResponse"
    "fixture/GetExclusionsPreviewResponse.proto"
    inspectorService
    (Proxy :: Proxy GetExclusionsPreview)

responseListEventSubscriptions :: ListEventSubscriptionsResponse -> TestTree
responseListEventSubscriptions =
  res
    "ListEventSubscriptionsResponse"
    "fixture/ListEventSubscriptionsResponse.proto"
    inspectorService
    (Proxy :: Proxy ListEventSubscriptions)

responseRegisterCrossAccountAccessRole :: RegisterCrossAccountAccessRoleResponse -> TestTree
responseRegisterCrossAccountAccessRole =
  res
    "RegisterCrossAccountAccessRoleResponse"
    "fixture/RegisterCrossAccountAccessRoleResponse.proto"
    inspectorService
    (Proxy :: Proxy RegisterCrossAccountAccessRole)

responseListAssessmentTargets :: ListAssessmentTargetsResponse -> TestTree
responseListAssessmentTargets =
  res
    "ListAssessmentTargetsResponse"
    "fixture/ListAssessmentTargetsResponse.proto"
    inspectorService
    (Proxy :: Proxy ListAssessmentTargets)

responseCreateExclusionsPreview :: CreateExclusionsPreviewResponse -> TestTree
responseCreateExclusionsPreview =
  res
    "CreateExclusionsPreviewResponse"
    "fixture/CreateExclusionsPreviewResponse.proto"
    inspectorService
    (Proxy :: Proxy CreateExclusionsPreview)

responseCreateResourceGroup :: CreateResourceGroupResponse -> TestTree
responseCreateResourceGroup =
  res
    "CreateResourceGroupResponse"
    "fixture/CreateResourceGroupResponse.proto"
    inspectorService
    (Proxy :: Proxy CreateResourceGroup)

responseDescribeRulesPackages :: DescribeRulesPackagesResponse -> TestTree
responseDescribeRulesPackages =
  res
    "DescribeRulesPackagesResponse"
    "fixture/DescribeRulesPackagesResponse.proto"
    inspectorService
    (Proxy :: Proxy DescribeRulesPackages)

responseStopAssessmentRun :: StopAssessmentRunResponse -> TestTree
responseStopAssessmentRun =
  res
    "StopAssessmentRunResponse"
    "fixture/StopAssessmentRunResponse.proto"
    inspectorService
    (Proxy :: Proxy StopAssessmentRun)

responseListExclusions :: ListExclusionsResponse -> TestTree
responseListExclusions =
  res
    "ListExclusionsResponse"
    "fixture/ListExclusionsResponse.proto"
    inspectorService
    (Proxy :: Proxy ListExclusions)

responsePreviewAgents :: PreviewAgentsResponse -> TestTree
responsePreviewAgents =
  res
    "PreviewAgentsResponse"
    "fixture/PreviewAgentsResponse.proto"
    inspectorService
    (Proxy :: Proxy PreviewAgents)

responseDescribeFindings :: DescribeFindingsResponse -> TestTree
responseDescribeFindings =
  res
    "DescribeFindingsResponse"
    "fixture/DescribeFindingsResponse.proto"
    inspectorService
    (Proxy :: Proxy DescribeFindings)

responseAddAttributesToFindings :: AddAttributesToFindingsResponse -> TestTree
responseAddAttributesToFindings =
  res
    "AddAttributesToFindingsResponse"
    "fixture/AddAttributesToFindingsResponse.proto"
    inspectorService
    (Proxy :: Proxy AddAttributesToFindings)

responseUpdateAssessmentTarget :: UpdateAssessmentTargetResponse -> TestTree
responseUpdateAssessmentTarget =
  res
    "UpdateAssessmentTargetResponse"
    "fixture/UpdateAssessmentTargetResponse.proto"
    inspectorService
    (Proxy :: Proxy UpdateAssessmentTarget)

responseDeleteAssessmentTarget :: DeleteAssessmentTargetResponse -> TestTree
responseDeleteAssessmentTarget =
  res
    "DeleteAssessmentTargetResponse"
    "fixture/DeleteAssessmentTargetResponse.proto"
    inspectorService
    (Proxy :: Proxy DeleteAssessmentTarget)

responseDeleteAssessmentRun :: DeleteAssessmentRunResponse -> TestTree
responseDeleteAssessmentRun =
  res
    "DeleteAssessmentRunResponse"
    "fixture/DeleteAssessmentRunResponse.proto"
    inspectorService
    (Proxy :: Proxy DeleteAssessmentRun)

responseListAssessmentRuns :: ListAssessmentRunsResponse -> TestTree
responseListAssessmentRuns =
  res
    "ListAssessmentRunsResponse"
    "fixture/ListAssessmentRunsResponse.proto"
    inspectorService
    (Proxy :: Proxy ListAssessmentRuns)

responseGetAssessmentReport :: GetAssessmentReportResponse -> TestTree
responseGetAssessmentReport =
  res
    "GetAssessmentReportResponse"
    "fixture/GetAssessmentReportResponse.proto"
    inspectorService
    (Proxy :: Proxy GetAssessmentReport)

responseListRulesPackages :: ListRulesPackagesResponse -> TestTree
responseListRulesPackages =
  res
    "ListRulesPackagesResponse"
    "fixture/ListRulesPackagesResponse.proto"
    inspectorService
    (Proxy :: Proxy ListRulesPackages)

responseDescribeAssessmentRuns :: DescribeAssessmentRunsResponse -> TestTree
responseDescribeAssessmentRuns =
  res
    "DescribeAssessmentRunsResponse"
    "fixture/DescribeAssessmentRunsResponse.proto"
    inspectorService
    (Proxy :: Proxy DescribeAssessmentRuns)

responseUnsubscribeFromEvent :: UnsubscribeFromEventResponse -> TestTree
responseUnsubscribeFromEvent =
  res
    "UnsubscribeFromEventResponse"
    "fixture/UnsubscribeFromEventResponse.proto"
    inspectorService
    (Proxy :: Proxy UnsubscribeFromEvent)

responseRemoveAttributesFromFindings :: RemoveAttributesFromFindingsResponse -> TestTree
responseRemoveAttributesFromFindings =
  res
    "RemoveAttributesFromFindingsResponse"
    "fixture/RemoveAttributesFromFindingsResponse.proto"
    inspectorService
    (Proxy :: Proxy RemoveAttributesFromFindings)

responseDescribeAssessmentTargets :: DescribeAssessmentTargetsResponse -> TestTree
responseDescribeAssessmentTargets =
  res
    "DescribeAssessmentTargetsResponse"
    "fixture/DescribeAssessmentTargetsResponse.proto"
    inspectorService
    (Proxy :: Proxy DescribeAssessmentTargets)