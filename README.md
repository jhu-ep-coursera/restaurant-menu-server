# What's this?

This is the backend to the restaurant app.

# Which resources display?

1. Categories
2. Menu Items

# URL patterns

1. Show me all categories (`http://<host>/categories.json`)
3. Show me all menu items (`http://<host>/menu_items.json`)
5. Show me all menu items for a specific category together with info about that category (`http://<host>/menu_items.json?category=<category>`)

# Deployed at Heroku

* http://davids-restaurant.herokuapp.com/categories.json
* http://davids-restaurant.herokuapp.com/menu_items.json
* http://davids-restaurant.herokuapp.com/menu_items.json?category=B

# Deploying the app locally

1. Make sure you have Ruby on Rails 4.2.3+ installed. (Do you need a Ruby on Rails introduction? You can find one [here](https://www.coursera.org/learn/ruby-on-rails-intro).)
2. Clone this repo from Github
3. `bundle --without production`
4. `rake db:migrate`
5. `rake db:seed`
6. `rails server`

You should now be able to access the following URLs locally:

1. http://localhost:3000/categories.json
3. http://localhost:3000/menu_items.json
5. http://localhost:3000/menu_items.json?category=B
