class Plant < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_one_attached :photo
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :description, presence: true
end
