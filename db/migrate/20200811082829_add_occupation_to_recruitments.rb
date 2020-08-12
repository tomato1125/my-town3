class AddOccupationToRecruitments < ActiveRecord::Migration[6.0]
  def change
    add_reference :recruitments, :occupation, null: false, foreign_key: true
  end
end
