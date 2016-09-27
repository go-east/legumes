class ChangeColumneTypeToDates < ActiveRecord::Migration[5.0]
  def change
    remove_column :nourritures, :start_at
    remove_column :nourritures, :end_at
    add_column :nourritures, :start_at, :date
    add_column :nourritures, :end_at, :date
  end
end
