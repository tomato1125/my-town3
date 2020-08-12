class AddJobDescriptionToRecruitments < ActiveRecord::Migration[6.0]
  def change
    add_column :recruitments, :job_description, :text
  end
end
