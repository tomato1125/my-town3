class CreateUsersPrefectures < ActiveRecord::Migration[6.0]
  def change
    create_table :users_prefectures do |t|
      t.references :user, null: false, foreign_key: true
      t.references :prefecture, null: false, foreign_key: true
      t.timestamps
    end
  end
end
