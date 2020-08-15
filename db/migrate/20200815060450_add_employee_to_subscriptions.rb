class AddEmployeeToSubscriptions < ActiveRecord::Migration[6.0]
  def change
    add_reference :subscriptions, :employee, foreign_key: { to_table: :users}
  end
end
