class Plant < ApplicationRecord
  belongs_to :user

  has_many :bookings, dependent: :destroy
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :description, presence: true
end
