# represents items in cart
class LineItem < ApplicationRecord
  belongs_to :product
  belongs_to :cart
end
