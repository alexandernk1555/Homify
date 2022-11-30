class Viewing < ApplicationRecord
  belongs_to :match
  validates :date, :start_time, presence: true
end
