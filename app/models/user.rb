class User < ApplicationRecord
  has_many :reservations
  has_many :reserved_restaurants, through: :reservations, source: :restaurant
  has_many :owned_restaurants, class_name: "Restaurant"
  has_secure_password

  validates :name, :phone_number, :email, :password, :password_confirmation, presence: true
  validates :phone_number, numericality: {only_integer: true}
  validates :phone_number, :email, uniqueness: true
  validates :password, confirmation: true

end
