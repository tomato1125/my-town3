class Prefecture < ApplicationRecord
  has_many :users
  has_many :category_prefectures
  has_many :category, through: :category_prefectures
  has_many :posts
  has_many :recruitments

end
