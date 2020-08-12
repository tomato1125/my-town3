class CreateRecruitments < ActiveRecord::Migration[6.0]
  def change
    create_table :recruitments do |t|
      t.string :campany, null: false
      t.text :image
      t.integer :numberOfEmployees
      t.text :feature, null: false
      t.text :workLocation, null: false
      t.text :eligibleEmployees, null: false
      t.integer :age, null: false
      t.text :workingHours, null: false
      t.text :salary, null: false
      t.text :insurance, null: false
      t.text :wellfare, null: false
      t.references :prefecture, null: false, foreign_key: true

      t.timestamps
    end
  end
end
