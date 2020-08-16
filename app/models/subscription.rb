class Subscription < ApplicationRecord
  belongs_to :employee, class_name: "User"
  belongs_to :recruitment

  mount_uploader :resume, ImageUploader
end
