class ShoppingList < ApplicationRecord
    has_many :shopping_items
    accepts_nested_attributes_for :shopping_items, allow_destroy: true
end
