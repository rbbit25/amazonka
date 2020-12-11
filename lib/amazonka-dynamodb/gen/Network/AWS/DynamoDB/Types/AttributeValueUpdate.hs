-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DynamoDB.Types.AttributeValueUpdate
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DynamoDB.Types.AttributeValueUpdate
  ( AttributeValueUpdate (..),

    -- * Smart constructor
    mkAttributeValueUpdate,

    -- * Lenses
    avuValue,
    avuAction,
  )
where

import Network.AWS.DynamoDB.Types.AttributeAction
import Network.AWS.DynamoDB.Types.AttributeValue
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | For the @UpdateItem@ operation, represents the attributes to be modified, the action to perform on each, and the new value for each.
--
-- Attribute values cannot be null; string and binary type attributes must have lengths greater than zero; and set type attributes must not be empty. Requests with empty values will be rejected with a @ValidationException@ exception.
--
-- /See:/ 'mkAttributeValueUpdate' smart constructor.
data AttributeValueUpdate = AttributeValueUpdate'
  { value ::
      Lude.Maybe AttributeValue,
    action :: Lude.Maybe AttributeAction
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'AttributeValueUpdate' with the minimum fields required to make a request.
--
-- * 'action' - Specifies how to perform the update. Valid values are @PUT@ (default), @DELETE@ , and @ADD@ . The behavior depends on whether the specified primary key already exists in the table.
--
-- __If an item with the specified /Key/ is found in the table:__
--
--     * @PUT@ - Adds the specified attribute to the item. If the attribute already exists, it is replaced by the new value.
--
--
--     * @DELETE@ - If no value is specified, the attribute and its value are removed from the item. The data type of the specified value must match the existing value's data type.
-- If a /set/ of values is specified, then those values are subtracted from the old set. For example, if the attribute value was the set @[a,b,c]@ and the @DELETE@ action specified @[a,c]@ , then the final attribute value would be @[b]@ . Specifying an empty set is an error.
--
--
--     * @ADD@ - If the attribute does not already exist, then the attribute and its values are added to the item. If the attribute does exist, then the behavior of @ADD@ depends on the data type of the attribute:
--
--     * If the existing attribute is a number, and if @Value@ is also a number, then the @Value@ is mathematically added to the existing attribute. If @Value@ is a negative number, then it is subtracted from the existing attribute.
--
--
--     * If the existing data type is a set, and if the @Value@ is also a set, then the @Value@ is added to the existing set. (This is a /set/ operation, not mathematical addition.) For example, if the attribute value was the set @[1,2]@ , and the @ADD@ action specified @[3]@ , then the final attribute value would be @[1,2,3]@ . An error occurs if an Add action is specified for a set attribute and the attribute type specified does not match the existing set type.
-- Both sets must have the same primitive data type. For example, if the existing data type is a set of strings, the @Value@ must also be a set of strings. The same holds true for number sets and binary sets.
--
--
-- This action is only valid for an existing attribute whose data type is number or is a set. Do not use @ADD@ for any other data types.
--
--
-- __If no item with the specified /Key/ is found:__
--
--     * @PUT@ - DynamoDB creates a new item with the specified primary key, and then adds the attribute.
--
--
--     * @DELETE@ - Nothing happens; there is no attribute to delete.
--
--
--     * @ADD@ - DynamoDB creates an item with the supplied primary key and number (or set of numbers) for the attribute value. The only data types allowed are number and number set; no other data types can be specified.
--
--
-- * 'value' - Represents the data for an attribute.
--
-- Each attribute value is described as a name-value pair. The name is the data type, and the value is the data itself.
-- For more information, see <https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.NamingRulesDataTypes.html#HowItWorks.DataTypes Data Types> in the /Amazon DynamoDB Developer Guide/ .
mkAttributeValueUpdate ::
  AttributeValueUpdate
mkAttributeValueUpdate =
  AttributeValueUpdate'
    { value = Lude.Nothing,
      action = Lude.Nothing
    }

-- | Represents the data for an attribute.
--
-- Each attribute value is described as a name-value pair. The name is the data type, and the value is the data itself.
-- For more information, see <https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.NamingRulesDataTypes.html#HowItWorks.DataTypes Data Types> in the /Amazon DynamoDB Developer Guide/ .
--
-- /Note:/ Consider using 'value' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
avuValue :: Lens.Lens' AttributeValueUpdate (Lude.Maybe AttributeValue)
avuValue = Lens.lens (value :: AttributeValueUpdate -> Lude.Maybe AttributeValue) (\s a -> s {value = a} :: AttributeValueUpdate)
{-# DEPRECATED avuValue "Use generic-lens or generic-optics with 'value' instead." #-}

-- | Specifies how to perform the update. Valid values are @PUT@ (default), @DELETE@ , and @ADD@ . The behavior depends on whether the specified primary key already exists in the table.
--
-- __If an item with the specified /Key/ is found in the table:__
--
--     * @PUT@ - Adds the specified attribute to the item. If the attribute already exists, it is replaced by the new value.
--
--
--     * @DELETE@ - If no value is specified, the attribute and its value are removed from the item. The data type of the specified value must match the existing value's data type.
-- If a /set/ of values is specified, then those values are subtracted from the old set. For example, if the attribute value was the set @[a,b,c]@ and the @DELETE@ action specified @[a,c]@ , then the final attribute value would be @[b]@ . Specifying an empty set is an error.
--
--
--     * @ADD@ - If the attribute does not already exist, then the attribute and its values are added to the item. If the attribute does exist, then the behavior of @ADD@ depends on the data type of the attribute:
--
--     * If the existing attribute is a number, and if @Value@ is also a number, then the @Value@ is mathematically added to the existing attribute. If @Value@ is a negative number, then it is subtracted from the existing attribute.
--
--
--     * If the existing data type is a set, and if the @Value@ is also a set, then the @Value@ is added to the existing set. (This is a /set/ operation, not mathematical addition.) For example, if the attribute value was the set @[1,2]@ , and the @ADD@ action specified @[3]@ , then the final attribute value would be @[1,2,3]@ . An error occurs if an Add action is specified for a set attribute and the attribute type specified does not match the existing set type.
-- Both sets must have the same primitive data type. For example, if the existing data type is a set of strings, the @Value@ must also be a set of strings. The same holds true for number sets and binary sets.
--
--
-- This action is only valid for an existing attribute whose data type is number or is a set. Do not use @ADD@ for any other data types.
--
--
-- __If no item with the specified /Key/ is found:__
--
--     * @PUT@ - DynamoDB creates a new item with the specified primary key, and then adds the attribute.
--
--
--     * @DELETE@ - Nothing happens; there is no attribute to delete.
--
--
--     * @ADD@ - DynamoDB creates an item with the supplied primary key and number (or set of numbers) for the attribute value. The only data types allowed are number and number set; no other data types can be specified.
--
--
--
-- /Note:/ Consider using 'action' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
avuAction :: Lens.Lens' AttributeValueUpdate (Lude.Maybe AttributeAction)
avuAction = Lens.lens (action :: AttributeValueUpdate -> Lude.Maybe AttributeAction) (\s a -> s {action = a} :: AttributeValueUpdate)
{-# DEPRECATED avuAction "Use generic-lens or generic-optics with 'action' instead." #-}

instance Lude.ToJSON AttributeValueUpdate where
  toJSON AttributeValueUpdate' {..} =
    Lude.object
      ( Lude.catMaybes
          [ ("Value" Lude..=) Lude.<$> value,
            ("Action" Lude..=) Lude.<$> action
          ]
      )