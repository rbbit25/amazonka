{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.DescribeAutoMLJob
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about an Amazon SageMaker job.
module Network.AWS.SageMaker.DescribeAutoMLJob
  ( -- * Creating a request
    DescribeAutoMLJob (..),
    mkDescribeAutoMLJob,

    -- ** Request lenses
    damljAutoMLJobName,

    -- * Destructuring the response
    DescribeAutoMLJobResponse (..),
    mkDescribeAutoMLJobResponse,

    -- ** Response lenses
    damljrsGenerateCandidateDefinitionsOnly,
    damljrsFailureReason,
    damljrsProblemType,
    damljrsAutoMLJobConfig,
    damljrsAutoMLJobObjective,
    damljrsAutoMLJobArtifacts,
    damljrsResolvedAttributes,
    damljrsEndTime,
    damljrsBestCandidate,
    damljrsResponseStatus,
    damljrsAutoMLJobName,
    damljrsAutoMLJobARN,
    damljrsInputDataConfig,
    damljrsOutputDataConfig,
    damljrsRoleARN,
    damljrsCreationTime,
    damljrsLastModifiedTime,
    damljrsAutoMLJobStatus,
    damljrsAutoMLJobSecondaryStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude
import qualified Network.AWS.Request as Req
import qualified Network.AWS.Response as Res
import Network.AWS.SageMaker.Types

-- | /See:/ 'mkDescribeAutoMLJob' smart constructor.
newtype DescribeAutoMLJob = DescribeAutoMLJob'
  { autoMLJobName ::
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

-- | Creates a value of 'DescribeAutoMLJob' with the minimum fields required to make a request.
--
-- * 'autoMLJobName' - Request information about a job using that job's unique name.
mkDescribeAutoMLJob ::
  -- | 'autoMLJobName'
  Lude.Text ->
  DescribeAutoMLJob
mkDescribeAutoMLJob pAutoMLJobName_ =
  DescribeAutoMLJob' {autoMLJobName = pAutoMLJobName_}

-- | Request information about a job using that job's unique name.
--
-- /Note:/ Consider using 'autoMLJobName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
damljAutoMLJobName :: Lens.Lens' DescribeAutoMLJob Lude.Text
damljAutoMLJobName = Lens.lens (autoMLJobName :: DescribeAutoMLJob -> Lude.Text) (\s a -> s {autoMLJobName = a} :: DescribeAutoMLJob)
{-# DEPRECATED damljAutoMLJobName "Use generic-lens or generic-optics with 'autoMLJobName' instead." #-}

instance Lude.AWSRequest DescribeAutoMLJob where
  type Rs DescribeAutoMLJob = DescribeAutoMLJobResponse
  request = Req.postJSON sageMakerService
  response =
    Res.receiveJSON
      ( \s h x ->
          DescribeAutoMLJobResponse'
            Lude.<$> (x Lude..?> "GenerateCandidateDefinitionsOnly")
            Lude.<*> (x Lude..?> "FailureReason")
            Lude.<*> (x Lude..?> "ProblemType")
            Lude.<*> (x Lude..?> "AutoMLJobConfig")
            Lude.<*> (x Lude..?> "AutoMLJobObjective")
            Lude.<*> (x Lude..?> "AutoMLJobArtifacts")
            Lude.<*> (x Lude..?> "ResolvedAttributes")
            Lude.<*> (x Lude..?> "EndTime")
            Lude.<*> (x Lude..?> "BestCandidate")
            Lude.<*> (Lude.pure (Lude.fromEnum s))
            Lude.<*> (x Lude..:> "AutoMLJobName")
            Lude.<*> (x Lude..:> "AutoMLJobArn")
            Lude.<*> (x Lude..:> "InputDataConfig")
            Lude.<*> (x Lude..:> "OutputDataConfig")
            Lude.<*> (x Lude..:> "RoleArn")
            Lude.<*> (x Lude..:> "CreationTime")
            Lude.<*> (x Lude..:> "LastModifiedTime")
            Lude.<*> (x Lude..:> "AutoMLJobStatus")
            Lude.<*> (x Lude..:> "AutoMLJobSecondaryStatus")
      )

instance Lude.ToHeaders DescribeAutoMLJob where
  toHeaders =
    Lude.const
      ( Lude.mconcat
          [ "X-Amz-Target"
              Lude.=# ("SageMaker.DescribeAutoMLJob" :: Lude.ByteString),
            "Content-Type"
              Lude.=# ("application/x-amz-json-1.1" :: Lude.ByteString)
          ]
      )

instance Lude.ToJSON DescribeAutoMLJob where
  toJSON DescribeAutoMLJob' {..} =
    Lude.object
      ( Lude.catMaybes
          [Lude.Just ("AutoMLJobName" Lude..= autoMLJobName)]
      )

instance Lude.ToPath DescribeAutoMLJob where
  toPath = Lude.const "/"

instance Lude.ToQuery DescribeAutoMLJob where
  toQuery = Lude.const Lude.mempty

-- | /See:/ 'mkDescribeAutoMLJobResponse' smart constructor.
data DescribeAutoMLJobResponse = DescribeAutoMLJobResponse'
  { generateCandidateDefinitionsOnly ::
      Lude.Maybe Lude.Bool,
    failureReason :: Lude.Maybe Lude.Text,
    problemType :: Lude.Maybe ProblemType,
    autoMLJobConfig ::
      Lude.Maybe AutoMLJobConfig,
    autoMLJobObjective ::
      Lude.Maybe AutoMLJobObjective,
    autoMLJobArtifacts ::
      Lude.Maybe AutoMLJobArtifacts,
    resolvedAttributes ::
      Lude.Maybe ResolvedAttributes,
    endTime :: Lude.Maybe Lude.Timestamp,
    bestCandidate ::
      Lude.Maybe AutoMLCandidate,
    responseStatus :: Lude.Int,
    autoMLJobName :: Lude.Text,
    autoMLJobARN :: Lude.Text,
    inputDataConfig ::
      Lude.NonEmpty AutoMLChannel,
    outputDataConfig ::
      AutoMLOutputDataConfig,
    roleARN :: Lude.Text,
    creationTime :: Lude.Timestamp,
    lastModifiedTime :: Lude.Timestamp,
    autoMLJobStatus :: AutoMLJobStatus,
    autoMLJobSecondaryStatus ::
      AutoMLJobSecondaryStatus
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'DescribeAutoMLJobResponse' with the minimum fields required to make a request.
--
-- * 'autoMLJobARN' - Returns the job's ARN.
-- * 'autoMLJobArtifacts' - Returns information on the job's artifacts found in AutoMLJobArtifacts.
-- * 'autoMLJobConfig' - Returns the job's config.
-- * 'autoMLJobName' - Returns the name of a job.
-- * 'autoMLJobObjective' - Returns the job's objective.
-- * 'autoMLJobSecondaryStatus' - Returns the job's AutoMLJobSecondaryStatus.
-- * 'autoMLJobStatus' - Returns the job's AutoMLJobStatus.
-- * 'bestCandidate' - Returns the job's BestCandidate.
-- * 'creationTime' - Returns the job's creation time.
-- * 'endTime' - Returns the job's end time.
-- * 'failureReason' - Returns the job's FailureReason.
-- * 'generateCandidateDefinitionsOnly' - Returns the job's output from GenerateCandidateDefinitionsOnly.
-- * 'inputDataConfig' - Returns the job's input data config.
-- * 'lastModifiedTime' - Returns the job's last modified time.
-- * 'outputDataConfig' - Returns the job's output data config.
-- * 'problemType' - Returns the job's problem type.
-- * 'resolvedAttributes' - This contains ProblemType, AutoMLJobObjective and CompletionCriteria. They're auto-inferred values, if not provided by you. If you do provide them, then they'll be the same as provided.
-- * 'responseStatus' - The response status code.
-- * 'roleARN' - The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that has read permission to the input data location and write permission to the output data location in Amazon S3.
mkDescribeAutoMLJobResponse ::
  -- | 'responseStatus'
  Lude.Int ->
  -- | 'autoMLJobName'
  Lude.Text ->
  -- | 'autoMLJobARN'
  Lude.Text ->
  -- | 'inputDataConfig'
  Lude.NonEmpty AutoMLChannel ->
  -- | 'outputDataConfig'
  AutoMLOutputDataConfig ->
  -- | 'roleARN'
  Lude.Text ->
  -- | 'creationTime'
  Lude.Timestamp ->
  -- | 'lastModifiedTime'
  Lude.Timestamp ->
  -- | 'autoMLJobStatus'
  AutoMLJobStatus ->
  -- | 'autoMLJobSecondaryStatus'
  AutoMLJobSecondaryStatus ->
  DescribeAutoMLJobResponse
mkDescribeAutoMLJobResponse
  pResponseStatus_
  pAutoMLJobName_
  pAutoMLJobARN_
  pInputDataConfig_
  pOutputDataConfig_
  pRoleARN_
  pCreationTime_
  pLastModifiedTime_
  pAutoMLJobStatus_
  pAutoMLJobSecondaryStatus_ =
    DescribeAutoMLJobResponse'
      { generateCandidateDefinitionsOnly =
          Lude.Nothing,
        failureReason = Lude.Nothing,
        problemType = Lude.Nothing,
        autoMLJobConfig = Lude.Nothing,
        autoMLJobObjective = Lude.Nothing,
        autoMLJobArtifacts = Lude.Nothing,
        resolvedAttributes = Lude.Nothing,
        endTime = Lude.Nothing,
        bestCandidate = Lude.Nothing,
        responseStatus = pResponseStatus_,
        autoMLJobName = pAutoMLJobName_,
        autoMLJobARN = pAutoMLJobARN_,
        inputDataConfig = pInputDataConfig_,
        outputDataConfig = pOutputDataConfig_,
        roleARN = pRoleARN_,
        creationTime = pCreationTime_,
        lastModifiedTime = pLastModifiedTime_,
        autoMLJobStatus = pAutoMLJobStatus_,
        autoMLJobSecondaryStatus = pAutoMLJobSecondaryStatus_
      }

-- | Returns the job's output from GenerateCandidateDefinitionsOnly.
--
-- /Note:/ Consider using 'generateCandidateDefinitionsOnly' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
damljrsGenerateCandidateDefinitionsOnly :: Lens.Lens' DescribeAutoMLJobResponse (Lude.Maybe Lude.Bool)
damljrsGenerateCandidateDefinitionsOnly = Lens.lens (generateCandidateDefinitionsOnly :: DescribeAutoMLJobResponse -> Lude.Maybe Lude.Bool) (\s a -> s {generateCandidateDefinitionsOnly = a} :: DescribeAutoMLJobResponse)
{-# DEPRECATED damljrsGenerateCandidateDefinitionsOnly "Use generic-lens or generic-optics with 'generateCandidateDefinitionsOnly' instead." #-}

-- | Returns the job's FailureReason.
--
-- /Note:/ Consider using 'failureReason' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
damljrsFailureReason :: Lens.Lens' DescribeAutoMLJobResponse (Lude.Maybe Lude.Text)
damljrsFailureReason = Lens.lens (failureReason :: DescribeAutoMLJobResponse -> Lude.Maybe Lude.Text) (\s a -> s {failureReason = a} :: DescribeAutoMLJobResponse)
{-# DEPRECATED damljrsFailureReason "Use generic-lens or generic-optics with 'failureReason' instead." #-}

-- | Returns the job's problem type.
--
-- /Note:/ Consider using 'problemType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
damljrsProblemType :: Lens.Lens' DescribeAutoMLJobResponse (Lude.Maybe ProblemType)
damljrsProblemType = Lens.lens (problemType :: DescribeAutoMLJobResponse -> Lude.Maybe ProblemType) (\s a -> s {problemType = a} :: DescribeAutoMLJobResponse)
{-# DEPRECATED damljrsProblemType "Use generic-lens or generic-optics with 'problemType' instead." #-}

-- | Returns the job's config.
--
-- /Note:/ Consider using 'autoMLJobConfig' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
damljrsAutoMLJobConfig :: Lens.Lens' DescribeAutoMLJobResponse (Lude.Maybe AutoMLJobConfig)
damljrsAutoMLJobConfig = Lens.lens (autoMLJobConfig :: DescribeAutoMLJobResponse -> Lude.Maybe AutoMLJobConfig) (\s a -> s {autoMLJobConfig = a} :: DescribeAutoMLJobResponse)
{-# DEPRECATED damljrsAutoMLJobConfig "Use generic-lens or generic-optics with 'autoMLJobConfig' instead." #-}

-- | Returns the job's objective.
--
-- /Note:/ Consider using 'autoMLJobObjective' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
damljrsAutoMLJobObjective :: Lens.Lens' DescribeAutoMLJobResponse (Lude.Maybe AutoMLJobObjective)
damljrsAutoMLJobObjective = Lens.lens (autoMLJobObjective :: DescribeAutoMLJobResponse -> Lude.Maybe AutoMLJobObjective) (\s a -> s {autoMLJobObjective = a} :: DescribeAutoMLJobResponse)
{-# DEPRECATED damljrsAutoMLJobObjective "Use generic-lens or generic-optics with 'autoMLJobObjective' instead." #-}

-- | Returns information on the job's artifacts found in AutoMLJobArtifacts.
--
-- /Note:/ Consider using 'autoMLJobArtifacts' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
damljrsAutoMLJobArtifacts :: Lens.Lens' DescribeAutoMLJobResponse (Lude.Maybe AutoMLJobArtifacts)
damljrsAutoMLJobArtifacts = Lens.lens (autoMLJobArtifacts :: DescribeAutoMLJobResponse -> Lude.Maybe AutoMLJobArtifacts) (\s a -> s {autoMLJobArtifacts = a} :: DescribeAutoMLJobResponse)
{-# DEPRECATED damljrsAutoMLJobArtifacts "Use generic-lens or generic-optics with 'autoMLJobArtifacts' instead." #-}

-- | This contains ProblemType, AutoMLJobObjective and CompletionCriteria. They're auto-inferred values, if not provided by you. If you do provide them, then they'll be the same as provided.
--
-- /Note:/ Consider using 'resolvedAttributes' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
damljrsResolvedAttributes :: Lens.Lens' DescribeAutoMLJobResponse (Lude.Maybe ResolvedAttributes)
damljrsResolvedAttributes = Lens.lens (resolvedAttributes :: DescribeAutoMLJobResponse -> Lude.Maybe ResolvedAttributes) (\s a -> s {resolvedAttributes = a} :: DescribeAutoMLJobResponse)
{-# DEPRECATED damljrsResolvedAttributes "Use generic-lens or generic-optics with 'resolvedAttributes' instead." #-}

-- | Returns the job's end time.
--
-- /Note:/ Consider using 'endTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
damljrsEndTime :: Lens.Lens' DescribeAutoMLJobResponse (Lude.Maybe Lude.Timestamp)
damljrsEndTime = Lens.lens (endTime :: DescribeAutoMLJobResponse -> Lude.Maybe Lude.Timestamp) (\s a -> s {endTime = a} :: DescribeAutoMLJobResponse)
{-# DEPRECATED damljrsEndTime "Use generic-lens or generic-optics with 'endTime' instead." #-}

-- | Returns the job's BestCandidate.
--
-- /Note:/ Consider using 'bestCandidate' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
damljrsBestCandidate :: Lens.Lens' DescribeAutoMLJobResponse (Lude.Maybe AutoMLCandidate)
damljrsBestCandidate = Lens.lens (bestCandidate :: DescribeAutoMLJobResponse -> Lude.Maybe AutoMLCandidate) (\s a -> s {bestCandidate = a} :: DescribeAutoMLJobResponse)
{-# DEPRECATED damljrsBestCandidate "Use generic-lens or generic-optics with 'bestCandidate' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
damljrsResponseStatus :: Lens.Lens' DescribeAutoMLJobResponse Lude.Int
damljrsResponseStatus = Lens.lens (responseStatus :: DescribeAutoMLJobResponse -> Lude.Int) (\s a -> s {responseStatus = a} :: DescribeAutoMLJobResponse)
{-# DEPRECATED damljrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}

-- | Returns the name of a job.
--
-- /Note:/ Consider using 'autoMLJobName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
damljrsAutoMLJobName :: Lens.Lens' DescribeAutoMLJobResponse Lude.Text
damljrsAutoMLJobName = Lens.lens (autoMLJobName :: DescribeAutoMLJobResponse -> Lude.Text) (\s a -> s {autoMLJobName = a} :: DescribeAutoMLJobResponse)
{-# DEPRECATED damljrsAutoMLJobName "Use generic-lens or generic-optics with 'autoMLJobName' instead." #-}

-- | Returns the job's ARN.
--
-- /Note:/ Consider using 'autoMLJobARN' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
damljrsAutoMLJobARN :: Lens.Lens' DescribeAutoMLJobResponse Lude.Text
damljrsAutoMLJobARN = Lens.lens (autoMLJobARN :: DescribeAutoMLJobResponse -> Lude.Text) (\s a -> s {autoMLJobARN = a} :: DescribeAutoMLJobResponse)
{-# DEPRECATED damljrsAutoMLJobARN "Use generic-lens or generic-optics with 'autoMLJobARN' instead." #-}

-- | Returns the job's input data config.
--
-- /Note:/ Consider using 'inputDataConfig' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
damljrsInputDataConfig :: Lens.Lens' DescribeAutoMLJobResponse (Lude.NonEmpty AutoMLChannel)
damljrsInputDataConfig = Lens.lens (inputDataConfig :: DescribeAutoMLJobResponse -> Lude.NonEmpty AutoMLChannel) (\s a -> s {inputDataConfig = a} :: DescribeAutoMLJobResponse)
{-# DEPRECATED damljrsInputDataConfig "Use generic-lens or generic-optics with 'inputDataConfig' instead." #-}

-- | Returns the job's output data config.
--
-- /Note:/ Consider using 'outputDataConfig' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
damljrsOutputDataConfig :: Lens.Lens' DescribeAutoMLJobResponse AutoMLOutputDataConfig
damljrsOutputDataConfig = Lens.lens (outputDataConfig :: DescribeAutoMLJobResponse -> AutoMLOutputDataConfig) (\s a -> s {outputDataConfig = a} :: DescribeAutoMLJobResponse)
{-# DEPRECATED damljrsOutputDataConfig "Use generic-lens or generic-optics with 'outputDataConfig' instead." #-}

-- | The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that has read permission to the input data location and write permission to the output data location in Amazon S3.
--
-- /Note:/ Consider using 'roleARN' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
damljrsRoleARN :: Lens.Lens' DescribeAutoMLJobResponse Lude.Text
damljrsRoleARN = Lens.lens (roleARN :: DescribeAutoMLJobResponse -> Lude.Text) (\s a -> s {roleARN = a} :: DescribeAutoMLJobResponse)
{-# DEPRECATED damljrsRoleARN "Use generic-lens or generic-optics with 'roleARN' instead." #-}

-- | Returns the job's creation time.
--
-- /Note:/ Consider using 'creationTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
damljrsCreationTime :: Lens.Lens' DescribeAutoMLJobResponse Lude.Timestamp
damljrsCreationTime = Lens.lens (creationTime :: DescribeAutoMLJobResponse -> Lude.Timestamp) (\s a -> s {creationTime = a} :: DescribeAutoMLJobResponse)
{-# DEPRECATED damljrsCreationTime "Use generic-lens or generic-optics with 'creationTime' instead." #-}

-- | Returns the job's last modified time.
--
-- /Note:/ Consider using 'lastModifiedTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
damljrsLastModifiedTime :: Lens.Lens' DescribeAutoMLJobResponse Lude.Timestamp
damljrsLastModifiedTime = Lens.lens (lastModifiedTime :: DescribeAutoMLJobResponse -> Lude.Timestamp) (\s a -> s {lastModifiedTime = a} :: DescribeAutoMLJobResponse)
{-# DEPRECATED damljrsLastModifiedTime "Use generic-lens or generic-optics with 'lastModifiedTime' instead." #-}

-- | Returns the job's AutoMLJobStatus.
--
-- /Note:/ Consider using 'autoMLJobStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
damljrsAutoMLJobStatus :: Lens.Lens' DescribeAutoMLJobResponse AutoMLJobStatus
damljrsAutoMLJobStatus = Lens.lens (autoMLJobStatus :: DescribeAutoMLJobResponse -> AutoMLJobStatus) (\s a -> s {autoMLJobStatus = a} :: DescribeAutoMLJobResponse)
{-# DEPRECATED damljrsAutoMLJobStatus "Use generic-lens or generic-optics with 'autoMLJobStatus' instead." #-}

-- | Returns the job's AutoMLJobSecondaryStatus.
--
-- /Note:/ Consider using 'autoMLJobSecondaryStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
damljrsAutoMLJobSecondaryStatus :: Lens.Lens' DescribeAutoMLJobResponse AutoMLJobSecondaryStatus
damljrsAutoMLJobSecondaryStatus = Lens.lens (autoMLJobSecondaryStatus :: DescribeAutoMLJobResponse -> AutoMLJobSecondaryStatus) (\s a -> s {autoMLJobSecondaryStatus = a} :: DescribeAutoMLJobResponse)
{-# DEPRECATED damljrsAutoMLJobSecondaryStatus "Use generic-lens or generic-optics with 'autoMLJobSecondaryStatus' instead." #-}