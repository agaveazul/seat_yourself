class Restaurant < ApplicationRecord
  has_many :reservations

  # suggestion: just call these "users"
  # has_many :customers, through: :reservations, class_name: "User", source: :user

  has_many :users, through: :reservations
  belongs_to :owner, class_name: "User", foreign_key: "user_id"
end
