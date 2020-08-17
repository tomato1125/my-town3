class Recruitment < ApplicationRecord
  belongs_to :employer, class_name: "User"
  belongs_to :prefecture
  belongs_to :industry
  belongs_to :position
  belongs_to :occupation
  belongs_to :income
  has_many :subscriptions
  has_many :employee, class_name: "User", through: :subscriptions, foreign_key: "recruitment_id"

  mount_uploader :image, ImageUploader
end
