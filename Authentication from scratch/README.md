## Authentication from scratch

Create a user model

    $ rails generate model user username:string password_digest:string

Create users controller and sessions controller

    $ rails generate controller Users new create --no-stylesheets --no-javascripts
    $ rails generate controller Sessions new create --no-stylesheets --no-javascripts

Add necessary routes

    get  '/register' => 'users#new'
    post '/users'    => 'users#create'

    get '/login'    => 'sessions#new'
    post '/login'   => 'sessions#create'
    delete 'logout' => 'sessions#destroy'

The code is self explanatory
