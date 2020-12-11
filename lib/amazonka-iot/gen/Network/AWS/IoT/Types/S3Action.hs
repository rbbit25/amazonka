-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.S3Action
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.S3Action
  ( S3Action (..),

    -- * Smart constructor
    mkS3Action,

    -- * Lenses
    sCannedACL,
    sRoleARN,
    sBucketName,
    sKey,
  )
where

import Network.AWS.IoT.Types.CannedAccessControlList
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | Describes an action to write data to an Amazon S3 bucket.
--
-- /See:/ 'mkS3Action' smart constructor.
data S3Action = S3Action'
  { cannedACL ::
      Lude.Maybe CannedAccessControlList,
    roleARN :: Lude.Text,
    bucketName :: Lude.Text,
    key :: Lude.Text
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'S3Action' with the minimum fields required to make a request.
--
-- * 'bucketName' - The Amazon S3 bucket.
-- * 'cannedACL' - The Amazon S3 canned ACL that controls access to the object identified by the object key. For more information, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#canned-acl S3 canned ACLs> .
-- * 'key' - The object key. For more information, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/list_amazons3.html Actions, resources, and condition keys for Amazon S3> .
-- * 'roleARN' - The ARN of the IAM role that grants access.
mkS3Action ::
  -- | 'roleARN'
  Lude.Text ->
  -- | 'bucketName'
  Lude.Text ->
  -- | 'key'
  Lude.Text ->
  S3Action
mkS3Action pRoleARN_ pBucketName_ pKey_ =
  S3Action'
    { cannedACL = Lude.Nothing,
      roleARN = pRoleARN_,
      bucketName = pBucketName_,
      key = pKey_
    }

-- | The Amazon S3 canned ACL that controls access to the object identified by the object key. For more information, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#canned-acl S3 canned ACLs> .
--
-- /Note:/ Consider using 'cannedACL' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sCannedACL :: Lens.Lens' S3Action (Lude.Maybe CannedAccessControlList)
sCannedACL = Lens.lens (cannedACL :: S3Action -> Lude.Maybe CannedAccessControlList) (\s a -> s {cannedACL = a} :: S3Action)
{-# DEPRECATED sCannedACL "Use generic-lens or generic-optics with 'cannedACL' instead." #-}

-- | The ARN of the IAM role that grants access.
--
-- /Note:/ Consider using 'roleARN' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sRoleARN :: Lens.Lens' S3Action Lude.Text
sRoleARN = Lens.lens (roleARN :: S3Action -> Lude.Text) (\s a -> s {roleARN = a} :: S3Action)
{-# DEPRECATED sRoleARN "Use generic-lens or generic-optics with 'roleARN' instead." #-}

-- | The Amazon S3 bucket.
--
-- /Note:/ Consider using 'bucketName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sBucketName :: Lens.Lens' S3Action Lude.Text
sBucketName = Lens.lens (bucketName :: S3Action -> Lude.Text) (\s a -> s {bucketName = a} :: S3Action)
{-# DEPRECATED sBucketName "Use generic-lens or generic-optics with 'bucketName' instead." #-}

-- | The object key. For more information, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/list_amazons3.html Actions, resources, and condition keys for Amazon S3> .
--
-- /Note:/ Consider using 'key' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sKey :: Lens.Lens' S3Action Lude.Text
sKey = Lens.lens (key :: S3Action -> Lude.Text) (\s a -> s {key = a} :: S3Action)
{-# DEPRECATED sKey "Use generic-lens or generic-optics with 'key' instead." #-}

instance Lude.FromJSON S3Action where
  parseJSON =
    Lude.withObject
      "S3Action"
      ( \x ->
          S3Action'
            Lude.<$> (x Lude..:? "cannedAcl")
            Lude.<*> (x Lude..: "roleArn")
            Lude.<*> (x Lude..: "bucketName")
            Lude.<*> (x Lude..: "key")
      )

instance Lude.ToJSON S3Action where
  toJSON S3Action' {..} =
    Lude.object
      ( Lude.catMaybes
          [ ("cannedAcl" Lude..=) Lude.<$> cannedACL,
            Lude.Just ("roleArn" Lude..= roleARN),
            Lude.Just ("bucketName" Lude..= bucketName),
            Lude.Just ("key" Lude..= key)
          ]
      )