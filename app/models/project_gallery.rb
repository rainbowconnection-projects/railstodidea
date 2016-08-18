class ProjectGallery < ActiveRecord::Base
  belongs_to :project
  has_many :project_photos
end
