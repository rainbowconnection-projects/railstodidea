class Product < ActiveRecord::Base
  mount_uploader :photo, ImageUploader
  has_one :team
  has_many :persons, :through => :teams
end
