{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.GetCampaignActivities
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about all the activities for a campaign.
module Network.AWS.Pinpoint.GetCampaignActivities
  ( -- * Creating a request
    GetCampaignActivities (..),
    mkGetCampaignActivities,

    -- ** Request lenses
    gcaToken,
    gcaPageSize,
    gcaApplicationId,
    gcaCampaignId,

    -- * Destructuring the response
    GetCampaignActivitiesResponse (..),
    mkGetCampaignActivitiesResponse,

    -- ** Response lenses
    gcarsResponseStatus,
    gcarsActivitiesResponse,
  )
where

import qualified Network.AWS.Lens as Lens
import Network.AWS.Pinpoint.Types
import qualified Network.AWS.Prelude as Lude
import qualified Network.AWS.Request as Req
import qualified Network.AWS.Response as Res

-- | /See:/ 'mkGetCampaignActivities' smart constructor.
data GetCampaignActivities = GetCampaignActivities'
  { token ::
      Lude.Maybe Lude.Text,
    pageSize :: Lude.Maybe Lude.Text,
    applicationId :: Lude.Text,
    campaignId :: Lude.Text
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'GetCampaignActivities' with the minimum fields required to make a request.
--
-- * 'applicationId' - The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
-- * 'campaignId' - The unique identifier for the campaign.
-- * 'pageSize' - The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.
-- * 'token' - The NextToken string that specifies which page of results to return in a paginated response.
mkGetCampaignActivities ::
  -- | 'applicationId'
  Lude.Text ->
  -- | 'campaignId'
  Lude.Text ->
  GetCampaignActivities
mkGetCampaignActivities pApplicationId_ pCampaignId_ =
  GetCampaignActivities'
    { token = Lude.Nothing,
      pageSize = Lude.Nothing,
      applicationId = pApplicationId_,
      campaignId = pCampaignId_
    }

-- | The NextToken string that specifies which page of results to return in a paginated response.
--
-- /Note:/ Consider using 'token' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gcaToken :: Lens.Lens' GetCampaignActivities (Lude.Maybe Lude.Text)
gcaToken = Lens.lens (token :: GetCampaignActivities -> Lude.Maybe Lude.Text) (\s a -> s {token = a} :: GetCampaignActivities)
{-# DEPRECATED gcaToken "Use generic-lens or generic-optics with 'token' instead." #-}

-- | The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.
--
-- /Note:/ Consider using 'pageSize' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gcaPageSize :: Lens.Lens' GetCampaignActivities (Lude.Maybe Lude.Text)
gcaPageSize = Lens.lens (pageSize :: GetCampaignActivities -> Lude.Maybe Lude.Text) (\s a -> s {pageSize = a} :: GetCampaignActivities)
{-# DEPRECATED gcaPageSize "Use generic-lens or generic-optics with 'pageSize' instead." #-}

-- | The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
--
-- /Note:/ Consider using 'applicationId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gcaApplicationId :: Lens.Lens' GetCampaignActivities Lude.Text
gcaApplicationId = Lens.lens (applicationId :: GetCampaignActivities -> Lude.Text) (\s a -> s {applicationId = a} :: GetCampaignActivities)
{-# DEPRECATED gcaApplicationId "Use generic-lens or generic-optics with 'applicationId' instead." #-}

-- | The unique identifier for the campaign.
--
-- /Note:/ Consider using 'campaignId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gcaCampaignId :: Lens.Lens' GetCampaignActivities Lude.Text
gcaCampaignId = Lens.lens (campaignId :: GetCampaignActivities -> Lude.Text) (\s a -> s {campaignId = a} :: GetCampaignActivities)
{-# DEPRECATED gcaCampaignId "Use generic-lens or generic-optics with 'campaignId' instead." #-}

instance Lude.AWSRequest GetCampaignActivities where
  type Rs GetCampaignActivities = GetCampaignActivitiesResponse
  request = Req.get pinpointService
  response =
    Res.receiveJSON
      ( \s h x ->
          GetCampaignActivitiesResponse'
            Lude.<$> (Lude.pure (Lude.fromEnum s)) Lude.<*> (Lude.eitherParseJSON x)
      )

instance Lude.ToHeaders GetCampaignActivities where
  toHeaders =
    Lude.const
      ( Lude.mconcat
          [ "Content-Type"
              Lude.=# ("application/x-amz-json-1.1" :: Lude.ByteString)
          ]
      )

instance Lude.ToPath GetCampaignActivities where
  toPath GetCampaignActivities' {..} =
    Lude.mconcat
      [ "/v1/apps/",
        Lude.toBS applicationId,
        "/campaigns/",
        Lude.toBS campaignId,
        "/activities"
      ]

instance Lude.ToQuery GetCampaignActivities where
  toQuery GetCampaignActivities' {..} =
    Lude.mconcat
      ["token" Lude.=: token, "page-size" Lude.=: pageSize]

-- | /See:/ 'mkGetCampaignActivitiesResponse' smart constructor.
data GetCampaignActivitiesResponse = GetCampaignActivitiesResponse'
  { responseStatus ::
      Lude.Int,
    activitiesResponse ::
      ActivitiesResponse
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'GetCampaignActivitiesResponse' with the minimum fields required to make a request.
--
-- * 'activitiesResponse' - Undocumented field.
-- * 'responseStatus' - The response status code.
mkGetCampaignActivitiesResponse ::
  -- | 'responseStatus'
  Lude.Int ->
  -- | 'activitiesResponse'
  ActivitiesResponse ->
  GetCampaignActivitiesResponse
mkGetCampaignActivitiesResponse
  pResponseStatus_
  pActivitiesResponse_ =
    GetCampaignActivitiesResponse'
      { responseStatus = pResponseStatus_,
        activitiesResponse = pActivitiesResponse_
      }

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gcarsResponseStatus :: Lens.Lens' GetCampaignActivitiesResponse Lude.Int
gcarsResponseStatus = Lens.lens (responseStatus :: GetCampaignActivitiesResponse -> Lude.Int) (\s a -> s {responseStatus = a} :: GetCampaignActivitiesResponse)
{-# DEPRECATED gcarsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}

-- | Undocumented field.
--
-- /Note:/ Consider using 'activitiesResponse' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gcarsActivitiesResponse :: Lens.Lens' GetCampaignActivitiesResponse ActivitiesResponse
gcarsActivitiesResponse = Lens.lens (activitiesResponse :: GetCampaignActivitiesResponse -> ActivitiesResponse) (\s a -> s {activitiesResponse = a} :: GetCampaignActivitiesResponse)
{-# DEPRECATED gcarsActivitiesResponse "Use generic-lens or generic-optics with 'activitiesResponse' instead." #-}