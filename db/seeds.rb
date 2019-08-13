# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all
puts 'Creating User'
u1 = User.create :name => 'Nilana', :email => 'nilana@ga.co'
u2 = User.create :name => 'Victor', :email => 'victor@ga.co'
u3 = User.create :name => 'Paulina', :email => 'paulina@ga.co'

Airplane.destroy_all
puts 'Creating Airplane'
a1 = Airplane.create :planeNo => 757

Flight.destroy_all
puts 'Creating Flights'
f1 = Flight.create :origin => 'SYD', :destination => 'SNG'
f2 = Flight.create :origin => 'MAL', :destination => 'SNG'

puts "associations"
u1.flights << f1

a1.flights << f1 << f2