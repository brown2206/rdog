ActiveAdmin.register Guest, as: "Dog" do
    menu label: "Adoptable Dogs"
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :name, :breed, :gender, :age, :size, :color, :shelter_name,
:shelter_address, :shelter_city, :shelter_state, :shelter_zip, :phone_number, :url

index do
  selectable_column
  column "ID", :id
  column "Name", :name
  column "Breed", :breed
  column "Gender", :gender
  column "Age", :age
  column "Size", :size
  column "Color", :color
  column "Shelter Name", :shelter_name
  column "Street Address", :shelter_address
  column "City", :shelter_city
  column "State", :shelter_state
  column "Zip Code", :shelter_zip
  column "Phone Number", :phone_number
  column "Website", :url
  actions
end

end
