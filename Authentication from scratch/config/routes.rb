Rails.application.routes.draw do
  root 'pages#index'

  get  '/register' => 'users#new'
  post '/users'    => 'users#create'

  get '/login'    => 'sessions#new'
  post '/login'   => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
end
