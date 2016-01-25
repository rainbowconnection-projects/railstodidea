class HomeController < ApplicationController
  def index
    @articles = Article.all.order(created_at: :desc).limit(3)
    @products = Product.all
    @edutab = Product.find_by :link=>strip_spaces_downcase('Edutab')
    @digital_fit = Product.find_by :link=>strip_spaces_downcase('DigitalFit')
    @tech_kids = Product.find_by :link=>strip_spaces_downcase('TechKids')


    @testimonials = Testimonial.all.order(created_at: :desc).limit(4)
    @projects = Project.all.order(created_at: :desc).limit(4)
  end
  def strip_spaces_downcase string
    return string.split.join('').downcase
  end
end
