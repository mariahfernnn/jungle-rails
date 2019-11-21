# Jungle

**Jungle** is a mini e-commerce application built with Rails 4.2 for purposes of teaching Rails by example.

## Screenshots

###### Feature: Sold Out Badge

!["Sold Out Badge"](https://github.com/mariahfernnn/jungle-rails/blob/master/docs/sold-out-badge.png?raw=true)

###### Feature: Admin Categories

!["Category List"](https://github.com/mariahfernnn/jungle-rails/blob/master/docs/admin-categories.png?raw=true)
!["Create a new category"](https://github.com/mariahfernnn/jungle-rails/blob/master/docs/create-category.png?raw=true)

###### Enhancement: Order Details Page

!["Order Details"](https://github.com/mariahfernnn/jungle-rails/blob/master/docs/order-details.png?raw=true)

###### Bug: Checking Out with Empty Cart

!["Empty Cart"](https://github.com/mariahfernnn/jungle-rails/blob/master/docs/empty-cart-new.png?raw=true)

## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rake db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe
