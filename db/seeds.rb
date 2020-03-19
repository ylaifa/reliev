# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

20.times do
  Masseur.create(
    first_name: ["Oui", "Non"].sample,
    last_name:  ["Peut-être", "Yamoyen"].sample,
    description: descriptions_array.sample,
    pricing: [29.99, 39.99, 69.99, 99.99, 129.99, 249.99].sample,
  )
  puts "Masseur" + Masseur.last.first_name.last_name + " \u{1f600}"
end