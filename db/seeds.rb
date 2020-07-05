# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Airport.create(name: 'New York Airport', code: 'NYC')
Airport.create(name: 'San Francisco', code: 'SFC')
Airport.create(name: 'New Delhi Airport', code: 'IGD')
Airport.create(name: 'Mumbai Airport', code: 'MAI')

Flight.create(name: 'SG-1812', start_time: '03-09-2020', duration: 190, from_airport_id: 1, to_airport_id: 2)
Flight.create(name: 'AI-2112', start_time: '23-12-2020', duration: 390, from_airport_id: 2, to_airport_id: 1)
