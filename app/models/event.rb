class Event < ActiveRecord::Base
  mount_uploader :photo, ImageUploader
  validates :event_name, presence: true
end
