{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SNS.GetSMSAttributes
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the settings for sending SMS messages from your account.
--
-- These settings are set with the @SetSMSAttributes@ action.
module Network.AWS.SNS.GetSMSAttributes
  ( -- * Creating a request
    GetSMSAttributes (..),
    mkGetSMSAttributes,

    -- ** Request lenses
    gsmsaAttributes,

    -- * Destructuring the response
    GetSMSAttributesResponse (..),
    mkGetSMSAttributesResponse,

    -- ** Response lenses
    gsmsarsAttributes,
    gsmsarsResponseStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude
import qualified Network.AWS.Request as Req
import qualified Network.AWS.Response as Res
import Network.AWS.SNS.Types

-- | The input for the @GetSMSAttributes@ request.
--
-- /See:/ 'mkGetSMSAttributes' smart constructor.
newtype GetSMSAttributes = GetSMSAttributes'
  { attributes ::
      Lude.Maybe [Lude.Text]
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving newtype (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'GetSMSAttributes' with the minimum fields required to make a request.
--
-- * 'attributes' - A list of the individual attribute names, such as @MonthlySpendLimit@ , for which you want values.
--
-- For all attribute names, see <https://docs.aws.amazon.com/sns/latest/api/API_SetSMSAttributes.html SetSMSAttributes> .
-- If you don't use this parameter, Amazon SNS returns all SMS attributes.
mkGetSMSAttributes ::
  GetSMSAttributes
mkGetSMSAttributes = GetSMSAttributes' {attributes = Lude.Nothing}

-- | A list of the individual attribute names, such as @MonthlySpendLimit@ , for which you want values.
--
-- For all attribute names, see <https://docs.aws.amazon.com/sns/latest/api/API_SetSMSAttributes.html SetSMSAttributes> .
-- If you don't use this parameter, Amazon SNS returns all SMS attributes.
--
-- /Note:/ Consider using 'attributes' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gsmsaAttributes :: Lens.Lens' GetSMSAttributes (Lude.Maybe [Lude.Text])
gsmsaAttributes = Lens.lens (attributes :: GetSMSAttributes -> Lude.Maybe [Lude.Text]) (\s a -> s {attributes = a} :: GetSMSAttributes)
{-# DEPRECATED gsmsaAttributes "Use generic-lens or generic-optics with 'attributes' instead." #-}

instance Lude.AWSRequest GetSMSAttributes where
  type Rs GetSMSAttributes = GetSMSAttributesResponse
  request = Req.postQuery snsService
  response =
    Res.receiveXMLWrapper
      "GetSMSAttributesResult"
      ( \s h x ->
          GetSMSAttributesResponse'
            Lude.<$> ( x Lude..@? "attributes" Lude..!@ Lude.mempty
                         Lude.>>= Lude.may (Lude.parseXMLMap "entry" "key" "value")
                     )
            Lude.<*> (Lude.pure (Lude.fromEnum s))
      )

instance Lude.ToHeaders GetSMSAttributes where
  toHeaders = Lude.const Lude.mempty

instance Lude.ToPath GetSMSAttributes where
  toPath = Lude.const "/"

instance Lude.ToQuery GetSMSAttributes where
  toQuery GetSMSAttributes' {..} =
    Lude.mconcat
      [ "Action" Lude.=: ("GetSMSAttributes" :: Lude.ByteString),
        "Version" Lude.=: ("2010-03-31" :: Lude.ByteString),
        "attributes"
          Lude.=: Lude.toQuery (Lude.toQueryList "member" Lude.<$> attributes)
      ]

-- | The response from the @GetSMSAttributes@ request.
--
-- /See:/ 'mkGetSMSAttributesResponse' smart constructor.
data GetSMSAttributesResponse = GetSMSAttributesResponse'
  { attributes ::
      Lude.Maybe
        (Lude.HashMap Lude.Text (Lude.Text)),
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

-- | Creates a value of 'GetSMSAttributesResponse' with the minimum fields required to make a request.
--
-- * 'attributes' - The SMS attribute names and their values.
-- * 'responseStatus' - The response status code.
mkGetSMSAttributesResponse ::
  -- | 'responseStatus'
  Lude.Int ->
  GetSMSAttributesResponse
mkGetSMSAttributesResponse pResponseStatus_ =
  GetSMSAttributesResponse'
    { attributes = Lude.Nothing,
      responseStatus = pResponseStatus_
    }

-- | The SMS attribute names and their values.
--
-- /Note:/ Consider using 'attributes' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gsmsarsAttributes :: Lens.Lens' GetSMSAttributesResponse (Lude.Maybe (Lude.HashMap Lude.Text (Lude.Text)))
gsmsarsAttributes = Lens.lens (attributes :: GetSMSAttributesResponse -> Lude.Maybe (Lude.HashMap Lude.Text (Lude.Text))) (\s a -> s {attributes = a} :: GetSMSAttributesResponse)
{-# DEPRECATED gsmsarsAttributes "Use generic-lens or generic-optics with 'attributes' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gsmsarsResponseStatus :: Lens.Lens' GetSMSAttributesResponse Lude.Int
gsmsarsResponseStatus = Lens.lens (responseStatus :: GetSMSAttributesResponse -> Lude.Int) (\s a -> s {responseStatus = a} :: GetSMSAttributesResponse)
{-# DEPRECATED gsmsarsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}