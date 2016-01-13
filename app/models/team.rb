class Team < ActiveRecord::Base
  has_many :persons
  belongs_to :product
end
