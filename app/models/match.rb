class Match < ApplicationRecord
  belongs_to :listing
  belongs_to :search, optional: true
  belongs_to :user
  has_many :viewings
  has_many :messages
end
