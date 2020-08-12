class CreateVacations < ActiveRecord::Migration[6.0]
  def change
    create_table :vacations do |t|
      t.string :name

      t.timestamps
    end
  end
end
