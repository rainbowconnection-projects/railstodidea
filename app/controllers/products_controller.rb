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
    @product = Product.where(name: params[:name]).first
    @team = @product.try(:team).try(:persons)

    @gallery = @product.try(:gallery).try(:photos)
    @link = strip_spaces_downcase params[:name].to_s


  end

  def strip_spaces_downcase(string)
    return string.split.join('').downcase
  end

  def digital_fit
    @product = Product.find_by(link: 'digitalfit')
    render template: 'products/digital-fit'
  end

  def tech_kids
    @product = Product.find_by(link: 'techkids')
    render template: 'products/tech-kids'
  end

  def edu_tab
    @product = Product.find_by(link: 'digitalfit')
    render template: 'products/edu-tab'
  end

  private
  def set_product
    @product = Product.find_by(id: params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :description, :photo)
  end

end
