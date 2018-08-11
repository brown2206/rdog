class CreateGuests < ActiveRecord::Migration[5.0]
  def change
    create_table :guests do |t|
        t.string :name
        t.string :breed
        t.string :gender
        t.string :age
        t.string :size
        t.string :color
        t.string :shelter_name
        t.string :shelter_address
        t.string :shelter_city
        t.string :shelter_state
        t.string :shelter_zip
        t.string :phone_number
        t.string :url
    end
  end
end
