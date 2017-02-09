class Restaurant < ApplicationRecord
  has_many :reservations

  # suggestion: just call these "users"
  # has_many :users, through: :reservations
  has_many :customers, through: :reservations, source: :user

  belongs_to :owner, class_name: "User", foreign_key: "user_id"


    def timeslot_check(time_slot, restaurant_id, date)

    total_reservations = Reservation.where(timeslot: time_slot, date: date, restaurant_id: restaurant_id).sum(:party_size)
    capacity = Restaurant.find(restaurant_id).capacity
    available_capacity = capacity - total_reservations
    if available_capacity > 10
      p "Available (#{available_capacity} seats)"
    elsif available_capacity > 0 && available_capacity <= 10
      p "#{available_capacity} seats available"
    else
      p "Unavailable"
    end
    end



# take a day / time combo
# add up all of the current reservations that exist
# compare against the current capacity that was set
# if result > 0, then display [Select]
# if result = 0, then display 'Unavailable'
# if result < 10, then display "#{result} seats left"

end
