class CreateListings < ActiveRecord::Migration[7.0]
  def change
    create_table :listings do |t|
      t.integer :price
      t.integer :bedrooms
      t.integer :bathrooms
      t.string :address
      t.string :photos
      t.text :description
      t.string :property_type
      t.integer :area_size
      t.integer :floor
      t.boolean :garden
      t.integer :balcony
      t.boolean :parking
      t.string :family_status
      t.string :occupation
      t.boolean :pets
      t.boolean :lift
      t.boolean :furnished
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
