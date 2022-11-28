class AddCountryToSearches < ActiveRecord::Migration[7.0]
  def change
    add_column :searches, :country, :string
  end
end
