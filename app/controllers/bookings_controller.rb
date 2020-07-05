class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @flight = Flight.find(params[:flight])
    @booking.flight = @flight
    params[:count].to_i.times do
      @booking.passengers.build
    end
    puts @booking.passengers.size
  end

  def create
    @booking = Booking.new
    @passengers = @booking.passengers.build(booking_params)
    require 'pry'; binding.pry
  end

  private
  def booking_params
    params.require(:booking).permit(passenger_attributes: [:id, :name, :email])
  end
end
