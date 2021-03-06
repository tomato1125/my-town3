class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :posts
  belongs_to :prefecture
  has_many :comments
  has_many :subscriptions
  # has_many :recruitments, through: :subscriptions, foreign_key: "empolyee_id"

  # has_many :categories
  # has_many :categories, through :users_categories

  mount_uploader :image, ImageUploader
end