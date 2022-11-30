class AddCityToSearches < ActiveRecord::Migration[7.0]
  def change
    add_column :searches, :city, :string
  end
end
