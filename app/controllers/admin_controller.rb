class AdminController < ApplicationController
  layout 'admin'
  before_filter :authenticate_admin!


  def index

  end

  def login

  end

  def products
    @products = Product.all.order(created_at: :desc)
    render :template => 'admin/products/index'
  end

  def new_product
    @product = Product.new
    render :template => 'admin/products/create'
  end

  def edit_product
    @product = Product.find_by(params[:id])
    render :template => 'admin/products/edit'
  end

  def testimonials
    @testimonials = Testimonial.all.order(created_at: :desc)
    render :template => 'admin/testimonials/index'
  end

  def new_testimonial
    @testimonial = Testimonial.new
    render :template => 'admin/testimonials/create'
  end

  def edit_testimonial
    @testimonial = Testimonial.find_by(params[:id])
    render :template => 'admin/testimonials/edit'
  end

  def destroy_testimonial
    @testimonial = Testimonial.find_by(id: params[:id])
    @testimonial.destroy
    respond_to do |format|
      format.html { redirect_to admin/testimonial_url, notice: 'Testimonial was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  def projects
    @projects = Project.all
    render :template => 'admin/projects/index'
  end

  def new_project
    @project = Project.new
    render :template => 'admin/projects/create'
  end

  def edit_project
    @project = Project.find_by(:id => params[:id])
    render :template => 'admin/projects/edit'
  end
  def destroy_project
    @project = Project.find_by(id: params[:id])
    @project.destroy
    respond_to do |format|
      format.html { redirect_to admin/testimonial_url, notice: 'Testimonial was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def events
    @events = Event.all.order(created_at: :desc)
    render :template => 'admin/events/index'
  end

  def new_event
    @event = Event.new
    render :template => 'admin/events/create'
  end

  def edit_event
    @event = Event.find_by(params[:id])
    render :template => 'admin/events/edit'
  end

  def destroy_event
    @event = Event.find_by(id: params[:id])
    @event.destroy
    respond_to do |format|
      format.html { redirect_to admin/events_url, notice: 'Tag was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def photos

  end

  def articles
    @articles = Article.all
    render :template => 'admin/articles/index'
  end

  def new_article
    @article = Article.new
    render :template => "admin/articles/new"
  end

  def edit_article
    @article = Article.find_by(id: params[:id]);
    render :template =>  'admin/articles/edit'
  end

  def destroy_article
    @article = Event.find_by(id: params[:id])
    if @event.destroy
      redirect_to :back
    end

  end

  def categories
    @categories = Category.all
    render :template => 'admin/categories/index'
  end
  def new_category
    @category = Category.new
    render :template => "admin/categories/create"
  end

  def edit_category
    @category = Category.find_by(id: params[:id]);
    render :template =>  'admin/categories/edit'
  end

  def destroy_category
    @category = Category.find_by(id: params[:id])
    @category.destroy
    respond_to do |format|
      format.html { redirect_to admin/testimonial_url, notice: 'Testimonial was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

end