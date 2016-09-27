# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'CSV'

Nourriture.destroy_all

csv_options = { col_sep: ',', quote_char: '"', headers: :first_row }
filepath    = 'lib/legumestest.csv'

CSV.foreach(filepath, csv_options) do |row|
   Nourriture.create(vegetable: row['vegetable'],name: row['name'], variety: row['variety'], start_at: row['start_at'], end_at:row['end_at'],kilojoules: row['kilojoules'],calories: row['calories'], proteines: row['proteines'], glucides: row['glucides'], lipides: row['lipides'])
end
