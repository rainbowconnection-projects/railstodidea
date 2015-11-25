class Product < ActiveRecord::Base
  mount_uploader :photo, ImageUploader
end
