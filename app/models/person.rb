class Person < ActiveRecord::Base
  mount_uploader :photo, ImageUploader
  belongs_to :team
end
