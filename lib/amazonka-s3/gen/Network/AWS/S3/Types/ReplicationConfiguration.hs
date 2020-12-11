-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.S3.Types.ReplicationConfiguration
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.S3.Types.ReplicationConfiguration
  ( ReplicationConfiguration (..),

    -- * Smart constructor
    mkReplicationConfiguration,

    -- * Lenses
    rcRole,
    rcRules,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude
import Network.AWS.S3.Internal
import Network.AWS.S3.Types.ReplicationRule

-- | A container for replication rules. You can add up to 1,000 rules. The maximum size of a replication configuration is 2 MB.
--
-- /See:/ 'mkReplicationConfiguration' smart constructor.
data ReplicationConfiguration = ReplicationConfiguration'
  { role' ::
      Lude.Text,
    rules :: [ReplicationRule]
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'ReplicationConfiguration' with the minimum fields required to make a request.
--
-- * 'role'' - The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that Amazon S3 assumes when replicating objects. For more information, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/replication-how-setup.html How to Set Up Replication> in the /Amazon Simple Storage Service Developer Guide/ .
-- * 'rules' - A container for one or more replication rules. A replication configuration must have at least one rule and can contain a maximum of 1,000 rules.
mkReplicationConfiguration ::
  -- | 'role''
  Lude.Text ->
  ReplicationConfiguration
mkReplicationConfiguration pRole_ =
  ReplicationConfiguration' {role' = pRole_, rules = Lude.mempty}

-- | The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that Amazon S3 assumes when replicating objects. For more information, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/replication-how-setup.html How to Set Up Replication> in the /Amazon Simple Storage Service Developer Guide/ .
--
-- /Note:/ Consider using 'role'' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rcRole :: Lens.Lens' ReplicationConfiguration Lude.Text
rcRole = Lens.lens (role' :: ReplicationConfiguration -> Lude.Text) (\s a -> s {role' = a} :: ReplicationConfiguration)
{-# DEPRECATED rcRole "Use generic-lens or generic-optics with 'role'' instead." #-}

-- | A container for one or more replication rules. A replication configuration must have at least one rule and can contain a maximum of 1,000 rules.
--
-- /Note:/ Consider using 'rules' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rcRules :: Lens.Lens' ReplicationConfiguration [ReplicationRule]
rcRules = Lens.lens (rules :: ReplicationConfiguration -> [ReplicationRule]) (\s a -> s {rules = a} :: ReplicationConfiguration)
{-# DEPRECATED rcRules "Use generic-lens or generic-optics with 'rules' instead." #-}

instance Lude.FromXML ReplicationConfiguration where
  parseXML x =
    ReplicationConfiguration'
      Lude.<$> (x Lude..@ "Role") Lude.<*> (Lude.parseXMLList "Rule" x)

instance Lude.ToXML ReplicationConfiguration where
  toXML ReplicationConfiguration' {..} =
    Lude.mconcat ["Role" Lude.@= role', Lude.toXMLList "Rule" rules]