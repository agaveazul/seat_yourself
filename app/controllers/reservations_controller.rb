class ReservationsController < ApplicationController

def create

  @reservation = Reservation.new(reservation_params)
  if @reservation.save
    flash[:alert] = reservation_params
    redirect_to restaurants_path
  else
    flash[:alert] = reservation_params
    redirect_to "/restaurants/#{params[:restaurant_id]}"
  end

end


private
def reservation_params
  params.require(:reservation).permit(:party_size, :timeslot, :restaurant_id, :user_id, :date)
end

end
