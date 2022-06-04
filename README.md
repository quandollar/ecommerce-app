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

We start with the app's homepage after we have created an account and signed in.
![homepage](https://raw.githubusercontent.com/quandollar/tweet_scheduler/main/app/assets/images/1-homepage.png)

Once connected to Twitter through their API and authorizing the Twitter app, we're taken to the Twitter Accounts page. Here, we can connect to more Twitter accounts as needed or disconnect existing accounts.
![accounts](https://raw.githubusercontent.com/quandollar/tweet_scheduler/main/app/assets/images/2-twitter.png)

*All due credits go to [Chris Oliver](https://twitter.com/excid3), my Ruby on Rails sensei.*