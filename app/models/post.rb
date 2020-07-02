class Post < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :prefecture, optional: true
  # belongs_to :category
  has_many :comments, foreign_key: :post_id

  def self.search(search)
    return Post.all unless search
    Post.where('content LIKE(?)', "%#{search}%")
  end
  
end
