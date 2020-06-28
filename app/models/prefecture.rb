class Prefecture < ApplicationRecord
  has_many :users
  has_many :users, through: :uers_prefectures
  has_many :posts

end
