class Project < ActiveRecord::Base
  mount_uploader :photo, ImageUploader
end
