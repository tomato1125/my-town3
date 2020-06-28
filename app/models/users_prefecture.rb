class UsersPrefecture < ApplicationRecord
  belongs_to :User
  belongs_to :prefecture
end
