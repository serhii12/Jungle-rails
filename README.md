# Jungle Rails

A mini e-commerce application built with Rails 4.2. Applied previous research tactics to become familiar with new paradigms, language and frameworks. Able to implement features without thorough explanation.

## Getting Started

1. Fork or Clone
2. Run `bundle install` to install dependencies
3. Create `config/database.yml` by copying `config/database.example.yml`
4. Create `config/secrets.yml` by copying `config/secrets.example.yml`
5. Run `bin/rake db:reset` to create, load and seed db
6. Create .env file based on .env.example
7. Sign up for a Stripe account
8. Put Stripe (test) keys into appropriate .env vars
9. Run `bin/rails s -b 0.0.0.0` to start the server

## Implemented the following features for Jungle:

* **Sold Out Badge**: Implemented boolean function to display badge when inventory 0.
* **Admin Categories**: Created restful routes to be able to create new categories within the admin namespace.
* **User Authentication**: User is able to sign up/login to Jungle where password is encrypted and email is validated through uniqueness to ensure non existing user.
* **Enhanced Order Page**: Order details shown with description, quantity and cart total upon successful payment.
* **Confirmation Email**: Email is sent to user to confirm purchase with order details. In order to view an email please visit `http://localhost:3000/letter_opener`
* **Product Ratings**: Users logged in are able to leave reviews for each product and can delete reviews. Visitors are able to see product ratings, but must be logged in in order to leaver review.

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

* Rails
* Ruby
* RSpec
* Poltergeist/Capybara
* ERB
* Boostrap