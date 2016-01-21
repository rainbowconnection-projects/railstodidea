class Gallery < ActiveRecord::Base
  has_many :photos
  belongs_to :product
end