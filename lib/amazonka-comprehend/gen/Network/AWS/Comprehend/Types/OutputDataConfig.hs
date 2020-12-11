-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Comprehend.Types.OutputDataConfig
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Comprehend.Types.OutputDataConfig
  ( OutputDataConfig (..),

    -- * Smart constructor
    mkOutputDataConfig,

    -- * Lenses
    odcKMSKeyId,
    odcS3URI,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | Provides configuration parameters for the output of topic detection jobs.
--
--
--
-- /See:/ 'mkOutputDataConfig' smart constructor.
data OutputDataConfig = OutputDataConfig'
  { kmsKeyId ::
      Lude.Maybe Lude.Text,
    s3URI :: Lude.Text
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'OutputDataConfig' with the minimum fields required to make a request.
--
-- * 'kmsKeyId' - ID for the AWS Key Management Service (KMS) key that Amazon Comprehend uses to encrypt the output results from an analysis job. The KmsKeyId can be one of the following formats:
--
--
--     * KMS Key ID: @"1234abcd-12ab-34cd-56ef-1234567890ab"@
--
--
--     * Amazon Resource Name (ARN) of a KMS Key: @"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"@
--
--
--     * KMS Key Alias: @"alias/ExampleAlias"@
--
--
--     * ARN of a KMS Key Alias: @"arn:aws:kms:us-west-2:111122223333:alias/ExampleAlias"@
--
--
-- * 's3URI' - When you use the @OutputDataConfig@ object with asynchronous operations, you specify the Amazon S3 location where you want to write the output data. The URI must be in the same region as the API endpoint that you are calling. The location is used as the prefix for the actual location of the output file.
--
-- When the topic detection job is finished, the service creates an output file in a directory specific to the job. The @S3Uri@ field contains the location of the output file, called @output.tar.gz@ . It is a compressed archive that contains the ouput of the operation.
mkOutputDataConfig ::
  -- | 's3URI'
  Lude.Text ->
  OutputDataConfig
mkOutputDataConfig pS3URI_ =
  OutputDataConfig' {kmsKeyId = Lude.Nothing, s3URI = pS3URI_}

-- | ID for the AWS Key Management Service (KMS) key that Amazon Comprehend uses to encrypt the output results from an analysis job. The KmsKeyId can be one of the following formats:
--
--
--     * KMS Key ID: @"1234abcd-12ab-34cd-56ef-1234567890ab"@
--
--
--     * Amazon Resource Name (ARN) of a KMS Key: @"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"@
--
--
--     * KMS Key Alias: @"alias/ExampleAlias"@
--
--
--     * ARN of a KMS Key Alias: @"arn:aws:kms:us-west-2:111122223333:alias/ExampleAlias"@
--
--
--
-- /Note:/ Consider using 'kmsKeyId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
odcKMSKeyId :: Lens.Lens' OutputDataConfig (Lude.Maybe Lude.Text)
odcKMSKeyId = Lens.lens (kmsKeyId :: OutputDataConfig -> Lude.Maybe Lude.Text) (\s a -> s {kmsKeyId = a} :: OutputDataConfig)
{-# DEPRECATED odcKMSKeyId "Use generic-lens or generic-optics with 'kmsKeyId' instead." #-}

-- | When you use the @OutputDataConfig@ object with asynchronous operations, you specify the Amazon S3 location where you want to write the output data. The URI must be in the same region as the API endpoint that you are calling. The location is used as the prefix for the actual location of the output file.
--
-- When the topic detection job is finished, the service creates an output file in a directory specific to the job. The @S3Uri@ field contains the location of the output file, called @output.tar.gz@ . It is a compressed archive that contains the ouput of the operation.
--
-- /Note:/ Consider using 's3URI' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
odcS3URI :: Lens.Lens' OutputDataConfig Lude.Text
odcS3URI = Lens.lens (s3URI :: OutputDataConfig -> Lude.Text) (\s a -> s {s3URI = a} :: OutputDataConfig)
{-# DEPRECATED odcS3URI "Use generic-lens or generic-optics with 's3URI' instead." #-}

instance Lude.FromJSON OutputDataConfig where
  parseJSON =
    Lude.withObject
      "OutputDataConfig"
      ( \x ->
          OutputDataConfig'
            Lude.<$> (x Lude..:? "KmsKeyId") Lude.<*> (x Lude..: "S3Uri")
      )

instance Lude.ToJSON OutputDataConfig where
  toJSON OutputDataConfig' {..} =
    Lude.object
      ( Lude.catMaybes
          [ ("KmsKeyId" Lude..=) Lude.<$> kmsKeyId,
            Lude.Just ("S3Uri" Lude..= s3URI)
          ]
      )