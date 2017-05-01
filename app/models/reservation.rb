class Reservation < ApplicationRecord
  belongs_to :customer, class_name: "User", foreign_key: "user_id"
  belongs_to :reserved_restaurant, class_name: "Restaurant", foreign_key: "restaurant_id"

  validates :party_size, :user_id, :restaurant_id, :date, :timeslot, presence: true, allow_nil: false
  validates :party_size, numericality: {greater_than: 0}
  validate :party_size_less_than_capacity
  validate :date_greater_than_or_equal_to_today

  private

  def party_size_less_than_capacity
    if timeslot == nil || date == nil || party_size == nil
    else
    if id

      total_reservations = Reservation.where(timeslot: timeslot, date: date, restaurant_id: restaurant_id).sum(:party_size)
      capacity = Restaurant.find(restaurant_id).capacity

      available_capacity = capacity - total_reservations + Reservation.where(id: id).sum(:party_size)

      restaurant = Restaurant.find(restaurant_id).name

      errors.add(restaurant, 'does not have enough space for this number of guests!') if party_size >  available_capacity
    else

    total_reservations = Reservation.where(timeslot: timeslot, date: date, restaurant_id: restaurant_id).sum(:party_size)
    capacity = Restaurant.find(restaurant_id).capacity
    available_capacity = capacity - total_reservations

    restaurant = Restaurant.find(restaurant_id).name

    errors.add(restaurant, 'does not have enough space for this number of guests!') if party_size >  available_capacity

    end
  end
  end

  def date_greater_than_or_equal_to_today
    # if date == nil
    # else
      errors.add(:date, 'cannot be before today') if date.present? && Date.parse(date.to_s) < Date.today
    # end
  end

 end
