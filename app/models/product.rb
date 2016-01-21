class Product < ActiveRecord::Base
  mount_uploader :photo, ImageUploader
  has_one :team
  has_one :gallery
  has_many :persons, :through => :teams
  #has_many :photos, :through => :galleries
end
