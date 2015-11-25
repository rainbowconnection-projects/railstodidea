class Article < ActiveRecord::Base
  mount_uploader :photo, ImageUploader
  has_many :comments
  has_many :article_tags
  has_many :tags, :through => :article_tags
  belongs_to :category

  validates :title, presence: true
  validates :text, presence: true
  validate :photo_size


  private
  def photo_size
    if photo_size > 3.megabytes
      errors.add(:picture, "should be less than 3mbs")
    end
  end


end
