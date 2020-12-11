{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.DescribeTransformJob
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about a transform job.
module Network.AWS.SageMaker.DescribeTransformJob
  ( -- * Creating a request
    DescribeTransformJob (..),
    mkDescribeTransformJob,

    -- ** Request lenses
    dtjTransformJobName,

    -- * Destructuring the response
    DescribeTransformJobResponse (..),
    mkDescribeTransformJobResponse,

    -- ** Response lenses
    dtjrsLabelingJobARN,
    dtjrsFailureReason,
    dtjrsModelClientConfig,
    dtjrsBatchStrategy,
    dtjrsMaxPayloadInMB,
    dtjrsEnvironment,
    dtjrsExperimentConfig,
    dtjrsTransformEndTime,
    dtjrsTransformStartTime,
    dtjrsAutoMLJobARN,
    dtjrsMaxConcurrentTransforms,
    dtjrsTransformOutput,
    dtjrsDataProcessing,
    dtjrsResponseStatus,
    dtjrsTransformJobName,
    dtjrsTransformJobARN,
    dtjrsTransformJobStatus,
    dtjrsModelName,
    dtjrsTransformInput,
    dtjrsTransformResources,
    dtjrsCreationTime,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude
import qualified Network.AWS.Request as Req
import qualified Network.AWS.Response as Res
import Network.AWS.SageMaker.Types

-- | /See:/ 'mkDescribeTransformJob' smart constructor.
newtype DescribeTransformJob = DescribeTransformJob'
  { transformJobName ::
      Lude.Text
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving newtype (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'DescribeTransformJob' with the minimum fields required to make a request.
--
-- * 'transformJobName' - The name of the transform job that you want to view details of.
mkDescribeTransformJob ::
  -- | 'transformJobName'
  Lude.Text ->
  DescribeTransformJob
mkDescribeTransformJob pTransformJobName_ =
  DescribeTransformJob' {transformJobName = pTransformJobName_}

-- | The name of the transform job that you want to view details of.
--
-- /Note:/ Consider using 'transformJobName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dtjTransformJobName :: Lens.Lens' DescribeTransformJob Lude.Text
dtjTransformJobName = Lens.lens (transformJobName :: DescribeTransformJob -> Lude.Text) (\s a -> s {transformJobName = a} :: DescribeTransformJob)
{-# DEPRECATED dtjTransformJobName "Use generic-lens or generic-optics with 'transformJobName' instead." #-}

instance Lude.AWSRequest DescribeTransformJob where
  type Rs DescribeTransformJob = DescribeTransformJobResponse
  request = Req.postJSON sageMakerService
  response =
    Res.receiveJSON
      ( \s h x ->
          DescribeTransformJobResponse'
            Lude.<$> (x Lude..?> "LabelingJobArn")
            Lude.<*> (x Lude..?> "FailureReason")
            Lude.<*> (x Lude..?> "ModelClientConfig")
            Lude.<*> (x Lude..?> "BatchStrategy")
            Lude.<*> (x Lude..?> "MaxPayloadInMB")
            Lude.<*> (x Lude..?> "Environment" Lude..!@ Lude.mempty)
            Lude.<*> (x Lude..?> "ExperimentConfig")
            Lude.<*> (x Lude..?> "TransformEndTime")
            Lude.<*> (x Lude..?> "TransformStartTime")
            Lude.<*> (x Lude..?> "AutoMLJobArn")
            Lude.<*> (x Lude..?> "MaxConcurrentTransforms")
            Lude.<*> (x Lude..?> "TransformOutput")
            Lude.<*> (x Lude..?> "DataProcessing")
            Lude.<*> (Lude.pure (Lude.fromEnum s))
            Lude.<*> (x Lude..:> "TransformJobName")
            Lude.<*> (x Lude..:> "TransformJobArn")
            Lude.<*> (x Lude..:> "TransformJobStatus")
            Lude.<*> (x Lude..:> "ModelName")
            Lude.<*> (x Lude..:> "TransformInput")
            Lude.<*> (x Lude..:> "TransformResources")
            Lude.<*> (x Lude..:> "CreationTime")
      )

instance Lude.ToHeaders DescribeTransformJob where
  toHeaders =
    Lude.const
      ( Lude.mconcat
          [ "X-Amz-Target"
              Lude.=# ("SageMaker.DescribeTransformJob" :: Lude.ByteString),
            "Content-Type"
              Lude.=# ("application/x-amz-json-1.1" :: Lude.ByteString)
          ]
      )

instance Lude.ToJSON DescribeTransformJob where
  toJSON DescribeTransformJob' {..} =
    Lude.object
      ( Lude.catMaybes
          [Lude.Just ("TransformJobName" Lude..= transformJobName)]
      )

instance Lude.ToPath DescribeTransformJob where
  toPath = Lude.const "/"

instance Lude.ToQuery DescribeTransformJob where
  toQuery = Lude.const Lude.mempty

-- | /See:/ 'mkDescribeTransformJobResponse' smart constructor.
data DescribeTransformJobResponse = DescribeTransformJobResponse'
  { labelingJobARN ::
      Lude.Maybe Lude.Text,
    failureReason ::
      Lude.Maybe Lude.Text,
    modelClientConfig ::
      Lude.Maybe ModelClientConfig,
    batchStrategy ::
      Lude.Maybe BatchStrategy,
    maxPayloadInMB ::
      Lude.Maybe Lude.Natural,
    environment ::
      Lude.Maybe
        ( Lude.HashMap
            Lude.Text
            (Lude.Text)
        ),
    experimentConfig ::
      Lude.Maybe ExperimentConfig,
    transformEndTime ::
      Lude.Maybe Lude.Timestamp,
    transformStartTime ::
      Lude.Maybe Lude.Timestamp,
    autoMLJobARN ::
      Lude.Maybe Lude.Text,
    maxConcurrentTransforms ::
      Lude.Maybe Lude.Natural,
    transformOutput ::
      Lude.Maybe TransformOutput,
    dataProcessing ::
      Lude.Maybe DataProcessing,
    responseStatus :: Lude.Int,
    transformJobName :: Lude.Text,
    transformJobARN :: Lude.Text,
    transformJobStatus ::
      TransformJobStatus,
    modelName :: Lude.Text,
    transformInput :: TransformInput,
    transformResources ::
      TransformResources,
    creationTime :: Lude.Timestamp
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'DescribeTransformJobResponse' with the minimum fields required to make a request.
--
-- * 'autoMLJobARN' - The Amazon Resource Name (ARN) of the AutoML transform job.
-- * 'batchStrategy' - Specifies the number of records to include in a mini-batch for an HTTP inference request. A /record/ // is a single unit of input data that inference can be made on. For example, a single line in a CSV file is a record.
--
-- To enable the batch strategy, you must set @SplitType@ to @Line@ , @RecordIO@ , or @TFRecord@ .
-- * 'creationTime' - A timestamp that shows when the transform Job was created.
-- * 'dataProcessing' - Undocumented field.
-- * 'environment' - The environment variables to set in the Docker container. We support up to 16 key and values entries in the map.
-- * 'experimentConfig' - Undocumented field.
-- * 'failureReason' - If the transform job failed, @FailureReason@ describes why it failed. A transform job creates a log file, which includes error messages, and stores it as an Amazon S3 object. For more information, see <https://docs.aws.amazon.com/sagemaker/latest/dg/logging-cloudwatch.html Log Amazon SageMaker Events with Amazon CloudWatch> .
-- * 'labelingJobARN' - The Amazon Resource Name (ARN) of the Amazon SageMaker Ground Truth labeling job that created the transform or training job.
-- * 'maxConcurrentTransforms' - The maximum number of parallel requests on each instance node that can be launched in a transform job. The default value is 1.
-- * 'maxPayloadInMB' - The maximum payload size, in MB, used in the transform job.
-- * 'modelClientConfig' - The timeout and maximum number of retries for processing a transform job invocation.
-- * 'modelName' - The name of the model used in the transform job.
-- * 'responseStatus' - The response status code.
-- * 'transformEndTime' - Indicates when the transform job has been completed, or has stopped or failed. You are billed for the time interval between this time and the value of @TransformStartTime@ .
-- * 'transformInput' - Describes the dataset to be transformed and the Amazon S3 location where it is stored.
-- * 'transformJobARN' - The Amazon Resource Name (ARN) of the transform job.
-- * 'transformJobName' - The name of the transform job.
-- * 'transformJobStatus' - The status of the transform job. If the transform job failed, the reason is returned in the @FailureReason@ field.
-- * 'transformOutput' - Identifies the Amazon S3 location where you want Amazon SageMaker to save the results from the transform job.
-- * 'transformResources' - Describes the resources, including ML instance types and ML instance count, to use for the transform job.
-- * 'transformStartTime' - Indicates when the transform job starts on ML instances. You are billed for the time interval between this time and the value of @TransformEndTime@ .
mkDescribeTransformJobResponse ::
  -- | 'responseStatus'
  Lude.Int ->
  -- | 'transformJobName'
  Lude.Text ->
  -- | 'transformJobARN'
  Lude.Text ->
  -- | 'transformJobStatus'
  TransformJobStatus ->
  -- | 'modelName'
  Lude.Text ->
  -- | 'transformInput'
  TransformInput ->
  -- | 'transformResources'
  TransformResources ->
  -- | 'creationTime'
  Lude.Timestamp ->
  DescribeTransformJobResponse
mkDescribeTransformJobResponse
  pResponseStatus_
  pTransformJobName_
  pTransformJobARN_
  pTransformJobStatus_
  pModelName_
  pTransformInput_
  pTransformResources_
  pCreationTime_ =
    DescribeTransformJobResponse'
      { labelingJobARN = Lude.Nothing,
        failureReason = Lude.Nothing,
        modelClientConfig = Lude.Nothing,
        batchStrategy = Lude.Nothing,
        maxPayloadInMB = Lude.Nothing,
        environment = Lude.Nothing,
        experimentConfig = Lude.Nothing,
        transformEndTime = Lude.Nothing,
        transformStartTime = Lude.Nothing,
        autoMLJobARN = Lude.Nothing,
        maxConcurrentTransforms = Lude.Nothing,
        transformOutput = Lude.Nothing,
        dataProcessing = Lude.Nothing,
        responseStatus = pResponseStatus_,
        transformJobName = pTransformJobName_,
        transformJobARN = pTransformJobARN_,
        transformJobStatus = pTransformJobStatus_,
        modelName = pModelName_,
        transformInput = pTransformInput_,
        transformResources = pTransformResources_,
        creationTime = pCreationTime_
      }

-- | The Amazon Resource Name (ARN) of the Amazon SageMaker Ground Truth labeling job that created the transform or training job.
--
-- /Note:/ Consider using 'labelingJobARN' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dtjrsLabelingJobARN :: Lens.Lens' DescribeTransformJobResponse (Lude.Maybe Lude.Text)
dtjrsLabelingJobARN = Lens.lens (labelingJobARN :: DescribeTransformJobResponse -> Lude.Maybe Lude.Text) (\s a -> s {labelingJobARN = a} :: DescribeTransformJobResponse)
{-# DEPRECATED dtjrsLabelingJobARN "Use generic-lens or generic-optics with 'labelingJobARN' instead." #-}

-- | If the transform job failed, @FailureReason@ describes why it failed. A transform job creates a log file, which includes error messages, and stores it as an Amazon S3 object. For more information, see <https://docs.aws.amazon.com/sagemaker/latest/dg/logging-cloudwatch.html Log Amazon SageMaker Events with Amazon CloudWatch> .
--
-- /Note:/ Consider using 'failureReason' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dtjrsFailureReason :: Lens.Lens' DescribeTransformJobResponse (Lude.Maybe Lude.Text)
dtjrsFailureReason = Lens.lens (failureReason :: DescribeTransformJobResponse -> Lude.Maybe Lude.Text) (\s a -> s {failureReason = a} :: DescribeTransformJobResponse)
{-# DEPRECATED dtjrsFailureReason "Use generic-lens or generic-optics with 'failureReason' instead." #-}

-- | The timeout and maximum number of retries for processing a transform job invocation.
--
-- /Note:/ Consider using 'modelClientConfig' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dtjrsModelClientConfig :: Lens.Lens' DescribeTransformJobResponse (Lude.Maybe ModelClientConfig)
dtjrsModelClientConfig = Lens.lens (modelClientConfig :: DescribeTransformJobResponse -> Lude.Maybe ModelClientConfig) (\s a -> s {modelClientConfig = a} :: DescribeTransformJobResponse)
{-# DEPRECATED dtjrsModelClientConfig "Use generic-lens or generic-optics with 'modelClientConfig' instead." #-}

-- | Specifies the number of records to include in a mini-batch for an HTTP inference request. A /record/ // is a single unit of input data that inference can be made on. For example, a single line in a CSV file is a record.
--
-- To enable the batch strategy, you must set @SplitType@ to @Line@ , @RecordIO@ , or @TFRecord@ .
--
-- /Note:/ Consider using 'batchStrategy' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dtjrsBatchStrategy :: Lens.Lens' DescribeTransformJobResponse (Lude.Maybe BatchStrategy)
dtjrsBatchStrategy = Lens.lens (batchStrategy :: DescribeTransformJobResponse -> Lude.Maybe BatchStrategy) (\s a -> s {batchStrategy = a} :: DescribeTransformJobResponse)
{-# DEPRECATED dtjrsBatchStrategy "Use generic-lens or generic-optics with 'batchStrategy' instead." #-}

-- | The maximum payload size, in MB, used in the transform job.
--
-- /Note:/ Consider using 'maxPayloadInMB' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dtjrsMaxPayloadInMB :: Lens.Lens' DescribeTransformJobResponse (Lude.Maybe Lude.Natural)
dtjrsMaxPayloadInMB = Lens.lens (maxPayloadInMB :: DescribeTransformJobResponse -> Lude.Maybe Lude.Natural) (\s a -> s {maxPayloadInMB = a} :: DescribeTransformJobResponse)
{-# DEPRECATED dtjrsMaxPayloadInMB "Use generic-lens or generic-optics with 'maxPayloadInMB' instead." #-}

-- | The environment variables to set in the Docker container. We support up to 16 key and values entries in the map.
--
-- /Note:/ Consider using 'environment' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dtjrsEnvironment :: Lens.Lens' DescribeTransformJobResponse (Lude.Maybe (Lude.HashMap Lude.Text (Lude.Text)))
dtjrsEnvironment = Lens.lens (environment :: DescribeTransformJobResponse -> Lude.Maybe (Lude.HashMap Lude.Text (Lude.Text))) (\s a -> s {environment = a} :: DescribeTransformJobResponse)
{-# DEPRECATED dtjrsEnvironment "Use generic-lens or generic-optics with 'environment' instead." #-}

-- | Undocumented field.
--
-- /Note:/ Consider using 'experimentConfig' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dtjrsExperimentConfig :: Lens.Lens' DescribeTransformJobResponse (Lude.Maybe ExperimentConfig)
dtjrsExperimentConfig = Lens.lens (experimentConfig :: DescribeTransformJobResponse -> Lude.Maybe ExperimentConfig) (\s a -> s {experimentConfig = a} :: DescribeTransformJobResponse)
{-# DEPRECATED dtjrsExperimentConfig "Use generic-lens or generic-optics with 'experimentConfig' instead." #-}

-- | Indicates when the transform job has been completed, or has stopped or failed. You are billed for the time interval between this time and the value of @TransformStartTime@ .
--
-- /Note:/ Consider using 'transformEndTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dtjrsTransformEndTime :: Lens.Lens' DescribeTransformJobResponse (Lude.Maybe Lude.Timestamp)
dtjrsTransformEndTime = Lens.lens (transformEndTime :: DescribeTransformJobResponse -> Lude.Maybe Lude.Timestamp) (\s a -> s {transformEndTime = a} :: DescribeTransformJobResponse)
{-# DEPRECATED dtjrsTransformEndTime "Use generic-lens or generic-optics with 'transformEndTime' instead." #-}

-- | Indicates when the transform job starts on ML instances. You are billed for the time interval between this time and the value of @TransformEndTime@ .
--
-- /Note:/ Consider using 'transformStartTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dtjrsTransformStartTime :: Lens.Lens' DescribeTransformJobResponse (Lude.Maybe Lude.Timestamp)
dtjrsTransformStartTime = Lens.lens (transformStartTime :: DescribeTransformJobResponse -> Lude.Maybe Lude.Timestamp) (\s a -> s {transformStartTime = a} :: DescribeTransformJobResponse)
{-# DEPRECATED dtjrsTransformStartTime "Use generic-lens or generic-optics with 'transformStartTime' instead." #-}

-- | The Amazon Resource Name (ARN) of the AutoML transform job.
--
-- /Note:/ Consider using 'autoMLJobARN' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dtjrsAutoMLJobARN :: Lens.Lens' DescribeTransformJobResponse (Lude.Maybe Lude.Text)
dtjrsAutoMLJobARN = Lens.lens (autoMLJobARN :: DescribeTransformJobResponse -> Lude.Maybe Lude.Text) (\s a -> s {autoMLJobARN = a} :: DescribeTransformJobResponse)
{-# DEPRECATED dtjrsAutoMLJobARN "Use generic-lens or generic-optics with 'autoMLJobARN' instead." #-}

-- | The maximum number of parallel requests on each instance node that can be launched in a transform job. The default value is 1.
--
-- /Note:/ Consider using 'maxConcurrentTransforms' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dtjrsMaxConcurrentTransforms :: Lens.Lens' DescribeTransformJobResponse (Lude.Maybe Lude.Natural)
dtjrsMaxConcurrentTransforms = Lens.lens (maxConcurrentTransforms :: DescribeTransformJobResponse -> Lude.Maybe Lude.Natural) (\s a -> s {maxConcurrentTransforms = a} :: DescribeTransformJobResponse)
{-# DEPRECATED dtjrsMaxConcurrentTransforms "Use generic-lens or generic-optics with 'maxConcurrentTransforms' instead." #-}

-- | Identifies the Amazon S3 location where you want Amazon SageMaker to save the results from the transform job.
--
-- /Note:/ Consider using 'transformOutput' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dtjrsTransformOutput :: Lens.Lens' DescribeTransformJobResponse (Lude.Maybe TransformOutput)
dtjrsTransformOutput = Lens.lens (transformOutput :: DescribeTransformJobResponse -> Lude.Maybe TransformOutput) (\s a -> s {transformOutput = a} :: DescribeTransformJobResponse)
{-# DEPRECATED dtjrsTransformOutput "Use generic-lens or generic-optics with 'transformOutput' instead." #-}

-- | Undocumented field.
--
-- /Note:/ Consider using 'dataProcessing' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dtjrsDataProcessing :: Lens.Lens' DescribeTransformJobResponse (Lude.Maybe DataProcessing)
dtjrsDataProcessing = Lens.lens (dataProcessing :: DescribeTransformJobResponse -> Lude.Maybe DataProcessing) (\s a -> s {dataProcessing = a} :: DescribeTransformJobResponse)
{-# DEPRECATED dtjrsDataProcessing "Use generic-lens or generic-optics with 'dataProcessing' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dtjrsResponseStatus :: Lens.Lens' DescribeTransformJobResponse Lude.Int
dtjrsResponseStatus = Lens.lens (responseStatus :: DescribeTransformJobResponse -> Lude.Int) (\s a -> s {responseStatus = a} :: DescribeTransformJobResponse)
{-# DEPRECATED dtjrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}

-- | The name of the transform job.
--
-- /Note:/ Consider using 'transformJobName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dtjrsTransformJobName :: Lens.Lens' DescribeTransformJobResponse Lude.Text
dtjrsTransformJobName = Lens.lens (transformJobName :: DescribeTransformJobResponse -> Lude.Text) (\s a -> s {transformJobName = a} :: DescribeTransformJobResponse)
{-# DEPRECATED dtjrsTransformJobName "Use generic-lens or generic-optics with 'transformJobName' instead." #-}

-- | The Amazon Resource Name (ARN) of the transform job.
--
-- /Note:/ Consider using 'transformJobARN' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dtjrsTransformJobARN :: Lens.Lens' DescribeTransformJobResponse Lude.Text
dtjrsTransformJobARN = Lens.lens (transformJobARN :: DescribeTransformJobResponse -> Lude.Text) (\s a -> s {transformJobARN = a} :: DescribeTransformJobResponse)
{-# DEPRECATED dtjrsTransformJobARN "Use generic-lens or generic-optics with 'transformJobARN' instead." #-}

-- | The status of the transform job. If the transform job failed, the reason is returned in the @FailureReason@ field.
--
-- /Note:/ Consider using 'transformJobStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dtjrsTransformJobStatus :: Lens.Lens' DescribeTransformJobResponse TransformJobStatus
dtjrsTransformJobStatus = Lens.lens (transformJobStatus :: DescribeTransformJobResponse -> TransformJobStatus) (\s a -> s {transformJobStatus = a} :: DescribeTransformJobResponse)
{-# DEPRECATED dtjrsTransformJobStatus "Use generic-lens or generic-optics with 'transformJobStatus' instead." #-}

-- | The name of the model used in the transform job.
--
-- /Note:/ Consider using 'modelName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dtjrsModelName :: Lens.Lens' DescribeTransformJobResponse Lude.Text
dtjrsModelName = Lens.lens (modelName :: DescribeTransformJobResponse -> Lude.Text) (\s a -> s {modelName = a} :: DescribeTransformJobResponse)
{-# DEPRECATED dtjrsModelName "Use generic-lens or generic-optics with 'modelName' instead." #-}

-- | Describes the dataset to be transformed and the Amazon S3 location where it is stored.
--
-- /Note:/ Consider using 'transformInput' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dtjrsTransformInput :: Lens.Lens' DescribeTransformJobResponse TransformInput
dtjrsTransformInput = Lens.lens (transformInput :: DescribeTransformJobResponse -> TransformInput) (\s a -> s {transformInput = a} :: DescribeTransformJobResponse)
{-# DEPRECATED dtjrsTransformInput "Use generic-lens or generic-optics with 'transformInput' instead." #-}

-- | Describes the resources, including ML instance types and ML instance count, to use for the transform job.
--
-- /Note:/ Consider using 'transformResources' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dtjrsTransformResources :: Lens.Lens' DescribeTransformJobResponse TransformResources
dtjrsTransformResources = Lens.lens (transformResources :: DescribeTransformJobResponse -> TransformResources) (\s a -> s {transformResources = a} :: DescribeTransformJobResponse)
{-# DEPRECATED dtjrsTransformResources "Use generic-lens or generic-optics with 'transformResources' instead." #-}

-- | A timestamp that shows when the transform Job was created.
--
-- /Note:/ Consider using 'creationTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dtjrsCreationTime :: Lens.Lens' DescribeTransformJobResponse Lude.Timestamp
dtjrsCreationTime = Lens.lens (creationTime :: DescribeTransformJobResponse -> Lude.Timestamp) (\s a -> s {creationTime = a} :: DescribeTransformJobResponse)
{-# DEPRECATED dtjrsCreationTime "Use generic-lens or generic-optics with 'creationTime' instead." #-}