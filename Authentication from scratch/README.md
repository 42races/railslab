## Authentication from scratch

Create a user model

    $ rails generate model user username:string password_digest:string
    $ rails generate controller Users new create --no-stylesheets --no-javascripts
    $ rails generate controller Sessions new create --no-stylesheets --no-javascripts
