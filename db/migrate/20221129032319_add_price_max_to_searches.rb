class AddPriceMaxToSearches < ActiveRecord::Migration[7.0]
  def change
    add_column :searches, :price_max, :integer
  end
end
