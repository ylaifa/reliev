# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Company.destroy_all
Employee.destroy_all
Masseur.destroy_all

5.times do
  Company.create(
    email: Faker::Internet.email,
    password: "azerty"
  )
end

30.times do
  Employee.create(
    email: Faker::Internet.email,
    password: Faker::Internet.password(min_length: 6)
  )
end

10.times do
  Masseur.create(
    email: Faker::Internet.email,
    password: Faker::Internet.password(min_length: 6)
  )
end