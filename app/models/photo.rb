class Photo < ActiveRecord::Base
  mount_uploader :photo, ImageUploader
  belongs_to :gallery
end