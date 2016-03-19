class Founder < ActiveRecord::Base
  mount_uploader :photo, ImageUploader


end