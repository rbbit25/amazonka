-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.LexModels.Types.SlotDefaultValue
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.LexModels.Types.SlotDefaultValue
  ( SlotDefaultValue (..),

    -- * Smart constructor
    mkSlotDefaultValue,

    -- * Lenses
    sdvDefaultValue,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | A default value for a slot.
--
-- /See:/ 'mkSlotDefaultValue' smart constructor.
newtype SlotDefaultValue = SlotDefaultValue'
  { defaultValue ::
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

-- | Creates a value of 'SlotDefaultValue' with the minimum fields required to make a request.
--
-- * 'defaultValue' - The default value for the slot. You can specify one of the following:
--
--
--     * @#context-name.slot-name@ - The slot value "slot-name" in the context "context-name."
--
--
--     * @{attribute}@ - The slot value of the session attribute "attribute."
--
--
--     * @'value'@ - The discrete value "value."
mkSlotDefaultValue ::
  -- | 'defaultValue'
  Lude.Text ->
  SlotDefaultValue
mkSlotDefaultValue pDefaultValue_ =
  SlotDefaultValue' {defaultValue = pDefaultValue_}

-- | The default value for the slot. You can specify one of the following:
--
--
--     * @#context-name.slot-name@ - The slot value "slot-name" in the context "context-name."
--
--
--     * @{attribute}@ - The slot value of the session attribute "attribute."
--
--
--     * @'value'@ - The discrete value "value."
--
--
--
-- /Note:/ Consider using 'defaultValue' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sdvDefaultValue :: Lens.Lens' SlotDefaultValue Lude.Text
sdvDefaultValue = Lens.lens (defaultValue :: SlotDefaultValue -> Lude.Text) (\s a -> s {defaultValue = a} :: SlotDefaultValue)
{-# DEPRECATED sdvDefaultValue "Use generic-lens or generic-optics with 'defaultValue' instead." #-}

instance Lude.FromJSON SlotDefaultValue where
  parseJSON =
    Lude.withObject
      "SlotDefaultValue"
      (\x -> SlotDefaultValue' Lude.<$> (x Lude..: "defaultValue"))

instance Lude.ToJSON SlotDefaultValue where
  toJSON SlotDefaultValue' {..} =
    Lude.object
      (Lude.catMaybes [Lude.Just ("defaultValue" Lude..= defaultValue)])