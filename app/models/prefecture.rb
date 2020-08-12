class Prefecture < ApplicationRecord
  has_many :users_prefectures
  has_many :users, through: :uers_prefectures
  has_many :category_prefectures
  has_many :category, through: :category_prefectures
  has_many :posts
  has_many :recruitments

end
