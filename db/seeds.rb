require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

20.times do
  flats = Flat.new(
    name: Faker::Movies::LordOfTheRings.character,
    address: Faker::Address.full_address,
    description: Faker::Quote.famous_last_words,
    price_per_night: Faker::Number.decimal_part(digits: 2),
    number_of_guests: Faker::Number.decimal_part(digits: 2)
  )
  flats.save!
end
