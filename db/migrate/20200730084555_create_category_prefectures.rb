class CreateCategoryPrefectures < ActiveRecord::Migration[6.0]
  def change
    create_table :category_prefectures do |t|
      t.references :category, null: false, foreign_key: true
      t.references :prefecture, null: false, foreign_key: true
      t.timestamps
    end
  end
end
