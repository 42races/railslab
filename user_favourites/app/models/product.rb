class Product < ActiveRecord::Base
  has_many :favourors, class_name: 'UserFavourite'
  has_many :users, through: :user_favourites
end
