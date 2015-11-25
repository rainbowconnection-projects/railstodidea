class HomeController < ApplicationController
  def index
    @articles = Article.all.order(created_at: :desc).limit(3)
    @products = Product.all
    @testimonials = Testimonial.all.order(created_at: :desc).limit(4)
    @projects = Project.all.order(created_at: :desc).limit(4)
  end
end
