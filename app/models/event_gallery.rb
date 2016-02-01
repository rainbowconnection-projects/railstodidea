class EventGallery < ActiveRecord::Base
  belongs_to :event
  has_many :event_photos
end
