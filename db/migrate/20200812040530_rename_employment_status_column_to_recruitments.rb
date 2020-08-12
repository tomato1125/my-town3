class RenameEmploymentStatusColumnToRecruitments < ActiveRecord::Migration[6.0]
  def change
    rename_column :recruitments, :employment_status_id, :occupation
  end
end
