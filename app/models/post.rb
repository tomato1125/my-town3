class Post < ApplicationRecord
  validates :title,presence: true
  validates :content,presence: true
  validates :image,presence: true
  validates :latitude, presence: true
  validates :longitude, presence: true
  validates :maptitle, presence: true

  belongs_to :user
  belongs_to :prefecture
  has_many :comments, foreign_key: :post_id

  geocoded_by :address
  before_validation :geocode

  def self.search(search)
    return Post.all unless search
    Post.where('content LIKE(?)', "%#{search}%")
  end
  
end
