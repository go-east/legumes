class CreateNourritures < ActiveRecord::Migration[5.0]
  def change
    create_table :nourritures do |t|
      t.date :start_at
      t.date :end_at
      t.integer :kilojoules
      t.integer :calories
      t.integer :proteines
      t.integer :glucides
      t.integer :lipides

      t.timestamps
    end
  end
end
