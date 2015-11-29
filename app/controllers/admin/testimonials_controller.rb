class Admin::TestimonialsController < AdminController
  def index
    @testimonials = Testimonial.all
  end
end