class AddPostcodeToSearches < ActiveRecord::Migration[7.0]
  def change
    add_column :searches, :postcode, :integer
  end
end
