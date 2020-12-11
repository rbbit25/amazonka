{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DirectoryService.CreateDirectory
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a Simple AD directory. For more information, see <https://docs.aws.amazon.com/directoryservice/latest/admin-guide/directory_simple_ad.html Simple Active Directory> in the /AWS Directory Service Admin Guide/ .
--
-- Before you call @CreateDirectory@ , ensure that all of the required permissions have been explicitly granted through a policy. For details about what permissions are required to run the @CreateDirectory@ operation, see <http://docs.aws.amazon.com/directoryservice/latest/admin-guide/UsingWithDS_IAM_ResourcePermissions.html AWS Directory Service API Permissions: Actions, Resources, and Conditions Reference> .
module Network.AWS.DirectoryService.CreateDirectory
  ( -- * Creating a request
    CreateDirectory (..),
    mkCreateDirectory,

    -- ** Request lenses
    cShortName,
    cVPCSettings,
    cDescription,
    cTags,
    cName,
    cPassword,
    cSize,

    -- * Destructuring the response
    CreateDirectoryResponse (..),
    mkCreateDirectoryResponse,

    -- ** Response lenses
    crsDirectoryId,
    crsResponseStatus,
  )
where

import Network.AWS.DirectoryService.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude
import qualified Network.AWS.Request as Req
import qualified Network.AWS.Response as Res

-- | Contains the inputs for the 'CreateDirectory' operation.
--
-- /See:/ 'mkCreateDirectory' smart constructor.
data CreateDirectory = CreateDirectory'
  { shortName ::
      Lude.Maybe Lude.Text,
    vpcSettings :: Lude.Maybe DirectoryVPCSettings,
    description :: Lude.Maybe Lude.Text,
    tags :: Lude.Maybe [Tag],
    name :: Lude.Text,
    password :: Lude.Sensitive Lude.Text,
    size :: DirectorySize
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'CreateDirectory' with the minimum fields required to make a request.
--
-- * 'description' - A description for the directory.
-- * 'name' - The fully qualified name for the directory, such as @corp.example.com@ .
-- * 'password' - The password for the directory administrator. The directory creation process creates a directory administrator account with the user name @Administrator@ and this password.
--
-- If you need to change the password for the administrator account, you can use the 'ResetUserPassword' API call.
-- The regex pattern for this string is made up of the following conditions:
--
--     * Length (?=^.{8,64}$) – Must be between 8 and 64 characters
--
--
-- AND any 3 of the following password complexity rules required by Active Directory:
--
--     * Numbers and upper case and lowercase (?=.*\d)(?=.*[A-Z])(?=.*[a-z])
--
--
--     * Numbers and special characters and lower case (?=.*\d)(?=.*[^A-Za-z0-9\s])(?=.*[a-z])
--
--
--     * Special characters and upper case and lower case (?=.*[^A-Za-z0-9\s])(?=.*[A-Z])(?=.*[a-z])
--
--
--     * Numbers and upper case and special characters (?=.*\d)(?=.*[A-Z])(?=.*[^A-Za-z0-9\s])
--
--
-- For additional information about how Active Directory passwords are enforced, see <https://docs.microsoft.com/en-us/windows/security/threat-protection/security-policy-settings/password-must-meet-complexity-requirements Password must meet complexity requirements> on the Microsoft website.
-- * 'shortName' - The NetBIOS name of the directory, such as @CORP@ .
-- * 'size' - The size of the directory.
-- * 'tags' - The tags to be assigned to the Simple AD directory.
-- * 'vpcSettings' - A 'DirectoryVpcSettings' object that contains additional information for the operation.
mkCreateDirectory ::
  -- | 'name'
  Lude.Text ->
  -- | 'password'
  Lude.Sensitive Lude.Text ->
  -- | 'size'
  DirectorySize ->
  CreateDirectory
mkCreateDirectory pName_ pPassword_ pSize_ =
  CreateDirectory'
    { shortName = Lude.Nothing,
      vpcSettings = Lude.Nothing,
      description = Lude.Nothing,
      tags = Lude.Nothing,
      name = pName_,
      password = pPassword_,
      size = pSize_
    }

-- | The NetBIOS name of the directory, such as @CORP@ .
--
-- /Note:/ Consider using 'shortName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cShortName :: Lens.Lens' CreateDirectory (Lude.Maybe Lude.Text)
cShortName = Lens.lens (shortName :: CreateDirectory -> Lude.Maybe Lude.Text) (\s a -> s {shortName = a} :: CreateDirectory)
{-# DEPRECATED cShortName "Use generic-lens or generic-optics with 'shortName' instead." #-}

-- | A 'DirectoryVpcSettings' object that contains additional information for the operation.
--
-- /Note:/ Consider using 'vpcSettings' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cVPCSettings :: Lens.Lens' CreateDirectory (Lude.Maybe DirectoryVPCSettings)
cVPCSettings = Lens.lens (vpcSettings :: CreateDirectory -> Lude.Maybe DirectoryVPCSettings) (\s a -> s {vpcSettings = a} :: CreateDirectory)
{-# DEPRECATED cVPCSettings "Use generic-lens or generic-optics with 'vpcSettings' instead." #-}

-- | A description for the directory.
--
-- /Note:/ Consider using 'description' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cDescription :: Lens.Lens' CreateDirectory (Lude.Maybe Lude.Text)
cDescription = Lens.lens (description :: CreateDirectory -> Lude.Maybe Lude.Text) (\s a -> s {description = a} :: CreateDirectory)
{-# DEPRECATED cDescription "Use generic-lens or generic-optics with 'description' instead." #-}

-- | The tags to be assigned to the Simple AD directory.
--
-- /Note:/ Consider using 'tags' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cTags :: Lens.Lens' CreateDirectory (Lude.Maybe [Tag])
cTags = Lens.lens (tags :: CreateDirectory -> Lude.Maybe [Tag]) (\s a -> s {tags = a} :: CreateDirectory)
{-# DEPRECATED cTags "Use generic-lens or generic-optics with 'tags' instead." #-}

-- | The fully qualified name for the directory, such as @corp.example.com@ .
--
-- /Note:/ Consider using 'name' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cName :: Lens.Lens' CreateDirectory Lude.Text
cName = Lens.lens (name :: CreateDirectory -> Lude.Text) (\s a -> s {name = a} :: CreateDirectory)
{-# DEPRECATED cName "Use generic-lens or generic-optics with 'name' instead." #-}

-- | The password for the directory administrator. The directory creation process creates a directory administrator account with the user name @Administrator@ and this password.
--
-- If you need to change the password for the administrator account, you can use the 'ResetUserPassword' API call.
-- The regex pattern for this string is made up of the following conditions:
--
--     * Length (?=^.{8,64}$) – Must be between 8 and 64 characters
--
--
-- AND any 3 of the following password complexity rules required by Active Directory:
--
--     * Numbers and upper case and lowercase (?=.*\d)(?=.*[A-Z])(?=.*[a-z])
--
--
--     * Numbers and special characters and lower case (?=.*\d)(?=.*[^A-Za-z0-9\s])(?=.*[a-z])
--
--
--     * Special characters and upper case and lower case (?=.*[^A-Za-z0-9\s])(?=.*[A-Z])(?=.*[a-z])
--
--
--     * Numbers and upper case and special characters (?=.*\d)(?=.*[A-Z])(?=.*[^A-Za-z0-9\s])
--
--
-- For additional information about how Active Directory passwords are enforced, see <https://docs.microsoft.com/en-us/windows/security/threat-protection/security-policy-settings/password-must-meet-complexity-requirements Password must meet complexity requirements> on the Microsoft website.
--
-- /Note:/ Consider using 'password' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cPassword :: Lens.Lens' CreateDirectory (Lude.Sensitive Lude.Text)
cPassword = Lens.lens (password :: CreateDirectory -> Lude.Sensitive Lude.Text) (\s a -> s {password = a} :: CreateDirectory)
{-# DEPRECATED cPassword "Use generic-lens or generic-optics with 'password' instead." #-}

-- | The size of the directory.
--
-- /Note:/ Consider using 'size' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cSize :: Lens.Lens' CreateDirectory DirectorySize
cSize = Lens.lens (size :: CreateDirectory -> DirectorySize) (\s a -> s {size = a} :: CreateDirectory)
{-# DEPRECATED cSize "Use generic-lens or generic-optics with 'size' instead." #-}

instance Lude.AWSRequest CreateDirectory where
  type Rs CreateDirectory = CreateDirectoryResponse
  request = Req.postJSON directoryServiceService
  response =
    Res.receiveJSON
      ( \s h x ->
          CreateDirectoryResponse'
            Lude.<$> (x Lude..?> "DirectoryId") Lude.<*> (Lude.pure (Lude.fromEnum s))
      )

instance Lude.ToHeaders CreateDirectory where
  toHeaders =
    Lude.const
      ( Lude.mconcat
          [ "X-Amz-Target"
              Lude.=# ("DirectoryService_20150416.CreateDirectory" :: Lude.ByteString),
            "Content-Type"
              Lude.=# ("application/x-amz-json-1.1" :: Lude.ByteString)
          ]
      )

instance Lude.ToJSON CreateDirectory where
  toJSON CreateDirectory' {..} =
    Lude.object
      ( Lude.catMaybes
          [ ("ShortName" Lude..=) Lude.<$> shortName,
            ("VpcSettings" Lude..=) Lude.<$> vpcSettings,
            ("Description" Lude..=) Lude.<$> description,
            ("Tags" Lude..=) Lude.<$> tags,
            Lude.Just ("Name" Lude..= name),
            Lude.Just ("Password" Lude..= password),
            Lude.Just ("Size" Lude..= size)
          ]
      )

instance Lude.ToPath CreateDirectory where
  toPath = Lude.const "/"

instance Lude.ToQuery CreateDirectory where
  toQuery = Lude.const Lude.mempty

-- | Contains the results of the 'CreateDirectory' operation.
--
-- /See:/ 'mkCreateDirectoryResponse' smart constructor.
data CreateDirectoryResponse = CreateDirectoryResponse'
  { directoryId ::
      Lude.Maybe Lude.Text,
    responseStatus :: Lude.Int
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'CreateDirectoryResponse' with the minimum fields required to make a request.
--
-- * 'directoryId' - The identifier of the directory that was created.
-- * 'responseStatus' - The response status code.
mkCreateDirectoryResponse ::
  -- | 'responseStatus'
  Lude.Int ->
  CreateDirectoryResponse
mkCreateDirectoryResponse pResponseStatus_ =
  CreateDirectoryResponse'
    { directoryId = Lude.Nothing,
      responseStatus = pResponseStatus_
    }

-- | The identifier of the directory that was created.
--
-- /Note:/ Consider using 'directoryId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
crsDirectoryId :: Lens.Lens' CreateDirectoryResponse (Lude.Maybe Lude.Text)
crsDirectoryId = Lens.lens (directoryId :: CreateDirectoryResponse -> Lude.Maybe Lude.Text) (\s a -> s {directoryId = a} :: CreateDirectoryResponse)
{-# DEPRECATED crsDirectoryId "Use generic-lens or generic-optics with 'directoryId' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
crsResponseStatus :: Lens.Lens' CreateDirectoryResponse Lude.Int
crsResponseStatus = Lens.lens (responseStatus :: CreateDirectoryResponse -> Lude.Int) (\s a -> s {responseStatus = a} :: CreateDirectoryResponse)
{-# DEPRECATED crsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}