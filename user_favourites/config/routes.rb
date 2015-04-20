Rails.application.routes.draw do

  post 'favourite'   => 'favourites#create'
  delete 'unfavourite' => 'favourites#destroy'

  resources :products

  devise_for :users
  root 'pages#index'
end
