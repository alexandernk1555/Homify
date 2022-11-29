class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :listings
  has_many :searches
  has_many :matches
  has_many :viewings, through: :matches
  has_many :messages
  has_one_attached :profile_photo
  validates :last_name, :first_name, presence: true
end
