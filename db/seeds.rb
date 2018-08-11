# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Guest.destroy_all

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'dog_info.csv'))
csv = CSV.parse(csv_text, :headers => false, :encoding => 'ISO-8859-1')
csv.each do |row|
  Guest.create! do |model|
    model.name = row[0]
    model.breed = row[1]
    model.gender = row[2]
    model.age = row[3]
    model.size = row[4]
    model.color = row[5]
    model.shelter_name = row[6]
    model.shelter_address = row[7]
    model.shelter_city = row[8]
    model.shelter_state = row[9]
    model.shelter_zip = row[10]
    model.phone_number = row[11]
    model.url = row[12]
  end
end
