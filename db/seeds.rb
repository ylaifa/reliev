# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Masseur.destroy_all

Masseur.skip_callback(:create, :after, :welcome_send)
15.times do
  Masseur.create(
    email: Faker::Internet.email,
    password: Faker::Internet.password(min_length: 6)
  )
end
Masseur.set_callback(:create, :after, :welcome_send)

MasseurProfile.all.each do |masseur_profile|
  masseur_profile.update(
    first_name:     Faker::Name.first_name,
    last_name:      Faker::Name.last_name,
    pricing:        Faker::Number.number(digits: 2),
    description:    Faker::Lorem.paragraph(sentence_count: 4),
    massage_types:  MasseurProfile::MASSAGE_TYPES.sample(3),
    time_slots:     MasseurProfile::TIME_SLOTS.take(5),
    working_place:  MasseurProfile::WORKING_PLACES.sample
  )
end


