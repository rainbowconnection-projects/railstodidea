class Product < ActiveRecord::Base
  mount_uploader :photo, ImageUploader
  has_one :team
end
