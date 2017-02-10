class Restaurant < ApplicationRecord
  has_many :reservations

  # suggestion: just call these "users"
  # has_many :users, through: :reservations
  has_many :customers, through: :reservations, source: :user

  belongs_to :owner, class_name: "User", foreign_key: "user_id"

  validates :name, :capacity, :street_name, :neighbourhood, :postal_code, :city, :province, :country, :cuisine_type, :phone_number, :email, :price, :summary, :user_id, presence: true

    def timeslot_check(time_slot, restaurant_id, date)

      total_reservations = Reservation.where(timeslot: time_slot, date: date, restaurant_id: restaurant_id).sum(:party_size)
      capacity = Restaurant.find(restaurant_id).capacity
      available_capacity = capacity - total_reservations
        if available_capacity > 10
          p "Available"
        elsif available_capacity > 0 && available_capacity <= 10
          p "#{available_capacity} seats available"
        else
          p "Unavailable"
        end
      end

end
