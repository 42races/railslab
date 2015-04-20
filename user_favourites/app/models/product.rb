class Product < ActiveRecord::Base
  has_many :favourors, class_name: 'UserFavourite'
  has_many :fans, through: :favourors, source: :user
end
