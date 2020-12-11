{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.DescribeSpotFleetRequestHistory
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the events for the specified Spot Fleet request during the specified time.
--
-- Spot Fleet events are delayed by up to 30 seconds before they can be described. This ensures that you can query by the last evaluated time and not miss a recorded event. Spot Fleet events are available for 48 hours.
module Network.AWS.EC2.DescribeSpotFleetRequestHistory
  ( -- * Creating a request
    DescribeSpotFleetRequestHistory (..),
    mkDescribeSpotFleetRequestHistory,

    -- ** Request lenses
    dsfrhNextToken,
    dsfrhEventType,
    dsfrhDryRun,
    dsfrhMaxResults,
    dsfrhSpotFleetRequestId,
    dsfrhStartTime,

    -- * Destructuring the response
    DescribeSpotFleetRequestHistoryResponse (..),
    mkDescribeSpotFleetRequestHistoryResponse,

    -- ** Response lenses
    dsfrhrsStartTime,
    dsfrhrsLastEvaluatedTime,
    dsfrhrsNextToken,
    dsfrhrsHistoryRecords,
    dsfrhrsSpotFleetRequestId,
    dsfrhrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude
import qualified Network.AWS.Request as Req
import qualified Network.AWS.Response as Res

-- | Contains the parameters for DescribeSpotFleetRequestHistory.
--
-- /See:/ 'mkDescribeSpotFleetRequestHistory' smart constructor.
data DescribeSpotFleetRequestHistory = DescribeSpotFleetRequestHistory'
  { nextToken ::
      Lude.Maybe Lude.Text,
    eventType ::
      Lude.Maybe EventType,
    dryRun ::
      Lude.Maybe Lude.Bool,
    maxResults ::
      Lude.Maybe Lude.Natural,
    spotFleetRequestId ::
      Lude.Text,
    startTime :: Lude.ISO8601
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'DescribeSpotFleetRequestHistory' with the minimum fields required to make a request.
--
-- * 'dryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
-- * 'eventType' - The type of events to describe. By default, all events are described.
-- * 'maxResults' - The maximum number of results to return in a single call. Specify a value between 1 and 1000. The default value is 1000. To retrieve the remaining results, make another call with the returned @NextToken@ value.
-- * 'nextToken' - The token for the next set of results.
-- * 'spotFleetRequestId' - The ID of the Spot Fleet request.
-- * 'startTime' - The starting date and time for the events, in UTC format (for example, /YYYY/ -/MM/ -/DD/ T/HH/ :/MM/ :/SS/ Z).
mkDescribeSpotFleetRequestHistory ::
  -- | 'spotFleetRequestId'
  Lude.Text ->
  -- | 'startTime'
  Lude.ISO8601 ->
  DescribeSpotFleetRequestHistory
mkDescribeSpotFleetRequestHistory pSpotFleetRequestId_ pStartTime_ =
  DescribeSpotFleetRequestHistory'
    { nextToken = Lude.Nothing,
      eventType = Lude.Nothing,
      dryRun = Lude.Nothing,
      maxResults = Lude.Nothing,
      spotFleetRequestId = pSpotFleetRequestId_,
      startTime = pStartTime_
    }

-- | The token for the next set of results.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dsfrhNextToken :: Lens.Lens' DescribeSpotFleetRequestHistory (Lude.Maybe Lude.Text)
dsfrhNextToken = Lens.lens (nextToken :: DescribeSpotFleetRequestHistory -> Lude.Maybe Lude.Text) (\s a -> s {nextToken = a} :: DescribeSpotFleetRequestHistory)
{-# DEPRECATED dsfrhNextToken "Use generic-lens or generic-optics with 'nextToken' instead." #-}

-- | The type of events to describe. By default, all events are described.
--
-- /Note:/ Consider using 'eventType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dsfrhEventType :: Lens.Lens' DescribeSpotFleetRequestHistory (Lude.Maybe EventType)
dsfrhEventType = Lens.lens (eventType :: DescribeSpotFleetRequestHistory -> Lude.Maybe EventType) (\s a -> s {eventType = a} :: DescribeSpotFleetRequestHistory)
{-# DEPRECATED dsfrhEventType "Use generic-lens or generic-optics with 'eventType' instead." #-}

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- /Note:/ Consider using 'dryRun' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dsfrhDryRun :: Lens.Lens' DescribeSpotFleetRequestHistory (Lude.Maybe Lude.Bool)
dsfrhDryRun = Lens.lens (dryRun :: DescribeSpotFleetRequestHistory -> Lude.Maybe Lude.Bool) (\s a -> s {dryRun = a} :: DescribeSpotFleetRequestHistory)
{-# DEPRECATED dsfrhDryRun "Use generic-lens or generic-optics with 'dryRun' instead." #-}

-- | The maximum number of results to return in a single call. Specify a value between 1 and 1000. The default value is 1000. To retrieve the remaining results, make another call with the returned @NextToken@ value.
--
-- /Note:/ Consider using 'maxResults' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dsfrhMaxResults :: Lens.Lens' DescribeSpotFleetRequestHistory (Lude.Maybe Lude.Natural)
dsfrhMaxResults = Lens.lens (maxResults :: DescribeSpotFleetRequestHistory -> Lude.Maybe Lude.Natural) (\s a -> s {maxResults = a} :: DescribeSpotFleetRequestHistory)
{-# DEPRECATED dsfrhMaxResults "Use generic-lens or generic-optics with 'maxResults' instead." #-}

-- | The ID of the Spot Fleet request.
--
-- /Note:/ Consider using 'spotFleetRequestId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dsfrhSpotFleetRequestId :: Lens.Lens' DescribeSpotFleetRequestHistory Lude.Text
dsfrhSpotFleetRequestId = Lens.lens (spotFleetRequestId :: DescribeSpotFleetRequestHistory -> Lude.Text) (\s a -> s {spotFleetRequestId = a} :: DescribeSpotFleetRequestHistory)
{-# DEPRECATED dsfrhSpotFleetRequestId "Use generic-lens or generic-optics with 'spotFleetRequestId' instead." #-}

-- | The starting date and time for the events, in UTC format (for example, /YYYY/ -/MM/ -/DD/ T/HH/ :/MM/ :/SS/ Z).
--
-- /Note:/ Consider using 'startTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dsfrhStartTime :: Lens.Lens' DescribeSpotFleetRequestHistory Lude.ISO8601
dsfrhStartTime = Lens.lens (startTime :: DescribeSpotFleetRequestHistory -> Lude.ISO8601) (\s a -> s {startTime = a} :: DescribeSpotFleetRequestHistory)
{-# DEPRECATED dsfrhStartTime "Use generic-lens or generic-optics with 'startTime' instead." #-}

instance Lude.AWSRequest DescribeSpotFleetRequestHistory where
  type
    Rs DescribeSpotFleetRequestHistory =
      DescribeSpotFleetRequestHistoryResponse
  request = Req.postQuery ec2Service
  response =
    Res.receiveXML
      ( \s h x ->
          DescribeSpotFleetRequestHistoryResponse'
            Lude.<$> (x Lude..@? "startTime")
            Lude.<*> (x Lude..@? "lastEvaluatedTime")
            Lude.<*> (x Lude..@? "nextToken")
            Lude.<*> ( x Lude..@? "historyRecordSet" Lude..!@ Lude.mempty
                         Lude.>>= Lude.may (Lude.parseXMLList "item")
                     )
            Lude.<*> (x Lude..@? "spotFleetRequestId")
            Lude.<*> (Lude.pure (Lude.fromEnum s))
      )

instance Lude.ToHeaders DescribeSpotFleetRequestHistory where
  toHeaders = Lude.const Lude.mempty

instance Lude.ToPath DescribeSpotFleetRequestHistory where
  toPath = Lude.const "/"

instance Lude.ToQuery DescribeSpotFleetRequestHistory where
  toQuery DescribeSpotFleetRequestHistory' {..} =
    Lude.mconcat
      [ "Action"
          Lude.=: ("DescribeSpotFleetRequestHistory" :: Lude.ByteString),
        "Version" Lude.=: ("2016-11-15" :: Lude.ByteString),
        "NextToken" Lude.=: nextToken,
        "EventType" Lude.=: eventType,
        "DryRun" Lude.=: dryRun,
        "MaxResults" Lude.=: maxResults,
        "SpotFleetRequestId" Lude.=: spotFleetRequestId,
        "StartTime" Lude.=: startTime
      ]

-- | Contains the output of DescribeSpotFleetRequestHistory.
--
-- /See:/ 'mkDescribeSpotFleetRequestHistoryResponse' smart constructor.
data DescribeSpotFleetRequestHistoryResponse = DescribeSpotFleetRequestHistoryResponse'
  { startTime ::
      Lude.Maybe
        Lude.ISO8601,
    lastEvaluatedTime ::
      Lude.Maybe
        Lude.ISO8601,
    nextToken ::
      Lude.Maybe
        Lude.Text,
    historyRecords ::
      Lude.Maybe
        [HistoryRecord],
    spotFleetRequestId ::
      Lude.Maybe
        Lude.Text,
    responseStatus ::
      Lude.Int
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'DescribeSpotFleetRequestHistoryResponse' with the minimum fields required to make a request.
--
-- * 'historyRecords' - Information about the events in the history of the Spot Fleet request.
-- * 'lastEvaluatedTime' - The last date and time for the events, in UTC format (for example, /YYYY/ -/MM/ -/DD/ T/HH/ :/MM/ :/SS/ Z). All records up to this time were retrieved.
--
-- If @nextToken@ indicates that there are more results, this value is not present.
-- * 'nextToken' - The token required to retrieve the next set of results. This value is @null@ when there are no more results to return.
-- * 'responseStatus' - The response status code.
-- * 'spotFleetRequestId' - The ID of the Spot Fleet request.
-- * 'startTime' - The starting date and time for the events, in UTC format (for example, /YYYY/ -/MM/ -/DD/ T/HH/ :/MM/ :/SS/ Z).
mkDescribeSpotFleetRequestHistoryResponse ::
  -- | 'responseStatus'
  Lude.Int ->
  DescribeSpotFleetRequestHistoryResponse
mkDescribeSpotFleetRequestHistoryResponse pResponseStatus_ =
  DescribeSpotFleetRequestHistoryResponse'
    { startTime =
        Lude.Nothing,
      lastEvaluatedTime = Lude.Nothing,
      nextToken = Lude.Nothing,
      historyRecords = Lude.Nothing,
      spotFleetRequestId = Lude.Nothing,
      responseStatus = pResponseStatus_
    }

-- | The starting date and time for the events, in UTC format (for example, /YYYY/ -/MM/ -/DD/ T/HH/ :/MM/ :/SS/ Z).
--
-- /Note:/ Consider using 'startTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dsfrhrsStartTime :: Lens.Lens' DescribeSpotFleetRequestHistoryResponse (Lude.Maybe Lude.ISO8601)
dsfrhrsStartTime = Lens.lens (startTime :: DescribeSpotFleetRequestHistoryResponse -> Lude.Maybe Lude.ISO8601) (\s a -> s {startTime = a} :: DescribeSpotFleetRequestHistoryResponse)
{-# DEPRECATED dsfrhrsStartTime "Use generic-lens or generic-optics with 'startTime' instead." #-}

-- | The last date and time for the events, in UTC format (for example, /YYYY/ -/MM/ -/DD/ T/HH/ :/MM/ :/SS/ Z). All records up to this time were retrieved.
--
-- If @nextToken@ indicates that there are more results, this value is not present.
--
-- /Note:/ Consider using 'lastEvaluatedTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dsfrhrsLastEvaluatedTime :: Lens.Lens' DescribeSpotFleetRequestHistoryResponse (Lude.Maybe Lude.ISO8601)
dsfrhrsLastEvaluatedTime = Lens.lens (lastEvaluatedTime :: DescribeSpotFleetRequestHistoryResponse -> Lude.Maybe Lude.ISO8601) (\s a -> s {lastEvaluatedTime = a} :: DescribeSpotFleetRequestHistoryResponse)
{-# DEPRECATED dsfrhrsLastEvaluatedTime "Use generic-lens or generic-optics with 'lastEvaluatedTime' instead." #-}

-- | The token required to retrieve the next set of results. This value is @null@ when there are no more results to return.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dsfrhrsNextToken :: Lens.Lens' DescribeSpotFleetRequestHistoryResponse (Lude.Maybe Lude.Text)
dsfrhrsNextToken = Lens.lens (nextToken :: DescribeSpotFleetRequestHistoryResponse -> Lude.Maybe Lude.Text) (\s a -> s {nextToken = a} :: DescribeSpotFleetRequestHistoryResponse)
{-# DEPRECATED dsfrhrsNextToken "Use generic-lens or generic-optics with 'nextToken' instead." #-}

-- | Information about the events in the history of the Spot Fleet request.
--
-- /Note:/ Consider using 'historyRecords' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dsfrhrsHistoryRecords :: Lens.Lens' DescribeSpotFleetRequestHistoryResponse (Lude.Maybe [HistoryRecord])
dsfrhrsHistoryRecords = Lens.lens (historyRecords :: DescribeSpotFleetRequestHistoryResponse -> Lude.Maybe [HistoryRecord]) (\s a -> s {historyRecords = a} :: DescribeSpotFleetRequestHistoryResponse)
{-# DEPRECATED dsfrhrsHistoryRecords "Use generic-lens or generic-optics with 'historyRecords' instead." #-}

-- | The ID of the Spot Fleet request.
--
-- /Note:/ Consider using 'spotFleetRequestId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dsfrhrsSpotFleetRequestId :: Lens.Lens' DescribeSpotFleetRequestHistoryResponse (Lude.Maybe Lude.Text)
dsfrhrsSpotFleetRequestId = Lens.lens (spotFleetRequestId :: DescribeSpotFleetRequestHistoryResponse -> Lude.Maybe Lude.Text) (\s a -> s {spotFleetRequestId = a} :: DescribeSpotFleetRequestHistoryResponse)
{-# DEPRECATED dsfrhrsSpotFleetRequestId "Use generic-lens or generic-optics with 'spotFleetRequestId' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dsfrhrsResponseStatus :: Lens.Lens' DescribeSpotFleetRequestHistoryResponse Lude.Int
dsfrhrsResponseStatus = Lens.lens (responseStatus :: DescribeSpotFleetRequestHistoryResponse -> Lude.Int) (\s a -> s {responseStatus = a} :: DescribeSpotFleetRequestHistoryResponse)
{-# DEPRECATED dsfrhrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}