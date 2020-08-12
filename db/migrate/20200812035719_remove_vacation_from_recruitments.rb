class RemoveVacationFromRecruitments < ActiveRecord::Migration[6.0]
  def change
    remove_reference :recruitments, :vacation, null: false, foreign_key: true
  end
end
