{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.TrainingSpecification
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.TrainingSpecification where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SageMaker.Types.ChannelSpecification
import Network.AWS.SageMaker.Types.HyperParameterSpecification
import Network.AWS.SageMaker.Types.HyperParameterTuningJobObjective
import Network.AWS.SageMaker.Types.MetricDefinition
import Network.AWS.SageMaker.Types.TrainingInstanceType

-- | Defines how the algorithm is used for a training job.
--
--
--
-- /See:/ 'trainingSpecification' smart constructor.
data TrainingSpecification = TrainingSpecification'
  { _tsTrainingImageDigest ::
      !(Maybe Text),
    _tsSupportsDistributedTraining :: !(Maybe Bool),
    _tsSupportedHyperParameters ::
      !(Maybe [HyperParameterSpecification]),
    _tsSupportedTuningJobObjectiveMetrics ::
      !(Maybe [HyperParameterTuningJobObjective]),
    _tsMetricDefinitions ::
      !(Maybe [MetricDefinition]),
    _tsTrainingImage :: !Text,
    _tsSupportedTrainingInstanceTypes ::
      ![TrainingInstanceType],
    _tsTrainingChannels ::
      !(List1 ChannelSpecification)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'TrainingSpecification' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tsTrainingImageDigest' - An MD5 hash of the training algorithm that identifies the Docker image used for training.
--
-- * 'tsSupportsDistributedTraining' - Indicates whether the algorithm supports distributed training. If set to false, buyers can't request more than one instance during training.
--
-- * 'tsSupportedHyperParameters' - A list of the @HyperParameterSpecification@ objects, that define the supported hyperparameters. This is required if the algorithm supports automatic model tuning.>
--
-- * 'tsSupportedTuningJobObjectiveMetrics' - A list of the metrics that the algorithm emits that can be used as the objective metric in a hyperparameter tuning job.
--
-- * 'tsMetricDefinitions' - A list of @MetricDefinition@ objects, which are used for parsing metrics generated by the algorithm.
--
-- * 'tsTrainingImage' - The Amazon ECR registry path of the Docker image that contains the training algorithm.
--
-- * 'tsSupportedTrainingInstanceTypes' - A list of the instance types that this algorithm can use for training.
--
-- * 'tsTrainingChannels' - A list of @ChannelSpecification@ objects, which specify the input sources to be used by the algorithm.
trainingSpecification ::
  -- | 'tsTrainingImage'
  Text ->
  -- | 'tsTrainingChannels'
  NonEmpty ChannelSpecification ->
  TrainingSpecification
trainingSpecification pTrainingImage_ pTrainingChannels_ =
  TrainingSpecification'
    { _tsTrainingImageDigest = Nothing,
      _tsSupportsDistributedTraining = Nothing,
      _tsSupportedHyperParameters = Nothing,
      _tsSupportedTuningJobObjectiveMetrics = Nothing,
      _tsMetricDefinitions = Nothing,
      _tsTrainingImage = pTrainingImage_,
      _tsSupportedTrainingInstanceTypes = mempty,
      _tsTrainingChannels = _List1 # pTrainingChannels_
    }

-- | An MD5 hash of the training algorithm that identifies the Docker image used for training.
tsTrainingImageDigest :: Lens' TrainingSpecification (Maybe Text)
tsTrainingImageDigest = lens _tsTrainingImageDigest (\s a -> s {_tsTrainingImageDigest = a})

-- | Indicates whether the algorithm supports distributed training. If set to false, buyers can't request more than one instance during training.
tsSupportsDistributedTraining :: Lens' TrainingSpecification (Maybe Bool)
tsSupportsDistributedTraining = lens _tsSupportsDistributedTraining (\s a -> s {_tsSupportsDistributedTraining = a})

-- | A list of the @HyperParameterSpecification@ objects, that define the supported hyperparameters. This is required if the algorithm supports automatic model tuning.>
tsSupportedHyperParameters :: Lens' TrainingSpecification [HyperParameterSpecification]
tsSupportedHyperParameters = lens _tsSupportedHyperParameters (\s a -> s {_tsSupportedHyperParameters = a}) . _Default . _Coerce

-- | A list of the metrics that the algorithm emits that can be used as the objective metric in a hyperparameter tuning job.
tsSupportedTuningJobObjectiveMetrics :: Lens' TrainingSpecification [HyperParameterTuningJobObjective]
tsSupportedTuningJobObjectiveMetrics = lens _tsSupportedTuningJobObjectiveMetrics (\s a -> s {_tsSupportedTuningJobObjectiveMetrics = a}) . _Default . _Coerce

-- | A list of @MetricDefinition@ objects, which are used for parsing metrics generated by the algorithm.
tsMetricDefinitions :: Lens' TrainingSpecification [MetricDefinition]
tsMetricDefinitions = lens _tsMetricDefinitions (\s a -> s {_tsMetricDefinitions = a}) . _Default . _Coerce

-- | The Amazon ECR registry path of the Docker image that contains the training algorithm.
tsTrainingImage :: Lens' TrainingSpecification Text
tsTrainingImage = lens _tsTrainingImage (\s a -> s {_tsTrainingImage = a})

-- | A list of the instance types that this algorithm can use for training.
tsSupportedTrainingInstanceTypes :: Lens' TrainingSpecification [TrainingInstanceType]
tsSupportedTrainingInstanceTypes = lens _tsSupportedTrainingInstanceTypes (\s a -> s {_tsSupportedTrainingInstanceTypes = a}) . _Coerce

-- | A list of @ChannelSpecification@ objects, which specify the input sources to be used by the algorithm.
tsTrainingChannels :: Lens' TrainingSpecification (NonEmpty ChannelSpecification)
tsTrainingChannels = lens _tsTrainingChannels (\s a -> s {_tsTrainingChannels = a}) . _List1

instance FromJSON TrainingSpecification where
  parseJSON =
    withObject
      "TrainingSpecification"
      ( \x ->
          TrainingSpecification'
            <$> (x .:? "TrainingImageDigest")
            <*> (x .:? "SupportsDistributedTraining")
            <*> (x .:? "SupportedHyperParameters" .!= mempty)
            <*> (x .:? "SupportedTuningJobObjectiveMetrics" .!= mempty)
            <*> (x .:? "MetricDefinitions" .!= mempty)
            <*> (x .: "TrainingImage")
            <*> (x .:? "SupportedTrainingInstanceTypes" .!= mempty)
            <*> (x .: "TrainingChannels")
      )

instance Hashable TrainingSpecification

instance NFData TrainingSpecification

instance ToJSON TrainingSpecification where
  toJSON TrainingSpecification' {..} =
    object
      ( catMaybes
          [ ("TrainingImageDigest" .=) <$> _tsTrainingImageDigest,
            ("SupportsDistributedTraining" .=)
              <$> _tsSupportsDistributedTraining,
            ("SupportedHyperParameters" .=) <$> _tsSupportedHyperParameters,
            ("SupportedTuningJobObjectiveMetrics" .=)
              <$> _tsSupportedTuningJobObjectiveMetrics,
            ("MetricDefinitions" .=) <$> _tsMetricDefinitions,
            Just ("TrainingImage" .= _tsTrainingImage),
            Just
              ( "SupportedTrainingInstanceTypes"
                  .= _tsSupportedTrainingInstanceTypes
              ),
            Just ("TrainingChannels" .= _tsTrainingChannels)
          ]
      )
