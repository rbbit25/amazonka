-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Comprehend.Types.KeyPhrasesDetectionJobFilter
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Comprehend.Types.KeyPhrasesDetectionJobFilter
  ( KeyPhrasesDetectionJobFilter (..),

    -- * Smart constructor
    mkKeyPhrasesDetectionJobFilter,

    -- * Lenses
    kpdjfSubmitTimeAfter,
    kpdjfSubmitTimeBefore,
    kpdjfJobName,
    kpdjfJobStatus,
  )
where

import Network.AWS.Comprehend.Types.JobStatus
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | Provides information for filtering a list of dominant language detection jobs. For more information, see the operation.
--
-- /See:/ 'mkKeyPhrasesDetectionJobFilter' smart constructor.
data KeyPhrasesDetectionJobFilter = KeyPhrasesDetectionJobFilter'
  { submitTimeAfter ::
      Lude.Maybe Lude.Timestamp,
    submitTimeBefore ::
      Lude.Maybe Lude.Timestamp,
    jobName :: Lude.Maybe Lude.Text,
    jobStatus :: Lude.Maybe JobStatus
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'KeyPhrasesDetectionJobFilter' with the minimum fields required to make a request.
--
-- * 'jobName' - Filters on the name of the job.
-- * 'jobStatus' - Filters the list of jobs based on job status. Returns only jobs with the specified status.
-- * 'submitTimeAfter' - Filters the list of jobs based on the time that the job was submitted for processing. Returns only jobs submitted after the specified time. Jobs are returned in descending order, newest to oldest.
-- * 'submitTimeBefore' - Filters the list of jobs based on the time that the job was submitted for processing. Returns only jobs submitted before the specified time. Jobs are returned in ascending order, oldest to newest.
mkKeyPhrasesDetectionJobFilter ::
  KeyPhrasesDetectionJobFilter
mkKeyPhrasesDetectionJobFilter =
  KeyPhrasesDetectionJobFilter'
    { submitTimeAfter = Lude.Nothing,
      submitTimeBefore = Lude.Nothing,
      jobName = Lude.Nothing,
      jobStatus = Lude.Nothing
    }

-- | Filters the list of jobs based on the time that the job was submitted for processing. Returns only jobs submitted after the specified time. Jobs are returned in descending order, newest to oldest.
--
-- /Note:/ Consider using 'submitTimeAfter' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
kpdjfSubmitTimeAfter :: Lens.Lens' KeyPhrasesDetectionJobFilter (Lude.Maybe Lude.Timestamp)
kpdjfSubmitTimeAfter = Lens.lens (submitTimeAfter :: KeyPhrasesDetectionJobFilter -> Lude.Maybe Lude.Timestamp) (\s a -> s {submitTimeAfter = a} :: KeyPhrasesDetectionJobFilter)
{-# DEPRECATED kpdjfSubmitTimeAfter "Use generic-lens or generic-optics with 'submitTimeAfter' instead." #-}

-- | Filters the list of jobs based on the time that the job was submitted for processing. Returns only jobs submitted before the specified time. Jobs are returned in ascending order, oldest to newest.
--
-- /Note:/ Consider using 'submitTimeBefore' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
kpdjfSubmitTimeBefore :: Lens.Lens' KeyPhrasesDetectionJobFilter (Lude.Maybe Lude.Timestamp)
kpdjfSubmitTimeBefore = Lens.lens (submitTimeBefore :: KeyPhrasesDetectionJobFilter -> Lude.Maybe Lude.Timestamp) (\s a -> s {submitTimeBefore = a} :: KeyPhrasesDetectionJobFilter)
{-# DEPRECATED kpdjfSubmitTimeBefore "Use generic-lens or generic-optics with 'submitTimeBefore' instead." #-}

-- | Filters on the name of the job.
--
-- /Note:/ Consider using 'jobName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
kpdjfJobName :: Lens.Lens' KeyPhrasesDetectionJobFilter (Lude.Maybe Lude.Text)
kpdjfJobName = Lens.lens (jobName :: KeyPhrasesDetectionJobFilter -> Lude.Maybe Lude.Text) (\s a -> s {jobName = a} :: KeyPhrasesDetectionJobFilter)
{-# DEPRECATED kpdjfJobName "Use generic-lens or generic-optics with 'jobName' instead." #-}

-- | Filters the list of jobs based on job status. Returns only jobs with the specified status.
--
-- /Note:/ Consider using 'jobStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
kpdjfJobStatus :: Lens.Lens' KeyPhrasesDetectionJobFilter (Lude.Maybe JobStatus)
kpdjfJobStatus = Lens.lens (jobStatus :: KeyPhrasesDetectionJobFilter -> Lude.Maybe JobStatus) (\s a -> s {jobStatus = a} :: KeyPhrasesDetectionJobFilter)
{-# DEPRECATED kpdjfJobStatus "Use generic-lens or generic-optics with 'jobStatus' instead." #-}

instance Lude.ToJSON KeyPhrasesDetectionJobFilter where
  toJSON KeyPhrasesDetectionJobFilter' {..} =
    Lude.object
      ( Lude.catMaybes
          [ ("SubmitTimeAfter" Lude..=) Lude.<$> submitTimeAfter,
            ("SubmitTimeBefore" Lude..=) Lude.<$> submitTimeBefore,
            ("JobName" Lude..=) Lude.<$> jobName,
            ("JobStatus" Lude..=) Lude.<$> jobStatus
          ]
      )