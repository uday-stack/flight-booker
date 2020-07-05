class Flight < ApplicationRecord
	belongs_to :to_airport, class_name: 'Airport'
	belongs_to :from_airport, class_name: 'Airport'
	has_many :bookings
	has_many :passengers, through: :bookings
	accepts_nested_attributes_for :passengers

	def self.search(opts = {})
		self.where(to_airport_id: opts[:to_airport], from_airport_id: opts[:from_airport], start_time: opts[:date])
	end
end
