class Listing < ApplicationRecord
  belongs_to :user
  has_many :matches
  validates :price, :bedrooms, :bathrooms, :address, :photos, :property_type, :area_size, :floor, presence: true
end
