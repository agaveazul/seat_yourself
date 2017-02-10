class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def show
    begin
      puts "Logging out reservation"
      puts @reservation
    rescue
      puts "No reservation instance"
    end

    @restaurant = Restaurant.find(params[:id])
    @timeslots = ["11-12", "12-1", "1-2", "2-3", "3-4", "4-5", "5-6", "6-7", "7-8", "8-9"]

    if params[:date]
      @date = params[:date]
    else
      @date = Date.today
    end

    @reservation = Reservation.new

  end

  def new
     @restaurant = Restaurant.new
   end

   def create
     @restaurant = Restaurant.new(restaurant_params)
   end

   def update

     @restaurant = Restaurant.find(params[:id])
     @timeslots = ["11-12", "12-1", "1-2", "2-3", "3-4", "4-5", "5-6", "6-7", "7-8", "8-9"]

     if params[:date]
       @date = params[:date]
     else
       @date = Date.today
     end

     @reservation = Reservation.new

     render 'show'
   end


private
  def restaurant_params
      params.require(restaurant).permit(:name, :capacity, :street_name, :neighbourhood, :postal_code, :city, :province, :country, :cuisine_type, :phone_number,
      :email, :price, :summary, :menu)
  end

end
