class AddNameToNourritures < ActiveRecord::Migration[5.0]
  def change
    add_column :nourritures, :name, :string
  end
end
