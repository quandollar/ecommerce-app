#---
# Excerpted from "Agile Web Development with Rails 7",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit https://pragprog.com/titles/rails7 for more book information.
#---
# encoding: utf-8
Product.delete_all
Product.create!(title: 'Organic Chicken & Sweet Potato',
  description:
    %{<p>
      Our Chicken, Brown Rice, and Sweet Potato kibble recipe is expertly 
      formulated and nutritionist-approved for dogs of any age. Our 
      clean-label dry dog food contains premium proteins like organic 
      chicken, patented probiotics, and a host of functional superfoods.
      </p>},
  image_url: 'organic-chicken-sweet-potato.jpg',
  price: 29.99)
# . . .
Product.create!(title: 'Grain-Free Organic Chicken & Carrot',
  description:
    %{<p>
      Our grain-free Chicken, Sweet Potato, and Carrot kibble recipe is 
      expertly formulated and nutritionist-approved for dogs of any age. Our 
      clean-label dry dog food contains premium proteins like organic chicken, 
      patented probiotics, and functional superfoods.
      </p>},
  image_url: 'grain-free-organic-chicken.jpg',
  price: 27.99)
# . . .

Product.create!(title: 'Salmon & Sweet Potato',
  description:
    %{<p>
      Our Salmon, Brown Rice, and Sweet Potato kibble recipe is expertly 
      formulated for dogs of all ages and nutritionist-approved. Our 
      clean-label dry dog food contains premium proteins like real salmon, 
      patented probiotics, and a host of functional superfoods.
      </p>},
  image_url: 'salmon-sweet-potato.jpg',
  price: 33.99)
