class AddImageToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :image, :text
    add_column :users, :introduce, :text
    add_reference :users, :prefecture, null: false, foreign_key: true
  end
end
