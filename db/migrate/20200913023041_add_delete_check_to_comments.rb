class AddDeleteCheckToComments < ActiveRecord::Migration[6.0]
  def change
    add_column :comments, :delete_check, :integer, default: 0
  end
end
