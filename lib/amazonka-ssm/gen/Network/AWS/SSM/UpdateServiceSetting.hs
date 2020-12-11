{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.UpdateServiceSetting
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- @ServiceSetting@ is an account-level setting for an AWS service. This setting defines how a user interacts with or uses a service or a feature of a service. For example, if an AWS service charges money to the account based on feature or service usage, then the AWS service team might create a default setting of "false". This means the user can't use this feature unless they change the setting to "true" and intentionally opt in for a paid feature.
--
-- Services map a @SettingId@ object to a setting value. AWS services teams define the default value for a @SettingId@ . You can't create a new @SettingId@ , but you can overwrite the default value if you have the @ssm:UpdateServiceSetting@ permission for the setting. Use the 'GetServiceSetting' API action to view the current value. Or, use the 'ResetServiceSetting' to change the value back to the original value defined by the AWS service team.
-- Update the service setting for the account.
module Network.AWS.SSM.UpdateServiceSetting
  ( -- * Creating a request
    UpdateServiceSetting (..),
    mkUpdateServiceSetting,

    -- ** Request lenses
    ussSettingId,
    ussSettingValue,

    -- * Destructuring the response
    UpdateServiceSettingResponse (..),
    mkUpdateServiceSettingResponse,

    -- ** Response lenses
    ussrsResponseStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude
import qualified Network.AWS.Request as Req
import qualified Network.AWS.Response as Res
import Network.AWS.SSM.Types

-- | The request body of the UpdateServiceSetting API action.
--
-- /See:/ 'mkUpdateServiceSetting' smart constructor.
data UpdateServiceSetting = UpdateServiceSetting'
  { settingId ::
      Lude.Text,
    settingValue :: Lude.Text
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'UpdateServiceSetting' with the minimum fields required to make a request.
--
-- * 'settingId' - The Amazon Resource Name (ARN) of the service setting to reset. For example, @arn:aws:ssm:us-east-1:111122223333:servicesetting/ssm/parameter-store/high-throughput-enabled@ . The setting ID can be one of the following.
--
--
--     * @/ssm/parameter-store/default-parameter-tier@
--
--
--     * @/ssm/parameter-store/high-throughput-enabled@
--
--
--     * @/ssm/managed-instance/activation-tier@
--
--
-- * 'settingValue' - The new value to specify for the service setting. For the @/ssm/parameter-store/default-parameter-tier@ setting ID, the setting value can be one of the following.
--
--
--     * Standard
--
--
--     * Advanced
--
--
--     * Intelligent-Tiering
--
--
-- For the @/ssm/parameter-store/high-throughput-enabled@ , and @/ssm/managed-instance/activation-tier@ setting IDs, the setting value can be true or false.
mkUpdateServiceSetting ::
  -- | 'settingId'
  Lude.Text ->
  -- | 'settingValue'
  Lude.Text ->
  UpdateServiceSetting
mkUpdateServiceSetting pSettingId_ pSettingValue_ =
  UpdateServiceSetting'
    { settingId = pSettingId_,
      settingValue = pSettingValue_
    }

-- | The Amazon Resource Name (ARN) of the service setting to reset. For example, @arn:aws:ssm:us-east-1:111122223333:servicesetting/ssm/parameter-store/high-throughput-enabled@ . The setting ID can be one of the following.
--
--
--     * @/ssm/parameter-store/default-parameter-tier@
--
--
--     * @/ssm/parameter-store/high-throughput-enabled@
--
--
--     * @/ssm/managed-instance/activation-tier@
--
--
--
-- /Note:/ Consider using 'settingId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ussSettingId :: Lens.Lens' UpdateServiceSetting Lude.Text
ussSettingId = Lens.lens (settingId :: UpdateServiceSetting -> Lude.Text) (\s a -> s {settingId = a} :: UpdateServiceSetting)
{-# DEPRECATED ussSettingId "Use generic-lens or generic-optics with 'settingId' instead." #-}

-- | The new value to specify for the service setting. For the @/ssm/parameter-store/default-parameter-tier@ setting ID, the setting value can be one of the following.
--
--
--     * Standard
--
--
--     * Advanced
--
--
--     * Intelligent-Tiering
--
--
-- For the @/ssm/parameter-store/high-throughput-enabled@ , and @/ssm/managed-instance/activation-tier@ setting IDs, the setting value can be true or false.
--
-- /Note:/ Consider using 'settingValue' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ussSettingValue :: Lens.Lens' UpdateServiceSetting Lude.Text
ussSettingValue = Lens.lens (settingValue :: UpdateServiceSetting -> Lude.Text) (\s a -> s {settingValue = a} :: UpdateServiceSetting)
{-# DEPRECATED ussSettingValue "Use generic-lens or generic-optics with 'settingValue' instead." #-}

instance Lude.AWSRequest UpdateServiceSetting where
  type Rs UpdateServiceSetting = UpdateServiceSettingResponse
  request = Req.postJSON ssmService
  response =
    Res.receiveEmpty
      ( \s h x ->
          UpdateServiceSettingResponse'
            Lude.<$> (Lude.pure (Lude.fromEnum s))
      )

instance Lude.ToHeaders UpdateServiceSetting where
  toHeaders =
    Lude.const
      ( Lude.mconcat
          [ "X-Amz-Target"
              Lude.=# ("AmazonSSM.UpdateServiceSetting" :: Lude.ByteString),
            "Content-Type"
              Lude.=# ("application/x-amz-json-1.1" :: Lude.ByteString)
          ]
      )

instance Lude.ToJSON UpdateServiceSetting where
  toJSON UpdateServiceSetting' {..} =
    Lude.object
      ( Lude.catMaybes
          [ Lude.Just ("SettingId" Lude..= settingId),
            Lude.Just ("SettingValue" Lude..= settingValue)
          ]
      )

instance Lude.ToPath UpdateServiceSetting where
  toPath = Lude.const "/"

instance Lude.ToQuery UpdateServiceSetting where
  toQuery = Lude.const Lude.mempty

-- | The result body of the UpdateServiceSetting API action.
--
-- /See:/ 'mkUpdateServiceSettingResponse' smart constructor.
newtype UpdateServiceSettingResponse = UpdateServiceSettingResponse'
  { responseStatus ::
      Lude.Int
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving newtype (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'UpdateServiceSettingResponse' with the minimum fields required to make a request.
--
-- * 'responseStatus' - The response status code.
mkUpdateServiceSettingResponse ::
  -- | 'responseStatus'
  Lude.Int ->
  UpdateServiceSettingResponse
mkUpdateServiceSettingResponse pResponseStatus_ =
  UpdateServiceSettingResponse' {responseStatus = pResponseStatus_}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ussrsResponseStatus :: Lens.Lens' UpdateServiceSettingResponse Lude.Int
ussrsResponseStatus = Lens.lens (responseStatus :: UpdateServiceSettingResponse -> Lude.Int) (\s a -> s {responseStatus = a} :: UpdateServiceSettingResponse)
{-# DEPRECATED ussrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}