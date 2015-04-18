# Rails experiments

## Add twitter bootstrap

Install the gem, add gem to Gemfile and run bundle command to install it.

    gem 'twitter-bootstrap-rails'

Run the generator

    rails generate bootstrap:install static

Theme a layout

    rails g bootstrap:layout application

## Generators on command line

    $ rails g controller Pages index --no-stylesheets --no-javascripts
    $ rails generate model Post title:string content:text score:integer user:references

reverting

    $ rails destroy controller Pages

## Authentication from scratch

Create a user model

    $ rails generate model user username:string password_digest:string
    $ rails generate controller Users new create --no-stylesheets --no-javascripts
    $ rails generate controller Sessions new create --no-stylesheets --no-javascripts
