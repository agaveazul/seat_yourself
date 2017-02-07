class Restaurant < ApplicationRecord
  has_many :reservations

  # suggestion: just call these "users"
  # has_many :users, through: :reservations
  has_many :customers, through: :reservations, source: :user

  belongs_to :owner, class_name: "User", foreign_key: "user_id"
end
