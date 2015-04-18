# Rails experiments

## Add twitter bootstrap

Install the gem, add gem to Gemfile and run bundle command to install it.

    gem 'twitter-bootstrap-rails'

Run the generator

    rails generate bootstrap:install static

Theme a layout

    rails g bootstrap:layout application
    rails g bootstrap:layout landing

## Useful command line generators

    $ rails g controller Pages index --no-stylesheets --no-javascripts
    $ rails generate model Post title:string content:text score:integer user:references

reverting change

    $ rails destroy controller Pages
