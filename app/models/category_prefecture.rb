class CategoryPrefecture < ApplicationRecord
  belongs_to :category
  belongs_to :prefecture
end
