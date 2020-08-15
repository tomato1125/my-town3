class RemoveUserFromRecruitments < ActiveRecord::Migration[6.0]
  def change
    remove_reference :recruitments, :user, null: false, foreign_key: true
  end
end
