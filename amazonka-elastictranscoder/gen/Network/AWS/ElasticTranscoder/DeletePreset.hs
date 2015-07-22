{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticTranscoder.DeletePreset
-- Copyright   : (c) 2013-2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)
--
-- The DeletePreset operation removes a preset that you\'ve added in an AWS
-- region.
--
-- You can\'t delete the default presets that are included with Elastic
-- Transcoder.
--
-- <http://docs.aws.amazon.com/elastictranscoder/latest/developerguide/DeletePreset.html>
module Network.AWS.ElasticTranscoder.DeletePreset
    (
    -- * Request
      DeletePreset
    -- ** Request constructor
    , deletePreset
    -- ** Request lenses
    , dprqId

    -- * Response
    , DeletePresetResponse
    -- ** Response constructor
    , deletePresetResponse
    -- ** Response lenses
    , dprsStatus
    ) where

import           Network.AWS.ElasticTranscoder.Types
import           Network.AWS.Prelude
import           Network.AWS.Request
import           Network.AWS.Response

-- | The @DeletePresetRequest@ structure.
--
-- /See:/ 'deletePreset' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'dprqId'
newtype DeletePreset = DeletePreset'
    { _dprqId :: Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | 'DeletePreset' smart constructor.
deletePreset :: Text -> DeletePreset
deletePreset pId =
    DeletePreset'
    { _dprqId = pId
    }

-- | The identifier of the preset for which you want to get detailed
-- information.
dprqId :: Lens' DeletePreset Text
dprqId = lens _dprqId (\ s a -> s{_dprqId = a});

instance AWSRequest DeletePreset where
        type Sv DeletePreset = ElasticTranscoder
        type Rs DeletePreset = DeletePresetResponse
        request = delete
        response
          = receiveJSON
              (\ s h x ->
                 DeletePresetResponse' <$> (pure (fromEnum s)))

instance ToHeaders DeletePreset where
        toHeaders = const mempty

instance ToPath DeletePreset where
        toPath DeletePreset'{..}
          = mconcat ["/2012-09-25/presets/", toText _dprqId]

instance ToQuery DeletePreset where
        toQuery = const mempty

-- | The @DeletePresetResponse@ structure.
--
-- /See:/ 'deletePresetResponse' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'dprsStatus'
newtype DeletePresetResponse = DeletePresetResponse'
    { _dprsStatus :: Int
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | 'DeletePresetResponse' smart constructor.
deletePresetResponse :: Int -> DeletePresetResponse
deletePresetResponse pStatus =
    DeletePresetResponse'
    { _dprsStatus = pStatus
    }

-- | FIXME: Undocumented member.
dprsStatus :: Lens' DeletePresetResponse Int
dprsStatus = lens _dprsStatus (\ s a -> s{_dprsStatus = a});
