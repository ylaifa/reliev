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

Company.skip_callback(:create, :after, :welcome_send)
5.times do
  Company.create(
    email: Faker::Internet.email,
    password: "azerty"
  )
end
Company.set_callback(:create, :after, :welcome_send)

Employee.skip_callback(:create, :after, :welcome_send)
30.times do
  Employee.create(
    email:    Faker::Internet.email,
    password: Faker::Internet.password(min_length: 6)
  )
end
Employee.set_callback(:create, :after, :welcome_send)

Masseur.skip_callback(:create, :after, :welcome_send)
15.times do
  Masseur.create(
    email: Faker::Internet.email,
    password: Faker::Internet.password(min_length: 6)
  )
end
Masseur.set_callback(:create, :after, :welcome_send)

