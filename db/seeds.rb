# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Rental.destroy_all
Pool.destroy_all
User.destroy_all


puts 'Creating users...'

  charles = User.create!(
    first_name: "charles",
    last_name: "noppe",
    email: "charles@gmail.com",
    password: "password1",
  )

  margaux = User.create!(
    first_name: "margaux",
    last_name: "feslard",
    email: "margaux@gmail.com",
    password: "password1",
  )

  marie = User.create!(
    first_name: "marie",
    last_name: "caulliez",
    email: "marie@gmail.com",
    password: "password1",
  )


puts 'Creating pools...'

User.all.each do |u|
  5.times do
    pool = Pool.new(
      name: Faker::Restaurant.name ,
      address: Faker::Address.city,
      description: Faker::Restaurant.description,
      price_per_day: rand(100..200),
      capacity: rand(2..30),
      user: u,
    )
    pool.remote_picture_url = "http://referentiel.nouvelobs.com/file/15104197.png"
    pool.save
  end
end


puts 'Creating rentals...'
3.times do
Rental.create!(
  date: Faker::Date.forward(150),
  comment: Faker::Verb.past,
  pool: Pool.find(Pool.ids.sample),
  user: User.find(User.ids.sample),
  )
end

puts 'Creating reviews...'
3.times do
Review.create!(
  description: Faker::Restaurant.review,
  rating: rand(0..5),
  pool: Pool.find(Pool.ids.sample),
  user: User.find(User.ids.sample),
  )
end
