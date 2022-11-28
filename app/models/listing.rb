class Listing < ApplicationRecord

  include PgSearch::Model
  pg_search_scope :global_search,
    against: [ :address, :description ],
    associated_against: {
      user: [ :first_name, :last_name ]
    },
    using: {
      tsearch: { prefix: true }
    }

  belongs_to :user
  has_many :matches
  has_many_attached :photos
  validates :price, :bedrooms, :bathrooms, :address, :property_type, :area_size, :floor, presence: true

  def formatted_address
    address = address&.split(",")&[1]&.split(" ")&[1]
    if address
      return address
    else
      return address = "Hamburg"
    end
  end
end
