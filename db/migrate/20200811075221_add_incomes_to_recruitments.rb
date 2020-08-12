class AddIncomesToRecruitments < ActiveRecord::Migration[6.0]
  def change
    add_reference :recruitments, :income, null: false, foreign_key: true
  end
end
