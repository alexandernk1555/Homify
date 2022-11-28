class AddPostcodeToListings < ActiveRecord::Migration[7.0]
  def change
    add_column :listings, :postcode, :integer
  end
end
