class EventPhoto <  ActiveRecord::Base
  mount_uploader :photo, ImageUploader
  belongs_to :event_gallery
end