class Product < ApplicationRecord

    # ensure that these fields are filled out
    validates :title, :description, :image_url, presence: true 

    # ensure that price >= $0.01
    validates :price, numericality: { greater_than_or_equal_to: 0.01 }

    # ensure that all products titles are unique
    validates :title, uniqueness: true

    # ensure the image file has the correct formats
    # allow_blank prevent multiple error messages when this field is blank
    validates :image_url, allow_blank: true, format: {
        with: %r{\.(gif|jpg|png)\z}i,
        message: 'must be a URL for GIF, JPG or PNG image.'
        }
    
    has_many :line_items # items in cart
    before_destroy :ensure_not_referenced_by_any_line_item
    
    private
    
    # ensure that there are no cart's line items referencing this product
    def ensure_not_referenced_by_any_line_item
        unless line_items.empty?
            errors.add(:base, 'Line Items present')
            throw :abort # cancel the destroy action
        end
    end

end
