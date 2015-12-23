class Article < ActiveRecord::Base
  mount_uploader :photo, ImageUploader
  has_many :comments
  has_many :article_tags
  has_many :tags, :through => :article_tags
  belongs_to :category
  serialize :tag_ids

  validates :title, presence: true
  validates :text, presence: true



end
