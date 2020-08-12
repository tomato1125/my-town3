class Recruitment < ApplicationRecord
  has_many :recruitments
  belongs_to :user
  belongs_to :prefecture
  belongs_to :industry
  belongs_to :position
  belongs_to :occupation
  belongs_to :income

  mount_uploader :image, ImageUploader
end
