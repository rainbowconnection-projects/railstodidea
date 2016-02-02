class Event < ActiveRecord::Base
  mount_uploader :photo, ImageUploader
  validates :name, presence: true

  has_one :event_gallery
end
