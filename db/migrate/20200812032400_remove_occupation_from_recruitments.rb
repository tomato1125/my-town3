class RemoveOccupationFromRecruitments < ActiveRecord::Migration[6.0]
  def change
    remove_reference :recruitments, :occupation, null: false, foreign_key: true
  end
end
