# Ecommerce App
This is a toy e-commerce app that sells dog food. 

It was built using the following technologies:
- Ruby 3.1.2
- Rails 7.0.3
- PostgreSQL 14.2, a more powerful database vs Rails' default SQLite
- Tailwind CSS, for quick and beautiful frontend design
- Rails' Action Cable, which integrates with WebSockets and dynamically broadcasts product changes to users
- Rails' Stimulus, to add fields dynamically to the order form in lieu of jQuery

## Quick Demo

The homepage:
![homepage](https://github.com/quandollar/ecommerce-app/blob/main/app/assets/images/home.png)

We can add, edit, and delete products by navigating to /products. In the real world, this should be
guarded behind a user authentication system that permits admin users only.
![edit](https://github.com/quandollar/ecommerce-app/blob/main/app/assets/images/edit%20products.gif)

Back to the home page, items can be added to cart that lives on the sidebar and dynamically gets 
updated with changes in quantity. Customers can clear their cart and start over if needed.
![add_to_cart](https://github.com/quandollar/ecommerce-app/blob/main/app/assets/images/add%20to%20cart.gif)

Once customers are ready, they can click checkout, which opens up the order form. Here, selection of 
payment method will dynamically show additional fields for the customers to fill out. After the order is
submitted, the customer is taken back to the home page and the cart is cleared.
![checkout](https://github.com/quandollar/ecommerce-app/blob/main/app/assets/images/checkout.gif)

*Credits to the folks at [The Programmatic Bookshelf](https://pragprog.com/) publication for their thorough Rails resources.*
*Logo provided for free by [Icons8](https://icons8.com/).*
*Product images and details are from [Jinx](https://www.thinkjinx.com/).*