class CreateRecruitments < ActiveRecord::Migration[6.0]
  def change
    create_table :recruitments do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title, null: false
      t.string :campany, null: false
      t.text :image
      t.text :jobDescription
      t.integer :numberOfEmployees
      t.text :feature, null: false
      t.text :workLocation, null: false
      t.text :eligibleEmployees, null: false
      t.text :workingHours, null: false
      t.text :insurance, null: false
      t.text :wellfare, null: false
      t.references :prefecture, null: false, foreign_key: true
      t.text :vacation, null: false

      t.timestamps
    end
  end
end
