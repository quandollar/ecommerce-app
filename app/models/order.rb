class Order < ApplicationRecord
    has_many :line_items, dependent: :destroy

    enum pay_type: {
        "Check"             => 0,
        "Credit card"       => 1,
        "Purchase order"    => 2
    }

    validates :name, :address, :email, presence: true

    # ensure user selects one of the pay types (instead of leaving the selection at the prompt)
    validates :pay_type, inclusion: pay_types.keys

    def add_line_items_from_cart(cart)
        cart.line_items.each do |item|
            # disassociate the line item from the cart instance so that
            # the item doesn't get destroy when we destroy the cart
            item.cart_id = nil
            # add item itself to the line_items collection for the order
            line_items << item
        end
    end
end
