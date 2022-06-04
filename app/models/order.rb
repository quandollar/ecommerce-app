class Order < ApplicationRecord
    enum pay_type: {
        "Check"             => 0,
        "Credit card"       => 1,
        "Purchase order"    => 2
    }

    validates :name, :address, :email, presence: true

    # ensure user selects one of the pay types (instead of leaving the selection at the prompt)
    validates :pay_type, inclusion: pay_types.keys
end
