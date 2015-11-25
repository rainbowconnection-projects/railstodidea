class Testimonial < ActiveRecord::Base
  mount_uploader :photo ,ImageUploader
end
