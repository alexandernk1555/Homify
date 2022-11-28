class AddStreetToSearches < ActiveRecord::Migration[7.0]
  def change
    add_column :searches, :street, :string
  end
end
