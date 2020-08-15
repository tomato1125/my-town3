class AddEmployerToRecruitments < ActiveRecord::Migration[6.0]
  def change
    add_reference :recruitments, :employer, foreign_key: { to_table: :users}
  end
end
