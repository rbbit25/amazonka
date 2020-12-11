{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Route53.CreateTrafficPolicy
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a traffic policy, which you use to create multiple DNS resource record sets for one domain name (such as example.com) or one subdomain name (such as www.example.com).
module Network.AWS.Route53.CreateTrafficPolicy
  ( -- * Creating a request
    CreateTrafficPolicy (..),
    mkCreateTrafficPolicy,

    -- ** Request lenses
    ctpComment,
    ctpName,
    ctpDocument,

    -- * Destructuring the response
    CreateTrafficPolicyResponse (..),
    mkCreateTrafficPolicyResponse,

    -- ** Response lenses
    ctprsResponseStatus,
    ctprsTrafficPolicy,
    ctprsLocation,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude
import qualified Network.AWS.Request as Req
import qualified Network.AWS.Response as Res
import Network.AWS.Route53.Types

-- | A complex type that contains information about the traffic policy that you want to create.
--
-- /See:/ 'mkCreateTrafficPolicy' smart constructor.
data CreateTrafficPolicy = CreateTrafficPolicy'
  { comment ::
      Lude.Maybe Lude.Text,
    name :: Lude.Text,
    document :: Lude.Text
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'CreateTrafficPolicy' with the minimum fields required to make a request.
--
-- * 'comment' - (Optional) Any comments that you want to include about the traffic policy.
-- * 'document' - The definition of this traffic policy in JSON format. For more information, see <https://docs.aws.amazon.com/Route53/latest/APIReference/api-policies-traffic-policy-document-format.html Traffic Policy Document Format> .
-- * 'name' - The name of the traffic policy.
mkCreateTrafficPolicy ::
  -- | 'name'
  Lude.Text ->
  -- | 'document'
  Lude.Text ->
  CreateTrafficPolicy
mkCreateTrafficPolicy pName_ pDocument_ =
  CreateTrafficPolicy'
    { comment = Lude.Nothing,
      name = pName_,
      document = pDocument_
    }

-- | (Optional) Any comments that you want to include about the traffic policy.
--
-- /Note:/ Consider using 'comment' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ctpComment :: Lens.Lens' CreateTrafficPolicy (Lude.Maybe Lude.Text)
ctpComment = Lens.lens (comment :: CreateTrafficPolicy -> Lude.Maybe Lude.Text) (\s a -> s {comment = a} :: CreateTrafficPolicy)
{-# DEPRECATED ctpComment "Use generic-lens or generic-optics with 'comment' instead." #-}

-- | The name of the traffic policy.
--
-- /Note:/ Consider using 'name' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ctpName :: Lens.Lens' CreateTrafficPolicy Lude.Text
ctpName = Lens.lens (name :: CreateTrafficPolicy -> Lude.Text) (\s a -> s {name = a} :: CreateTrafficPolicy)
{-# DEPRECATED ctpName "Use generic-lens or generic-optics with 'name' instead." #-}

-- | The definition of this traffic policy in JSON format. For more information, see <https://docs.aws.amazon.com/Route53/latest/APIReference/api-policies-traffic-policy-document-format.html Traffic Policy Document Format> .
--
-- /Note:/ Consider using 'document' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ctpDocument :: Lens.Lens' CreateTrafficPolicy Lude.Text
ctpDocument = Lens.lens (document :: CreateTrafficPolicy -> Lude.Text) (\s a -> s {document = a} :: CreateTrafficPolicy)
{-# DEPRECATED ctpDocument "Use generic-lens or generic-optics with 'document' instead." #-}

instance Lude.AWSRequest CreateTrafficPolicy where
  type Rs CreateTrafficPolicy = CreateTrafficPolicyResponse
  request = Req.postXML route53Service
  response =
    Res.receiveXML
      ( \s h x ->
          CreateTrafficPolicyResponse'
            Lude.<$> (Lude.pure (Lude.fromEnum s))
            Lude.<*> (x Lude..@ "TrafficPolicy")
            Lude.<*> (h Lude..# "Location")
      )

instance Lude.ToElement CreateTrafficPolicy where
  toElement =
    Lude.mkElement
      "{https://route53.amazonaws.com/doc/2013-04-01/}CreateTrafficPolicyRequest"

instance Lude.ToHeaders CreateTrafficPolicy where
  toHeaders = Lude.const Lude.mempty

instance Lude.ToPath CreateTrafficPolicy where
  toPath = Lude.const "/2013-04-01/trafficpolicy"

instance Lude.ToQuery CreateTrafficPolicy where
  toQuery = Lude.const Lude.mempty

instance Lude.ToXML CreateTrafficPolicy where
  toXML CreateTrafficPolicy' {..} =
    Lude.mconcat
      [ "Comment" Lude.@= comment,
        "Name" Lude.@= name,
        "Document" Lude.@= document
      ]

-- | A complex type that contains the response information for the @CreateTrafficPolicy@ request.
--
-- /See:/ 'mkCreateTrafficPolicyResponse' smart constructor.
data CreateTrafficPolicyResponse = CreateTrafficPolicyResponse'
  { responseStatus ::
      Lude.Int,
    trafficPolicy :: TrafficPolicy,
    location :: Lude.Text
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'CreateTrafficPolicyResponse' with the minimum fields required to make a request.
--
-- * 'location' - A unique URL that represents a new traffic policy.
-- * 'responseStatus' - The response status code.
-- * 'trafficPolicy' - A complex type that contains settings for the new traffic policy.
mkCreateTrafficPolicyResponse ::
  -- | 'responseStatus'
  Lude.Int ->
  -- | 'trafficPolicy'
  TrafficPolicy ->
  -- | 'location'
  Lude.Text ->
  CreateTrafficPolicyResponse
mkCreateTrafficPolicyResponse
  pResponseStatus_
  pTrafficPolicy_
  pLocation_ =
    CreateTrafficPolicyResponse'
      { responseStatus = pResponseStatus_,
        trafficPolicy = pTrafficPolicy_,
        location = pLocation_
      }

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ctprsResponseStatus :: Lens.Lens' CreateTrafficPolicyResponse Lude.Int
ctprsResponseStatus = Lens.lens (responseStatus :: CreateTrafficPolicyResponse -> Lude.Int) (\s a -> s {responseStatus = a} :: CreateTrafficPolicyResponse)
{-# DEPRECATED ctprsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}

-- | A complex type that contains settings for the new traffic policy.
--
-- /Note:/ Consider using 'trafficPolicy' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ctprsTrafficPolicy :: Lens.Lens' CreateTrafficPolicyResponse TrafficPolicy
ctprsTrafficPolicy = Lens.lens (trafficPolicy :: CreateTrafficPolicyResponse -> TrafficPolicy) (\s a -> s {trafficPolicy = a} :: CreateTrafficPolicyResponse)
{-# DEPRECATED ctprsTrafficPolicy "Use generic-lens or generic-optics with 'trafficPolicy' instead." #-}

-- | A unique URL that represents a new traffic policy.
--
-- /Note:/ Consider using 'location' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ctprsLocation :: Lens.Lens' CreateTrafficPolicyResponse Lude.Text
ctprsLocation = Lens.lens (location :: CreateTrafficPolicyResponse -> Lude.Text) (\s a -> s {location = a} :: CreateTrafficPolicyResponse)
{-# DEPRECATED ctprsLocation "Use generic-lens or generic-optics with 'location' instead." #-}