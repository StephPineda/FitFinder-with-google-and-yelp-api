# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


5.times do |x|
    Gym.create( name: "Gym#{x}", address: "#{x} Main Street. Miami, FL 33033", phone_number: "3055555555", price_in_cents: "50")
end

class_types = ["Karate", "Yoga"]
24.times do |x|
    e_start = DateTime.new
    e_end= e_start + 2.hours
    Event.create(name: class_types.sample, class_size: rand(8..15), event_start: e_start , event_end: e_start, gym_id: Gym.all.ids.sample )
end