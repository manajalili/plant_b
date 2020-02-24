class User < ApplicationRecord
  has_many :plants,  through: :bookings, dependent: :destroy
  has_many :plants
  has_many :bookings,  dependent: :destroy
  validates :email, uniqueness: true
  validates :password, presence: true
end
