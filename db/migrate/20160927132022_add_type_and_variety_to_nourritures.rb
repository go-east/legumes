class AddTypeAndVarietyToNourritures < ActiveRecord::Migration[5.0]
  def change
    add_column :nourritures, :type, :string
    add_column :nourritures, :variety, :string
  end
end
