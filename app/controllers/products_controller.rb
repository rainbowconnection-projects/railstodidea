class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def create
    @product = Product.create(product_params)
    if @product.save
      redirect_to :controller => 'admin', action: 'products'
    end
  end

  def show
    @product = Product.find_by(id: params[:id])
    @link = @product.link
    if @link == 'edutab'
      render template: 'products/edu-tab'
    elsif @link == 'digitalfit'
      render template: 'products/digital-fit'
    elsif @link == 'techkids'
      render template: 'products/tech-kids'
    end
  end

  private
  def set_product
    @product = Product.find_by(id: params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :description, :photo)
  end

end
