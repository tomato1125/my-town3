class Recruitment < ApplicationRecord
  belongs_to :employer, class_name: "User", foreign_key: "employer_id"
  belongs_to :prefecture
  belongs_to :industry
  belongs_to :position
  belongs_to :occupation
  belongs_to :income
  has_many :subscriptions, foreign_key: "recruitment_id"
  # has_many :employee, class_name: "User", through: :subscriptions, foreign_key: "recruitment_id"

  accepts_nested_attributes_for :subscriptions
  mount_uploader :image, ImageUploader
end
