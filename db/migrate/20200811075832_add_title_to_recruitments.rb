class AddTitleToRecruitments < ActiveRecord::Migration[6.0]
  def change
    add_column :recruitments, :title, :text
  end
end
