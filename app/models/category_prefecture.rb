class CategoryPrefecture < ApplicationRecord
  belong_to :category
  belong_to :prefecture
end
