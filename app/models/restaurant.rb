class Restaurant < ApplicationRecord
  has_many :reservations
  has_many :customers, through: :reservations, class_name: "User"
  belongs_to :owner, class_name: "User"
end
