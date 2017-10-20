class Restaurant < ApplicationRecord
  belongs_to :user
  has_many :reviews, dependent: :destroy
  has_many :bookings
  has_many :users, through: :bookings
  validates :user, presence: true
  validates :name, presence: true
  validates :description, presence: true
end
