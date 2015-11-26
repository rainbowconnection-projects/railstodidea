class AdminController < ApplicationController
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

  def photos

  end

  def articles
    @articles = Article.all
    render :template => 'admin/articles/index'
  end

  def new_article
    @article = Article.new
    render :template => "admin/articles/create"
  end

  def edit_article
    @article = Article.find_by(id: params[:id]);
    render :template =>  'admin/articles/edit'
  end

  def create_article

  end
end