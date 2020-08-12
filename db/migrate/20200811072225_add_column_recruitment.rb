class AddColumnRecruitment < ActiveRecord::Migration[6.0]
  def change
    add_reference :recruitments, :industry, null: false, foreign_key: true
    add_reference :recruitments, :position, null: false, foreign_key: true
    add_reference :recruitments, :employment_status, null: false, foreign_key: true
    add_reference :recruitments, :vacation, null: false, foreign_key: true
  end
end
