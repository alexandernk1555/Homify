class Viewing < ApplicationRecord
  belongs_to :match
  validates :date, :start_time, :end_time, presence: true
end
