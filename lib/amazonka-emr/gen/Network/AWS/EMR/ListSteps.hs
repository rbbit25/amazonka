{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EMR.ListSteps
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides a list of steps for the cluster in reverse order unless you specify @stepIds@ with the request of filter by @StepStates@ . You can specify a maximum of ten @stepIDs@ .
--
-- This operation returns paginated results.
module Network.AWS.EMR.ListSteps
  ( -- * Creating a request
    ListSteps (..),
    mkListSteps,

    -- ** Request lenses
    lsStepIds,
    lsStepStates,
    lsMarker,
    lsClusterId,

    -- * Destructuring the response
    ListStepsResponse (..),
    mkListStepsResponse,

    -- ** Response lenses
    lrsSteps,
    lrsMarker,
    lrsResponseStatus,
  )
where

import Network.AWS.EMR.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Page
import qualified Network.AWS.Prelude as Lude
import qualified Network.AWS.Request as Req
import qualified Network.AWS.Response as Res

-- | This input determines which steps to list.
--
-- /See:/ 'mkListSteps' smart constructor.
data ListSteps = ListSteps'
  { stepIds :: Lude.Maybe [Lude.Text],
    stepStates :: Lude.Maybe [StepState],
    marker :: Lude.Maybe Lude.Text,
    clusterId :: Lude.Text
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'ListSteps' with the minimum fields required to make a request.
--
-- * 'clusterId' - The identifier of the cluster for which to list the steps.
-- * 'marker' - The pagination token that indicates the next set of results to retrieve.
-- * 'stepIds' - The filter to limit the step list based on the identifier of the steps. You can specify a maximum of ten Step IDs. The character constraint applies to the overall length of the array.
-- * 'stepStates' - The filter to limit the step list based on certain states.
mkListSteps ::
  -- | 'clusterId'
  Lude.Text ->
  ListSteps
mkListSteps pClusterId_ =
  ListSteps'
    { stepIds = Lude.Nothing,
      stepStates = Lude.Nothing,
      marker = Lude.Nothing,
      clusterId = pClusterId_
    }

-- | The filter to limit the step list based on the identifier of the steps. You can specify a maximum of ten Step IDs. The character constraint applies to the overall length of the array.
--
-- /Note:/ Consider using 'stepIds' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lsStepIds :: Lens.Lens' ListSteps (Lude.Maybe [Lude.Text])
lsStepIds = Lens.lens (stepIds :: ListSteps -> Lude.Maybe [Lude.Text]) (\s a -> s {stepIds = a} :: ListSteps)
{-# DEPRECATED lsStepIds "Use generic-lens or generic-optics with 'stepIds' instead." #-}

-- | The filter to limit the step list based on certain states.
--
-- /Note:/ Consider using 'stepStates' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lsStepStates :: Lens.Lens' ListSteps (Lude.Maybe [StepState])
lsStepStates = Lens.lens (stepStates :: ListSteps -> Lude.Maybe [StepState]) (\s a -> s {stepStates = a} :: ListSteps)
{-# DEPRECATED lsStepStates "Use generic-lens or generic-optics with 'stepStates' instead." #-}

-- | The pagination token that indicates the next set of results to retrieve.
--
-- /Note:/ Consider using 'marker' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lsMarker :: Lens.Lens' ListSteps (Lude.Maybe Lude.Text)
lsMarker = Lens.lens (marker :: ListSteps -> Lude.Maybe Lude.Text) (\s a -> s {marker = a} :: ListSteps)
{-# DEPRECATED lsMarker "Use generic-lens or generic-optics with 'marker' instead." #-}

-- | The identifier of the cluster for which to list the steps.
--
-- /Note:/ Consider using 'clusterId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lsClusterId :: Lens.Lens' ListSteps Lude.Text
lsClusterId = Lens.lens (clusterId :: ListSteps -> Lude.Text) (\s a -> s {clusterId = a} :: ListSteps)
{-# DEPRECATED lsClusterId "Use generic-lens or generic-optics with 'clusterId' instead." #-}

instance Page.AWSPager ListSteps where
  page rq rs
    | Page.stop (rs Lens.^. lrsMarker) = Lude.Nothing
    | Page.stop (rs Lens.^. lrsSteps) = Lude.Nothing
    | Lude.otherwise =
      Lude.Just Lude.$ rq Lude.& lsMarker Lens..~ rs Lens.^. lrsMarker

instance Lude.AWSRequest ListSteps where
  type Rs ListSteps = ListStepsResponse
  request = Req.postJSON emrService
  response =
    Res.receiveJSON
      ( \s h x ->
          ListStepsResponse'
            Lude.<$> (x Lude..?> "Steps" Lude..!@ Lude.mempty)
            Lude.<*> (x Lude..?> "Marker")
            Lude.<*> (Lude.pure (Lude.fromEnum s))
      )

instance Lude.ToHeaders ListSteps where
  toHeaders =
    Lude.const
      ( Lude.mconcat
          [ "X-Amz-Target"
              Lude.=# ("ElasticMapReduce.ListSteps" :: Lude.ByteString),
            "Content-Type"
              Lude.=# ("application/x-amz-json-1.1" :: Lude.ByteString)
          ]
      )

instance Lude.ToJSON ListSteps where
  toJSON ListSteps' {..} =
    Lude.object
      ( Lude.catMaybes
          [ ("StepIds" Lude..=) Lude.<$> stepIds,
            ("StepStates" Lude..=) Lude.<$> stepStates,
            ("Marker" Lude..=) Lude.<$> marker,
            Lude.Just ("ClusterId" Lude..= clusterId)
          ]
      )

instance Lude.ToPath ListSteps where
  toPath = Lude.const "/"

instance Lude.ToQuery ListSteps where
  toQuery = Lude.const Lude.mempty

-- | This output contains the list of steps returned in reverse order. This means that the last step is the first element in the list.
--
-- /See:/ 'mkListStepsResponse' smart constructor.
data ListStepsResponse = ListStepsResponse'
  { steps ::
      Lude.Maybe [StepSummary],
    marker :: Lude.Maybe Lude.Text,
    responseStatus :: Lude.Int
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'ListStepsResponse' with the minimum fields required to make a request.
--
-- * 'marker' - The pagination token that indicates the next set of results to retrieve.
-- * 'responseStatus' - The response status code.
-- * 'steps' - The filtered list of steps for the cluster.
mkListStepsResponse ::
  -- | 'responseStatus'
  Lude.Int ->
  ListStepsResponse
mkListStepsResponse pResponseStatus_ =
  ListStepsResponse'
    { steps = Lude.Nothing,
      marker = Lude.Nothing,
      responseStatus = pResponseStatus_
    }

-- | The filtered list of steps for the cluster.
--
-- /Note:/ Consider using 'steps' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lrsSteps :: Lens.Lens' ListStepsResponse (Lude.Maybe [StepSummary])
lrsSteps = Lens.lens (steps :: ListStepsResponse -> Lude.Maybe [StepSummary]) (\s a -> s {steps = a} :: ListStepsResponse)
{-# DEPRECATED lrsSteps "Use generic-lens or generic-optics with 'steps' instead." #-}

-- | The pagination token that indicates the next set of results to retrieve.
--
-- /Note:/ Consider using 'marker' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lrsMarker :: Lens.Lens' ListStepsResponse (Lude.Maybe Lude.Text)
lrsMarker = Lens.lens (marker :: ListStepsResponse -> Lude.Maybe Lude.Text) (\s a -> s {marker = a} :: ListStepsResponse)
{-# DEPRECATED lrsMarker "Use generic-lens or generic-optics with 'marker' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lrsResponseStatus :: Lens.Lens' ListStepsResponse Lude.Int
lrsResponseStatus = Lens.lens (responseStatus :: ListStepsResponse -> Lude.Int) (\s a -> s {responseStatus = a} :: ListStepsResponse)
{-# DEPRECATED lrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}