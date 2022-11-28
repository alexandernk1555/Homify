class AddDistrictToSearches < ActiveRecord::Migration[7.0]
  def change
    add_column :searches, :district, :string
  end
end
