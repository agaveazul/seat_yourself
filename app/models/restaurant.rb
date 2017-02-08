class Restaurant < ApplicationRecord
  has_many :reservations

  # suggestion: just call these "users"
  # has_many :users, through: :reservations
  has_many :customers, through: :reservations, source: :user

  belongs_to :owner, class_name: "User", foreign_key: "user_id"


# take a day / time combo
# add up all of the current reservations that exist
# compare against the current capacity that was set
# if result > 0, then display [Select]
# if result = 0, then display 'Unavailable'
# if result < 10, then display "#{result} seats left"

end
