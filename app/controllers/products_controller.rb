class ProductsController < ApplicationController

  def index

  end

  def create
   @product = Product.create(product_params)
    if @product.save
      redirect_to :controller => 'admin', action: 'products'
    end
  end

  private
  def product_params
    params.require(:product).permit(:name,:description,:photo)
  end

end
