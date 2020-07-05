class FlightsController < ApplicationController
  def index
    @airports = Airport.all.map do |airport|
      [airport.name, airport.id]
    end
    @dates = Flight.all.map do |flight|
      [flight.start_time, flight.start_time]
    end

    if !params[:passenger_count].nil?
      @flights = Flight.search({from_airport: params[:from_airport], to_airport: params[:to_airport], date: params[:date]})
      @passenger_count = params[:passenger_count]
    end
  end
end
