class ProjectPhoto <  ActiveRecord::Base
  mount_uploader :photo, ImageUploader
  belongs_to :project_gallery
end