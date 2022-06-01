class Cart < ApplicationRecord
    # the dependent part tells Rails to delete a cart's line items if that cart is deleted
    has_many :line_items, dependent: :destroy 
end
