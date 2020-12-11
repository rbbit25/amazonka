-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.SchemaListItem
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.SchemaListItem
  ( SchemaListItem (..),

    -- * Smart constructor
    mkSchemaListItem,

    -- * Lenses
    sliRegistryName,
    sliCreatedTime,
    sliSchemaStatus,
    sliSchemaName,
    sliSchemaARN,
    sliUpdatedTime,
    sliDescription,
  )
where

import Network.AWS.Glue.Types.SchemaStatus
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | An object that contains minimal details for a schema.
--
-- /See:/ 'mkSchemaListItem' smart constructor.
data SchemaListItem = SchemaListItem'
  { registryName ::
      Lude.Maybe Lude.Text,
    createdTime :: Lude.Maybe Lude.Text,
    schemaStatus :: Lude.Maybe SchemaStatus,
    schemaName :: Lude.Maybe Lude.Text,
    schemaARN :: Lude.Maybe Lude.Text,
    updatedTime :: Lude.Maybe Lude.Text,
    description :: Lude.Maybe Lude.Text
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'SchemaListItem' with the minimum fields required to make a request.
--
-- * 'createdTime' - The date and time that a schema was created.
-- * 'description' - A description for the schema.
-- * 'registryName' - the name of the registry where the schema resides.
-- * 'schemaARN' - The Amazon Resource Name (ARN) for the schema.
-- * 'schemaName' - The name of the schema.
-- * 'schemaStatus' - The status of the schema.
-- * 'updatedTime' - The date and time that a schema was updated.
mkSchemaListItem ::
  SchemaListItem
mkSchemaListItem =
  SchemaListItem'
    { registryName = Lude.Nothing,
      createdTime = Lude.Nothing,
      schemaStatus = Lude.Nothing,
      schemaName = Lude.Nothing,
      schemaARN = Lude.Nothing,
      updatedTime = Lude.Nothing,
      description = Lude.Nothing
    }

-- | the name of the registry where the schema resides.
--
-- /Note:/ Consider using 'registryName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sliRegistryName :: Lens.Lens' SchemaListItem (Lude.Maybe Lude.Text)
sliRegistryName = Lens.lens (registryName :: SchemaListItem -> Lude.Maybe Lude.Text) (\s a -> s {registryName = a} :: SchemaListItem)
{-# DEPRECATED sliRegistryName "Use generic-lens or generic-optics with 'registryName' instead." #-}

-- | The date and time that a schema was created.
--
-- /Note:/ Consider using 'createdTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sliCreatedTime :: Lens.Lens' SchemaListItem (Lude.Maybe Lude.Text)
sliCreatedTime = Lens.lens (createdTime :: SchemaListItem -> Lude.Maybe Lude.Text) (\s a -> s {createdTime = a} :: SchemaListItem)
{-# DEPRECATED sliCreatedTime "Use generic-lens or generic-optics with 'createdTime' instead." #-}

-- | The status of the schema.
--
-- /Note:/ Consider using 'schemaStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sliSchemaStatus :: Lens.Lens' SchemaListItem (Lude.Maybe SchemaStatus)
sliSchemaStatus = Lens.lens (schemaStatus :: SchemaListItem -> Lude.Maybe SchemaStatus) (\s a -> s {schemaStatus = a} :: SchemaListItem)
{-# DEPRECATED sliSchemaStatus "Use generic-lens or generic-optics with 'schemaStatus' instead." #-}

-- | The name of the schema.
--
-- /Note:/ Consider using 'schemaName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sliSchemaName :: Lens.Lens' SchemaListItem (Lude.Maybe Lude.Text)
sliSchemaName = Lens.lens (schemaName :: SchemaListItem -> Lude.Maybe Lude.Text) (\s a -> s {schemaName = a} :: SchemaListItem)
{-# DEPRECATED sliSchemaName "Use generic-lens or generic-optics with 'schemaName' instead." #-}

-- | The Amazon Resource Name (ARN) for the schema.
--
-- /Note:/ Consider using 'schemaARN' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sliSchemaARN :: Lens.Lens' SchemaListItem (Lude.Maybe Lude.Text)
sliSchemaARN = Lens.lens (schemaARN :: SchemaListItem -> Lude.Maybe Lude.Text) (\s a -> s {schemaARN = a} :: SchemaListItem)
{-# DEPRECATED sliSchemaARN "Use generic-lens or generic-optics with 'schemaARN' instead." #-}

-- | The date and time that a schema was updated.
--
-- /Note:/ Consider using 'updatedTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sliUpdatedTime :: Lens.Lens' SchemaListItem (Lude.Maybe Lude.Text)
sliUpdatedTime = Lens.lens (updatedTime :: SchemaListItem -> Lude.Maybe Lude.Text) (\s a -> s {updatedTime = a} :: SchemaListItem)
{-# DEPRECATED sliUpdatedTime "Use generic-lens or generic-optics with 'updatedTime' instead." #-}

-- | A description for the schema.
--
-- /Note:/ Consider using 'description' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sliDescription :: Lens.Lens' SchemaListItem (Lude.Maybe Lude.Text)
sliDescription = Lens.lens (description :: SchemaListItem -> Lude.Maybe Lude.Text) (\s a -> s {description = a} :: SchemaListItem)
{-# DEPRECATED sliDescription "Use generic-lens or generic-optics with 'description' instead." #-}

instance Lude.FromJSON SchemaListItem where
  parseJSON =
    Lude.withObject
      "SchemaListItem"
      ( \x ->
          SchemaListItem'
            Lude.<$> (x Lude..:? "RegistryName")
            Lude.<*> (x Lude..:? "CreatedTime")
            Lude.<*> (x Lude..:? "SchemaStatus")
            Lude.<*> (x Lude..:? "SchemaName")
            Lude.<*> (x Lude..:? "SchemaArn")
            Lude.<*> (x Lude..:? "UpdatedTime")
            Lude.<*> (x Lude..:? "Description")
      )