class Match < ApplicationRecord
  belongs_to :listing
  belongs_to :search
  has_many :viewings
end
