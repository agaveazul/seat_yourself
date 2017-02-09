class ReservationsController < ApplicationController


  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)

    if @reservation.save
      redirect_to reservation_path
    else
      redirect_to restaurant_path(@restaurant)
    end

  end

  def index
    @reservations = Reservation.all
  end

  def delete
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
    redirect_to restaurants_path
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
      redirect_to reservation_url(@reservation)
    else
      render :edit
    end
  end

  private
  def reservation_params
    params.require(:reservation).permit(:user_id, :restaurant_id, :timeslot, :party_size, :date)
  end
 end