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

Items can be added to cart that lives on the sidebar and dynamically gets updated with changes in quantity. 
Customers can also clear their cart and start over.
![add_to_cart](https://github.com/quandollar/ecommerce-app/blob/main/app/assets/images/add%20to%20cart.gif)

*Credits*