class FavouritesController < ApplicationController
  before_action :authenticate_user!
  before_action :load_product

  def create
    f = current_user.favourites.new(product: @product)
    f.save
    redirect_to @product
  end

  def destroy
    f = current_user.favourites.where(product: @product).first
    if f
      f.destroy
      redirect_to @product
    end
  end

  private

  def load_product
    @product = Product.find(params[:product_id])
  end
end
