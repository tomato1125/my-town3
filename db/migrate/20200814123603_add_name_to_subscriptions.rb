class AddNameToSubscriptions < ActiveRecord::Migration[6.0]
  def change
    add_column :subscriptions, :name, :string, null: false
    add_column :subscriptions, :phonetic, :string, null: false
    add_column :subscriptions, :email, :string, null: false
    add_column :subscriptions, :tel, :integer, null: false
    add_column :subscriptions, :currentAdress, :text, null: false
    add_column :subscriptions, :resume, :text
  end
end
