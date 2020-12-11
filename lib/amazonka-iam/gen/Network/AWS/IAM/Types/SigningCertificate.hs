-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IAM.Types.SigningCertificate
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IAM.Types.SigningCertificate
  ( SigningCertificate (..),

    -- * Smart constructor
    mkSigningCertificate,

    -- * Lenses
    scUploadDate,
    scUserName,
    scCertificateId,
    scCertificateBody,
    scStatus,
  )
where

import Network.AWS.IAM.Types.StatusType
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | Contains information about an X.509 signing certificate.
--
-- This data type is used as a response element in the 'UploadSigningCertificate' and 'ListSigningCertificates' operations.
--
-- /See:/ 'mkSigningCertificate' smart constructor.
data SigningCertificate = SigningCertificate'
  { uploadDate ::
      Lude.Maybe Lude.ISO8601,
    userName :: Lude.Text,
    certificateId :: Lude.Text,
    certificateBody :: Lude.Text,
    status :: StatusType
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'SigningCertificate' with the minimum fields required to make a request.
--
-- * 'certificateBody' - The contents of the signing certificate.
-- * 'certificateId' - The ID for the signing certificate.
-- * 'status' - The status of the signing certificate. @Active@ means that the key is valid for API calls, while @Inactive@ means it is not.
-- * 'uploadDate' - The date when the signing certificate was uploaded.
-- * 'userName' - The name of the user the signing certificate is associated with.
mkSigningCertificate ::
  -- | 'userName'
  Lude.Text ->
  -- | 'certificateId'
  Lude.Text ->
  -- | 'certificateBody'
  Lude.Text ->
  -- | 'status'
  StatusType ->
  SigningCertificate
mkSigningCertificate
  pUserName_
  pCertificateId_
  pCertificateBody_
  pStatus_ =
    SigningCertificate'
      { uploadDate = Lude.Nothing,
        userName = pUserName_,
        certificateId = pCertificateId_,
        certificateBody = pCertificateBody_,
        status = pStatus_
      }

-- | The date when the signing certificate was uploaded.
--
-- /Note:/ Consider using 'uploadDate' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
scUploadDate :: Lens.Lens' SigningCertificate (Lude.Maybe Lude.ISO8601)
scUploadDate = Lens.lens (uploadDate :: SigningCertificate -> Lude.Maybe Lude.ISO8601) (\s a -> s {uploadDate = a} :: SigningCertificate)
{-# DEPRECATED scUploadDate "Use generic-lens or generic-optics with 'uploadDate' instead." #-}

-- | The name of the user the signing certificate is associated with.
--
-- /Note:/ Consider using 'userName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
scUserName :: Lens.Lens' SigningCertificate Lude.Text
scUserName = Lens.lens (userName :: SigningCertificate -> Lude.Text) (\s a -> s {userName = a} :: SigningCertificate)
{-# DEPRECATED scUserName "Use generic-lens or generic-optics with 'userName' instead." #-}

-- | The ID for the signing certificate.
--
-- /Note:/ Consider using 'certificateId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
scCertificateId :: Lens.Lens' SigningCertificate Lude.Text
scCertificateId = Lens.lens (certificateId :: SigningCertificate -> Lude.Text) (\s a -> s {certificateId = a} :: SigningCertificate)
{-# DEPRECATED scCertificateId "Use generic-lens or generic-optics with 'certificateId' instead." #-}

-- | The contents of the signing certificate.
--
-- /Note:/ Consider using 'certificateBody' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
scCertificateBody :: Lens.Lens' SigningCertificate Lude.Text
scCertificateBody = Lens.lens (certificateBody :: SigningCertificate -> Lude.Text) (\s a -> s {certificateBody = a} :: SigningCertificate)
{-# DEPRECATED scCertificateBody "Use generic-lens or generic-optics with 'certificateBody' instead." #-}

-- | The status of the signing certificate. @Active@ means that the key is valid for API calls, while @Inactive@ means it is not.
--
-- /Note:/ Consider using 'status' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
scStatus :: Lens.Lens' SigningCertificate StatusType
scStatus = Lens.lens (status :: SigningCertificate -> StatusType) (\s a -> s {status = a} :: SigningCertificate)
{-# DEPRECATED scStatus "Use generic-lens or generic-optics with 'status' instead." #-}

instance Lude.FromXML SigningCertificate where
  parseXML x =
    SigningCertificate'
      Lude.<$> (x Lude..@? "UploadDate")
      Lude.<*> (x Lude..@ "UserName")
      Lude.<*> (x Lude..@ "CertificateId")
      Lude.<*> (x Lude..@ "CertificateBody")
      Lude.<*> (x Lude..@ "Status")