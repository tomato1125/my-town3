class RenameOccupationColumnToRecruitments < ActiveRecord::Migration[6.0]
  def change
    rename_column :recruitments, :occupation, :occupation_id
  end
end
