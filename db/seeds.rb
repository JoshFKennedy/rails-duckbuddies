# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
  Duck.create(name: Faker::GreekPhilosophers.name, description: Faker::GreekPhilosophers.quote,
              nationality: Faker::Nation.nationality, age: Faker::Number.between(from: 18, to: 50),
              photo: Faker::LoremPixel.image(size: "50x60", is_gray: false, category: 'animals'))
end
