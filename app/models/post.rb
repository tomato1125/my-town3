class Post < ApplicationRecord
  belongs_to :user, optional: true
  has_many :comments, foreign_key: :post_id

  def self.search(search)
    return Post.all unless search
    Post.where('text LIKE(?)', "%#{search}%")
  end
  
end
