class RestaurantsController < ApplicationController

helper_method :timeslot_check_4

  def timeslot_check_4
  date = 20170210
  total_reservations = Reservation.where(timeslot: "4-5", date: date).sum(:party_size)
  capacity = 100
  available_capacity = capacity - total_reservations
  if available_capacity > 10
    p "Available"
    p available_capacity
  elsif available_capacity > 0 && available_capacity <= 10
    p available_capacity
  else
    p "Unavailable"
    p available_capacity
  end
  end

  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])

  end

  def new
     @restaurant = Restaurant.new
   end

   def create
     @restaurant = Restaurant.new(restaurant_params)
   end

private
  def restaurant_params
      params.require(restaurant).permit(:name, :capacity, :street_name, :neighbourhood, :postal_code, :city, :province, :country, :cuisine_type, :phone_number,
      :email, :price, :summary, :menu)
  end

end
