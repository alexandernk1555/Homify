class Listing < ApplicationRecord

  include PgSearch::Model
  pg_search_scope :global_search,
    against: [ :address, :city, :postcode, :country, :street, :description ],
    associated_against: {
      user: [ :first_name, :last_name ]
    },
    using: {
      tsearch: { prefix: true }
    }

  belongs_to :user
  has_many :matches
  has_many_attached :photos
  validates :price, :bedrooms, :bathrooms, :city, :property_type, :area_size, :floor, presence: true
  after_create :update_address

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  def update_address
    update(address: "#{street}, #{postcode} #{city}, #{country}")
  end
end
