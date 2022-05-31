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
end
