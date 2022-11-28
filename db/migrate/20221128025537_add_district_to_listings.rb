class AddDistrictToListings < ActiveRecord::Migration[7.0]
  def change
    add_column :listings, :district, :string
  end
end
