class Category < ApplicationRecord
  has_many :posts
  has_many :prefectures
  has_many :category_prefectures
  has_many :prefectures, through: :category_prefectures 
end
