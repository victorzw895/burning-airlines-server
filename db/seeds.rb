# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
puts 'Creating User'
u1 = User.create name: 'Nilana', email: 'nilana@ga.co'
u2 = User.create name: 'Victor', email: 'victor@ga.co'
u3 = User.create name: 'Paulina', email: 'paulina@ga.co'

Airplane.destroy_all
puts 'Creating Airplane'
a1 = Airplane.create planeNo: 757, columns: 'A', row: 20
a2 = Airplane.create planeNo: 800, columns: 'A', row: 28
a3 = Airplane.create planeNo: 444, columns: 'A', row: 50

Flight.destroy_all
puts 'Creating Flights'
f1 = Flight.create origin: 'SYD', destination: 'SNG', dateTime: '2019-12-20'
f2 = Flight.create origin: 'MAL', destination: 'SNG', dateTime: '2019-11-22'
f3 = Flight.create origin: 'SNG', destination: 'PER', dateTime: '2019-10-21'

puts 'associations'
u1.flights << f1

a1.flights << f3

a2.flights << f2

a3.flights << f1
