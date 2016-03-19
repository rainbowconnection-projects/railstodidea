class AdminController < ApplicationController
  layout 'admin'
  #before_filter :authenticate_admin!

  def index
    @testimonials = Testimonial.all
    @projects = Project.all
    @articles = Article.all
    @photos = Photo.all
  end
end