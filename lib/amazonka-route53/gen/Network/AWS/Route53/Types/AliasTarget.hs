-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Route53.Types.AliasTarget
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Route53.Types.AliasTarget
  ( AliasTarget (..),

    -- * Smart constructor
    mkAliasTarget,

    -- * Lenses
    atHostedZoneId,
    atDNSName,
    atEvaluateTargetHealth,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude
import Network.AWS.Route53.Internal

-- | /Alias resource record sets only:/ Information about the AWS resource, such as a CloudFront distribution or an Amazon S3 bucket, that you want to route traffic to.
--
-- When creating resource record sets for a private hosted zone, note the following:
--
--     * Creating geolocation alias resource record sets or latency alias resource record sets in a private hosted zone is unsupported.
--
--
--     * For information about creating failover resource record sets in a private hosted zone, see <https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover-private-hosted-zones.html Configuring Failover in a Private Hosted Zone> .
--
--
--
-- /See:/ 'mkAliasTarget' smart constructor.
data AliasTarget = AliasTarget'
  { hostedZoneId :: ResourceId,
    dnsName :: Lude.Text,
    evaluateTargetHealth :: Lude.Bool
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'AliasTarget' with the minimum fields required to make a request.
--
-- * 'dnsName' - /Alias resource record sets only:/ The value that you specify depends on where you want to route queries:
--
--
--     * Amazon API Gateway custom regional APIs and edge-optimized APIs
--
--     * Specify the applicable domain name for your API. You can get the applicable value using the AWS CLI command <https://docs.aws.amazon.com/cli/latest/reference/apigateway/get-domain-names.html get-domain-names> :
--
--     * For regional APIs, specify the value of @regionalDomainName@ .
--
--
--     * For edge-optimized APIs, specify the value of @distributionDomainName@ . This is the name of the associated CloudFront distribution, such as @da1b2c3d4e5.cloudfront.net@ .
--
--
--
--
--     * Amazon Virtual Private Cloud interface VPC endpoint
--
--     * Enter the API endpoint for the interface endpoint, such as @vpce-123456789abcdef01-example-us-east-1a.elasticloadbalancing.us-east-1.vpce.amazonaws.com@ . For edge-optimized APIs, this is the domain name for the corresponding CloudFront distribution. You can get the value of @DnsName@ using the AWS CLI command <https://docs.aws.amazon.com/cli/latest/reference/ec2/describe-vpc-endpoints.html describe-vpc-endpoints> .
--
--
--     * CloudFront distribution
--
--     * Specify the domain name that CloudFront assigned when you created your distribution.
-- Your CloudFront distribution must include an alternate domain name that matches the name of the resource record set. For example, if the name of the resource record set is /acme.example.com/ , your CloudFront distribution must include /acme.example.com/ as one of the alternate domain names. For more information, see <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/CNAMEs.html Using Alternate Domain Names (CNAMEs)> in the /Amazon CloudFront Developer Guide/ .
-- You can't create a resource record set in a private hosted zone to route traffic to a CloudFront distribution.
--
--
--     * Elastic Beanstalk environment
--
--     * If the domain name for your Elastic Beanstalk environment includes the region that you deployed the environment in, you can create an alias record that routes traffic to the environment. For example, the domain name @my-environment./us-west-2/ .elasticbeanstalk.com@ is a regionalized domain name.
-- /Important:/ For environments that were created before early 2016, the domain name doesn't include the region. To route traffic to these environments, you must create a CNAME record instead of an alias record. Note that you can't create a CNAME record for the root domain name. For example, if your domain name is example.com, you can create a record that routes traffic for acme.example.com to your Elastic Beanstalk environment, but you can't create a record that routes traffic for example.com to your Elastic Beanstalk environment.
-- For Elastic Beanstalk environments that have regionalized subdomains, specify the @CNAME@ attribute for the environment. You can use the following methods to get the value of the CNAME attribute:
--
--     * /AWS Management Console/ : For information about how to get the value by using the console, see <https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/customdomains.html Using Custom Domains with AWS Elastic Beanstalk> in the /AWS Elastic Beanstalk Developer Guide/ .
--
--
--     * /Elastic Beanstalk API/ : Use the @DescribeEnvironments@ action to get the value of the @CNAME@ attribute. For more information, see <https://docs.aws.amazon.com/elasticbeanstalk/latest/api/API_DescribeEnvironments.html DescribeEnvironments> in the /AWS Elastic Beanstalk API Reference/ .
--
--
--     * /AWS CLI/ : Use the @describe-environments@ command to get the value of the @CNAME@ attribute. For more information, see <https://docs.aws.amazon.com/cli/latest/reference/elasticbeanstalk/describe-environments.html describe-environments> in the /AWS CLI Command Reference/ .
--
--
--
--
--     * ELB load balancer
--
--     * Specify the DNS name that is associated with the load balancer. Get the DNS name by using the AWS Management Console, the ELB API, or the AWS CLI.
--
--     * __AWS Management Console__ : Go to the EC2 page, choose __Load Balancers__ in the navigation pane, choose the load balancer, choose the __Description__ tab, and get the value of the __DNS name__ field.
-- If you're routing traffic to a Classic Load Balancer, get the value that begins with __dualstack__ . If you're routing traffic to another type of load balancer, get the value that applies to the record type, A or AAAA.
--
--
--     * __Elastic Load Balancing API__ : Use @DescribeLoadBalancers@ to get the value of @DNSName@ . For more information, see the applicable guide:
--
--     * Classic Load Balancers: <https://docs.aws.amazon.com/elasticloadbalancing/2012-06-01/APIReference/API_DescribeLoadBalancers.html DescribeLoadBalancers>
--
--
--     * Application and Network Load Balancers: <https://docs.aws.amazon.com/elasticloadbalancing/latest/APIReference/API_DescribeLoadBalancers.html DescribeLoadBalancers>
--
--
--
--
--     * __AWS CLI__ : Use @describe-load-balancers@ to get the value of @DNSName@ . For more information, see the applicable guide:
--
--     * Classic Load Balancers: <http://docs.aws.amazon.com/cli/latest/reference/elb/describe-load-balancers.html describe-load-balancers>
--
--
--     * Application and Network Load Balancers: <http://docs.aws.amazon.com/cli/latest/reference/elbv2/describe-load-balancers.html describe-load-balancers>
--
--
--
--
--
--
--     * AWS Global Accelerator accelerator
--
--     * Specify the DNS name for your accelerator:
--
--     * __Global Accelerator API:__ To get the DNS name, use <https://docs.aws.amazon.com/global-accelerator/latest/api/API_DescribeAccelerator.html DescribeAccelerator> .
--
--
--     * __AWS CLI:__ To get the DNS name, use <https://docs.aws.amazon.com/cli/latest/reference/globalaccelerator/describe-accelerator.html describe-accelerator> .
--
--
--
--
--     * Amazon S3 bucket that is configured as a static website
--
--     * Specify the domain name of the Amazon S3 website endpoint that you created the bucket in, for example, @s3-website.us-east-2.amazonaws.com@ . For more information about valid values, see the table <https://docs.aws.amazon.com/general/latest/gr/s3.html#s3_website_region_endpoints Amazon S3 Website Endpoints> in the /Amazon Web Services General Reference/ . For more information about using S3 buckets for websites, see <https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/getting-started.html Getting Started with Amazon Route 53> in the /Amazon Route 53 Developer Guide./
--
--
--     * Another Route 53 resource record set
--
--     * Specify the value of the @Name@ element for a resource record set in the current hosted zone.
--
--
-- * 'evaluateTargetHealth' - /Applies only to alias, failover alias, geolocation alias, latency alias, and weighted alias resource record sets:/ When @EvaluateTargetHealth@ is @true@ , an alias resource record set inherits the health of the referenced AWS resource, such as an ELB load balancer or another resource record set in the hosted zone.
--
-- Note the following:
--
--     * CloudFront distributions
--
--     * You can't set @EvaluateTargetHealth@ to @true@ when the alias target is a CloudFront distribution.
--
--
--     * Elastic Beanstalk environments that have regionalized subdomains
--
--     * If you specify an Elastic Beanstalk environment in @DNSName@ and the environment contains an ELB load balancer, Elastic Load Balancing routes queries only to the healthy Amazon EC2 instances that are registered with the load balancer. (An environment automatically contains an ELB load balancer if it includes more than one Amazon EC2 instance.) If you set @EvaluateTargetHealth@ to @true@ and either no Amazon EC2 instances are healthy or the load balancer itself is unhealthy, Route 53 routes queries to other available resources that are healthy, if any.
-- If the environment contains a single Amazon EC2 instance, there are no special requirements.
--
--
--     * ELB load balancers
--
--     * Health checking behavior depends on the type of load balancer:
--
--     * __Classic Load Balancers__ : If you specify an ELB Classic Load Balancer in @DNSName@ , Elastic Load Balancing routes queries only to the healthy Amazon EC2 instances that are registered with the load balancer. If you set @EvaluateTargetHealth@ to @true@ and either no EC2 instances are healthy or the load balancer itself is unhealthy, Route 53 routes queries to other resources.
--
--
--     * __Application and Network Load Balancers__ : If you specify an ELB Application or Network Load Balancer and you set @EvaluateTargetHealth@ to @true@ , Route 53 routes queries to the load balancer based on the health of the target groups that are associated with the load balancer:
--
--     * For an Application or Network Load Balancer to be considered healthy, every target group that contains targets must contain at least one healthy target. If any target group contains only unhealthy targets, the load balancer is considered unhealthy, and Route 53 routes queries to other resources.
--
--
--     * A target group that has no registered targets is considered unhealthy.
--
--
--
--
--
--
--     * S3 buckets
--
--     * There are no special requirements for setting @EvaluateTargetHealth@ to @true@ when the alias target is an S3 bucket.
--
--
--     * Other records in the same hosted zone
--
--     * If the AWS resource that you specify in @DNSName@ is a record or a group of records (for example, a group of weighted records) but is not another alias record, we recommend that you associate a health check with all of the records in the alias target. For more information, see <https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover-complex-configs.html#dns-failover-complex-configs-hc-omitting What Happens When You Omit Health Checks?> in the /Amazon Route 53 Developer Guide/ .
--
--
-- For more information and examples, see <https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover.html Amazon Route 53 Health Checks and DNS Failover> in the /Amazon Route 53 Developer Guide/ .
-- * 'hostedZoneId' - /Alias resource records sets only/ : The value used depends on where you want to route traffic:
--
--
--     * Amazon API Gateway custom regional APIs and edge-optimized APIs
--
--     * Specify the hosted zone ID for your API. You can get the applicable value using the AWS CLI command <https://docs.aws.amazon.com/cli/latest/reference/apigateway/get-domain-names.html get-domain-names> :
--
--     * For regional APIs, specify the value of @regionalHostedZoneId@ .
--
--
--     * For edge-optimized APIs, specify the value of @distributionHostedZoneId@ .
--
--
--
--
--     * Amazon Virtual Private Cloud interface VPC endpoint
--
--     * Specify the hosted zone ID for your interface endpoint. You can get the value of @HostedZoneId@ using the AWS CLI command <https://docs.aws.amazon.com/cli/latest/reference/ec2/describe-vpc-endpoints.html describe-vpc-endpoints> .
--
--
--     * CloudFront distribution
--
--     * Specify @Z2FDTNDATAQYW2@ .
--
--
--     * Elastic Beanstalk environment
--
--     * Specify the hosted zone ID for the region that you created the environment in. The environment must have a regionalized subdomain. For a list of regions and the corresponding hosted zone IDs, see <https://docs.aws.amazon.com/general/latest/gr/rande.html#elasticbeanstalk_region AWS Elastic Beanstalk> in the "AWS Service Endpoints" chapter of the /Amazon Web Services General Reference/ .
--
--
--     * ELB load balancer
--
--     * Specify the value of the hosted zone ID for the load balancer. Use the following methods to get the hosted zone ID:
--
--     * <https://docs.aws.amazon.com/general/latest/gr/elb.html Service Endpoints> table in the "Elastic Load Balancing Endpoints and Quotas" topic in the /Amazon Web Services General Reference/ : Use the value that corresponds with the region that you created your load balancer in. Note that there are separate columns for Application and Classic Load Balancers and for Network Load Balancers.
--
--
--     * __AWS Management Console__ : Go to the Amazon EC2 page, choose __Load Balancers__ in the navigation pane, select the load balancer, and get the value of the __Hosted zone__ field on the __Description__ tab.
--
--
--     * __Elastic Load Balancing API__ : Use @DescribeLoadBalancers@ to get the applicable value. For more information, see the applicable guide:
--
--     * Classic Load Balancers: Use <https://docs.aws.amazon.com/elasticloadbalancing/2012-06-01/APIReference/API_DescribeLoadBalancers.html DescribeLoadBalancers> to get the value of @CanonicalHostedZoneNameId@ .
--
--
--     * Application and Network Load Balancers: Use <https://docs.aws.amazon.com/elasticloadbalancing/latest/APIReference/API_DescribeLoadBalancers.html DescribeLoadBalancers> to get the value of @CanonicalHostedZoneId@ .
--
--
--
--
--     * __AWS CLI__ : Use @describe-load-balancers@ to get the applicable value. For more information, see the applicable guide:
--
--     * Classic Load Balancers: Use <http://docs.aws.amazon.com/cli/latest/reference/elb/describe-load-balancers.html describe-load-balancers> to get the value of @CanonicalHostedZoneNameId@ .
--
--
--     * Application and Network Load Balancers: Use <http://docs.aws.amazon.com/cli/latest/reference/elbv2/describe-load-balancers.html describe-load-balancers> to get the value of @CanonicalHostedZoneId@ .
--
--
--
--
--
--
--     * AWS Global Accelerator accelerator
--
--     * Specify @Z2BJ6XQ5FK7U4H@ .
--
--
--     * An Amazon S3 bucket configured as a static website
--
--     * Specify the hosted zone ID for the region that you created the bucket in. For more information about valid values, see the table <https://docs.aws.amazon.com/general/latest/gr/s3.html#s3_website_region_endpoints Amazon S3 Website Endpoints> in the /Amazon Web Services General Reference/ .
--
--
--     * Another Route 53 resource record set in your hosted zone
--
--     * Specify the hosted zone ID of your hosted zone. (An alias resource record set can't reference a resource record set in a different hosted zone.)
mkAliasTarget ::
  -- | 'hostedZoneId'
  ResourceId ->
  -- | 'dnsName'
  Lude.Text ->
  -- | 'evaluateTargetHealth'
  Lude.Bool ->
  AliasTarget
mkAliasTarget pHostedZoneId_ pDNSName_ pEvaluateTargetHealth_ =
  AliasTarget'
    { hostedZoneId = pHostedZoneId_,
      dnsName = pDNSName_,
      evaluateTargetHealth = pEvaluateTargetHealth_
    }

-- | /Alias resource records sets only/ : The value used depends on where you want to route traffic:
--
--
--     * Amazon API Gateway custom regional APIs and edge-optimized APIs
--
--     * Specify the hosted zone ID for your API. You can get the applicable value using the AWS CLI command <https://docs.aws.amazon.com/cli/latest/reference/apigateway/get-domain-names.html get-domain-names> :
--
--     * For regional APIs, specify the value of @regionalHostedZoneId@ .
--
--
--     * For edge-optimized APIs, specify the value of @distributionHostedZoneId@ .
--
--
--
--
--     * Amazon Virtual Private Cloud interface VPC endpoint
--
--     * Specify the hosted zone ID for your interface endpoint. You can get the value of @HostedZoneId@ using the AWS CLI command <https://docs.aws.amazon.com/cli/latest/reference/ec2/describe-vpc-endpoints.html describe-vpc-endpoints> .
--
--
--     * CloudFront distribution
--
--     * Specify @Z2FDTNDATAQYW2@ .
--
--
--     * Elastic Beanstalk environment
--
--     * Specify the hosted zone ID for the region that you created the environment in. The environment must have a regionalized subdomain. For a list of regions and the corresponding hosted zone IDs, see <https://docs.aws.amazon.com/general/latest/gr/rande.html#elasticbeanstalk_region AWS Elastic Beanstalk> in the "AWS Service Endpoints" chapter of the /Amazon Web Services General Reference/ .
--
--
--     * ELB load balancer
--
--     * Specify the value of the hosted zone ID for the load balancer. Use the following methods to get the hosted zone ID:
--
--     * <https://docs.aws.amazon.com/general/latest/gr/elb.html Service Endpoints> table in the "Elastic Load Balancing Endpoints and Quotas" topic in the /Amazon Web Services General Reference/ : Use the value that corresponds with the region that you created your load balancer in. Note that there are separate columns for Application and Classic Load Balancers and for Network Load Balancers.
--
--
--     * __AWS Management Console__ : Go to the Amazon EC2 page, choose __Load Balancers__ in the navigation pane, select the load balancer, and get the value of the __Hosted zone__ field on the __Description__ tab.
--
--
--     * __Elastic Load Balancing API__ : Use @DescribeLoadBalancers@ to get the applicable value. For more information, see the applicable guide:
--
--     * Classic Load Balancers: Use <https://docs.aws.amazon.com/elasticloadbalancing/2012-06-01/APIReference/API_DescribeLoadBalancers.html DescribeLoadBalancers> to get the value of @CanonicalHostedZoneNameId@ .
--
--
--     * Application and Network Load Balancers: Use <https://docs.aws.amazon.com/elasticloadbalancing/latest/APIReference/API_DescribeLoadBalancers.html DescribeLoadBalancers> to get the value of @CanonicalHostedZoneId@ .
--
--
--
--
--     * __AWS CLI__ : Use @describe-load-balancers@ to get the applicable value. For more information, see the applicable guide:
--
--     * Classic Load Balancers: Use <http://docs.aws.amazon.com/cli/latest/reference/elb/describe-load-balancers.html describe-load-balancers> to get the value of @CanonicalHostedZoneNameId@ .
--
--
--     * Application and Network Load Balancers: Use <http://docs.aws.amazon.com/cli/latest/reference/elbv2/describe-load-balancers.html describe-load-balancers> to get the value of @CanonicalHostedZoneId@ .
--
--
--
--
--
--
--     * AWS Global Accelerator accelerator
--
--     * Specify @Z2BJ6XQ5FK7U4H@ .
--
--
--     * An Amazon S3 bucket configured as a static website
--
--     * Specify the hosted zone ID for the region that you created the bucket in. For more information about valid values, see the table <https://docs.aws.amazon.com/general/latest/gr/s3.html#s3_website_region_endpoints Amazon S3 Website Endpoints> in the /Amazon Web Services General Reference/ .
--
--
--     * Another Route 53 resource record set in your hosted zone
--
--     * Specify the hosted zone ID of your hosted zone. (An alias resource record set can't reference a resource record set in a different hosted zone.)
--
--
--
-- /Note:/ Consider using 'hostedZoneId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
atHostedZoneId :: Lens.Lens' AliasTarget ResourceId
atHostedZoneId = Lens.lens (hostedZoneId :: AliasTarget -> ResourceId) (\s a -> s {hostedZoneId = a} :: AliasTarget)
{-# DEPRECATED atHostedZoneId "Use generic-lens or generic-optics with 'hostedZoneId' instead." #-}

-- | /Alias resource record sets only:/ The value that you specify depends on where you want to route queries:
--
--
--     * Amazon API Gateway custom regional APIs and edge-optimized APIs
--
--     * Specify the applicable domain name for your API. You can get the applicable value using the AWS CLI command <https://docs.aws.amazon.com/cli/latest/reference/apigateway/get-domain-names.html get-domain-names> :
--
--     * For regional APIs, specify the value of @regionalDomainName@ .
--
--
--     * For edge-optimized APIs, specify the value of @distributionDomainName@ . This is the name of the associated CloudFront distribution, such as @da1b2c3d4e5.cloudfront.net@ .
--
--
--
--
--     * Amazon Virtual Private Cloud interface VPC endpoint
--
--     * Enter the API endpoint for the interface endpoint, such as @vpce-123456789abcdef01-example-us-east-1a.elasticloadbalancing.us-east-1.vpce.amazonaws.com@ . For edge-optimized APIs, this is the domain name for the corresponding CloudFront distribution. You can get the value of @DnsName@ using the AWS CLI command <https://docs.aws.amazon.com/cli/latest/reference/ec2/describe-vpc-endpoints.html describe-vpc-endpoints> .
--
--
--     * CloudFront distribution
--
--     * Specify the domain name that CloudFront assigned when you created your distribution.
-- Your CloudFront distribution must include an alternate domain name that matches the name of the resource record set. For example, if the name of the resource record set is /acme.example.com/ , your CloudFront distribution must include /acme.example.com/ as one of the alternate domain names. For more information, see <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/CNAMEs.html Using Alternate Domain Names (CNAMEs)> in the /Amazon CloudFront Developer Guide/ .
-- You can't create a resource record set in a private hosted zone to route traffic to a CloudFront distribution.
--
--
--     * Elastic Beanstalk environment
--
--     * If the domain name for your Elastic Beanstalk environment includes the region that you deployed the environment in, you can create an alias record that routes traffic to the environment. For example, the domain name @my-environment./us-west-2/ .elasticbeanstalk.com@ is a regionalized domain name.
-- /Important:/ For environments that were created before early 2016, the domain name doesn't include the region. To route traffic to these environments, you must create a CNAME record instead of an alias record. Note that you can't create a CNAME record for the root domain name. For example, if your domain name is example.com, you can create a record that routes traffic for acme.example.com to your Elastic Beanstalk environment, but you can't create a record that routes traffic for example.com to your Elastic Beanstalk environment.
-- For Elastic Beanstalk environments that have regionalized subdomains, specify the @CNAME@ attribute for the environment. You can use the following methods to get the value of the CNAME attribute:
--
--     * /AWS Management Console/ : For information about how to get the value by using the console, see <https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/customdomains.html Using Custom Domains with AWS Elastic Beanstalk> in the /AWS Elastic Beanstalk Developer Guide/ .
--
--
--     * /Elastic Beanstalk API/ : Use the @DescribeEnvironments@ action to get the value of the @CNAME@ attribute. For more information, see <https://docs.aws.amazon.com/elasticbeanstalk/latest/api/API_DescribeEnvironments.html DescribeEnvironments> in the /AWS Elastic Beanstalk API Reference/ .
--
--
--     * /AWS CLI/ : Use the @describe-environments@ command to get the value of the @CNAME@ attribute. For more information, see <https://docs.aws.amazon.com/cli/latest/reference/elasticbeanstalk/describe-environments.html describe-environments> in the /AWS CLI Command Reference/ .
--
--
--
--
--     * ELB load balancer
--
--     * Specify the DNS name that is associated with the load balancer. Get the DNS name by using the AWS Management Console, the ELB API, or the AWS CLI.
--
--     * __AWS Management Console__ : Go to the EC2 page, choose __Load Balancers__ in the navigation pane, choose the load balancer, choose the __Description__ tab, and get the value of the __DNS name__ field.
-- If you're routing traffic to a Classic Load Balancer, get the value that begins with __dualstack__ . If you're routing traffic to another type of load balancer, get the value that applies to the record type, A or AAAA.
--
--
--     * __Elastic Load Balancing API__ : Use @DescribeLoadBalancers@ to get the value of @DNSName@ . For more information, see the applicable guide:
--
--     * Classic Load Balancers: <https://docs.aws.amazon.com/elasticloadbalancing/2012-06-01/APIReference/API_DescribeLoadBalancers.html DescribeLoadBalancers>
--
--
--     * Application and Network Load Balancers: <https://docs.aws.amazon.com/elasticloadbalancing/latest/APIReference/API_DescribeLoadBalancers.html DescribeLoadBalancers>
--
--
--
--
--     * __AWS CLI__ : Use @describe-load-balancers@ to get the value of @DNSName@ . For more information, see the applicable guide:
--
--     * Classic Load Balancers: <http://docs.aws.amazon.com/cli/latest/reference/elb/describe-load-balancers.html describe-load-balancers>
--
--
--     * Application and Network Load Balancers: <http://docs.aws.amazon.com/cli/latest/reference/elbv2/describe-load-balancers.html describe-load-balancers>
--
--
--
--
--
--
--     * AWS Global Accelerator accelerator
--
--     * Specify the DNS name for your accelerator:
--
--     * __Global Accelerator API:__ To get the DNS name, use <https://docs.aws.amazon.com/global-accelerator/latest/api/API_DescribeAccelerator.html DescribeAccelerator> .
--
--
--     * __AWS CLI:__ To get the DNS name, use <https://docs.aws.amazon.com/cli/latest/reference/globalaccelerator/describe-accelerator.html describe-accelerator> .
--
--
--
--
--     * Amazon S3 bucket that is configured as a static website
--
--     * Specify the domain name of the Amazon S3 website endpoint that you created the bucket in, for example, @s3-website.us-east-2.amazonaws.com@ . For more information about valid values, see the table <https://docs.aws.amazon.com/general/latest/gr/s3.html#s3_website_region_endpoints Amazon S3 Website Endpoints> in the /Amazon Web Services General Reference/ . For more information about using S3 buckets for websites, see <https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/getting-started.html Getting Started with Amazon Route 53> in the /Amazon Route 53 Developer Guide./
--
--
--     * Another Route 53 resource record set
--
--     * Specify the value of the @Name@ element for a resource record set in the current hosted zone.
--
--
--
-- /Note:/ Consider using 'dnsName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
atDNSName :: Lens.Lens' AliasTarget Lude.Text
atDNSName = Lens.lens (dnsName :: AliasTarget -> Lude.Text) (\s a -> s {dnsName = a} :: AliasTarget)
{-# DEPRECATED atDNSName "Use generic-lens or generic-optics with 'dnsName' instead." #-}

-- | /Applies only to alias, failover alias, geolocation alias, latency alias, and weighted alias resource record sets:/ When @EvaluateTargetHealth@ is @true@ , an alias resource record set inherits the health of the referenced AWS resource, such as an ELB load balancer or another resource record set in the hosted zone.
--
-- Note the following:
--
--     * CloudFront distributions
--
--     * You can't set @EvaluateTargetHealth@ to @true@ when the alias target is a CloudFront distribution.
--
--
--     * Elastic Beanstalk environments that have regionalized subdomains
--
--     * If you specify an Elastic Beanstalk environment in @DNSName@ and the environment contains an ELB load balancer, Elastic Load Balancing routes queries only to the healthy Amazon EC2 instances that are registered with the load balancer. (An environment automatically contains an ELB load balancer if it includes more than one Amazon EC2 instance.) If you set @EvaluateTargetHealth@ to @true@ and either no Amazon EC2 instances are healthy or the load balancer itself is unhealthy, Route 53 routes queries to other available resources that are healthy, if any.
-- If the environment contains a single Amazon EC2 instance, there are no special requirements.
--
--
--     * ELB load balancers
--
--     * Health checking behavior depends on the type of load balancer:
--
--     * __Classic Load Balancers__ : If you specify an ELB Classic Load Balancer in @DNSName@ , Elastic Load Balancing routes queries only to the healthy Amazon EC2 instances that are registered with the load balancer. If you set @EvaluateTargetHealth@ to @true@ and either no EC2 instances are healthy or the load balancer itself is unhealthy, Route 53 routes queries to other resources.
--
--
--     * __Application and Network Load Balancers__ : If you specify an ELB Application or Network Load Balancer and you set @EvaluateTargetHealth@ to @true@ , Route 53 routes queries to the load balancer based on the health of the target groups that are associated with the load balancer:
--
--     * For an Application or Network Load Balancer to be considered healthy, every target group that contains targets must contain at least one healthy target. If any target group contains only unhealthy targets, the load balancer is considered unhealthy, and Route 53 routes queries to other resources.
--
--
--     * A target group that has no registered targets is considered unhealthy.
--
--
--
--
--
--
--     * S3 buckets
--
--     * There are no special requirements for setting @EvaluateTargetHealth@ to @true@ when the alias target is an S3 bucket.
--
--
--     * Other records in the same hosted zone
--
--     * If the AWS resource that you specify in @DNSName@ is a record or a group of records (for example, a group of weighted records) but is not another alias record, we recommend that you associate a health check with all of the records in the alias target. For more information, see <https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover-complex-configs.html#dns-failover-complex-configs-hc-omitting What Happens When You Omit Health Checks?> in the /Amazon Route 53 Developer Guide/ .
--
--
-- For more information and examples, see <https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover.html Amazon Route 53 Health Checks and DNS Failover> in the /Amazon Route 53 Developer Guide/ .
--
-- /Note:/ Consider using 'evaluateTargetHealth' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
atEvaluateTargetHealth :: Lens.Lens' AliasTarget Lude.Bool
atEvaluateTargetHealth = Lens.lens (evaluateTargetHealth :: AliasTarget -> Lude.Bool) (\s a -> s {evaluateTargetHealth = a} :: AliasTarget)
{-# DEPRECATED atEvaluateTargetHealth "Use generic-lens or generic-optics with 'evaluateTargetHealth' instead." #-}

instance Lude.FromXML AliasTarget where
  parseXML x =
    AliasTarget'
      Lude.<$> (x Lude..@ "HostedZoneId")
      Lude.<*> (x Lude..@ "DNSName")
      Lude.<*> (x Lude..@ "EvaluateTargetHealth")

instance Lude.ToXML AliasTarget where
  toXML AliasTarget' {..} =
    Lude.mconcat
      [ "HostedZoneId" Lude.@= hostedZoneId,
        "DNSName" Lude.@= dnsName,
        "EvaluateTargetHealth" Lude.@= evaluateTargetHealth
      ]