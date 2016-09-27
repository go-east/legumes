class ChangeTypeToVariety < ActiveRecord::Migration[5.0]
  def change
    remove_column :nourritures, :type, :string
    add_column :nourritures, :vegetable, :string
  end
end
