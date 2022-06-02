class Cart < ApplicationRecord
    # the dependent part tells Rails to delete a cart's line items if that cart is deleted
    has_many :line_items, dependent: :destroy 

    # does the item being added already exist in cart? if so, increment its quantity. if not, create a new line item
    def add_product(product)
        current_item = line_items.find_by(product_id: product.id)

        if current_item
            current_item.quantity += 1
        else
            current_item = line_items.build(product_id: product.id) # build is just an alias for new
        end

        current_item
    end

    def total_price
        line_items.sum { |item| item.total_price }
    end
end
