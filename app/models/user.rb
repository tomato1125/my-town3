class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :posts, foreign_key: "user_id"
  has_many :prefectures, foreign_key: "user_id"
  has_many :comments, foreign_key: "user_id"
  has_many :subscriptions
  has_many :recruitments, through: :subscriptions, foreign_key: "empolyee_id"

  # has_many :categories
  # has_many :categories, through :users_categories
end