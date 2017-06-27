class ReservationsController < ApplicationController
  def index
    #render seach for reservation page
  end
  def find
    @res = Reservation.find(params[:id])
    if !@res
      redirect_to "/"
    else
      redirect_to "/reservations/#{@res.id}"
    end

  end
  def show
    #show specific reservation with receipt and option to remove reservation
    @res = Reservation.find(params[:id])
    # if !@res
    #   flash[:errors] = ["No reservation with that id"]
    #   redirect_to "/"
  end
  def new
    #displays page to create new reservation
  end
  def create
    #create new reservation
    if params[:size] == "small"
      @small = Locker.where(size: "small").includes(:reservation).where(reservations: {id: nil}).first
      @res = Reservation.create(guest: params[:guest], locker: @small)
      redirect_to "/reservations/#{@res.id}"
    elsif params[:size] == "medium"
      @medium = Locker.where(size: "medium").includes(:reservation).where(reservations: {id: nil}).first
      @res = Reservation.create(guest: params[:guest], locker: @medium)
      redirect_to "/reservations/#{@res.id}"
    else
      @large = Locker.where(size: "large").includes(:reservation).where(reservations: {id: nil}).first
      @res = Reservation.create(guest: params[:guest], locker: @large)
      redirect_to "/reservations/#{@res.id}"
    end
  end
  def destroy
    @res = Reservation.find(params[:id])
    @res.destroy
    redirect_to "/"
  end
end
