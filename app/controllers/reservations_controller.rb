class ReservationsController < ApplicationController


  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @restaurant = Restaurant.find(params[:reservation][:restaurant_id])

    if @reservation.save
      redirect_to reservation_path(@reservation)
    else
      @timeslots = ["11-12", "12-1", "1-2", "2-3", "3-4", "4-5", "5-6", "6-7", "7-8", "8-9"]
      redirect_to(restaurant_path(@restaurant), {:flash => { :reservation_errors => @reservation.errors.full_messages }})
    end

  end

  def index
    @reservations = Reservation.all
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
    redirect_to restaurants_path, :notice => "Your reservation has been deleted."
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  def edit
    @reservation = Reservation.find(params[:id])
  end

  def update
    @reservation = Reservation.find(params[:id])

    if @reservation.update_attributes(reservation_params)
      redirect_to reservation_url(@reservation), :notice => "Your reservation has been successfully updated!"
    else
      # render :edit
      redirect_to(edit_reservation_path(@reservation), {:flash => { :reservation_errors => @reservation.errors.full_messages }})
    end
  end

  private
  def reservation_params
    params.require(:reservation).permit(:user_id, :restaurant_id, :timeslot, :party_size, :date)
  end
 end
