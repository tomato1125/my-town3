class AddVacationToRecruitments < ActiveRecord::Migration[6.0]
  def change
    add_column :recruitments, :vacation, :text
  end
end
