# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Duck.destroy_all

wonder_duck = Duck.new({
  name: 'Wonder Duck',
  description: 'Fearless crusader Duck Buddy',
  age: 5000,
  nationality: 'Themysciran'
})
wonder_duck.photo.attach(io: File.open('app/assets/images/wonder-duck.jpg'), filename: 'wonder-duck.jpg', content_type: 'image/jpg')
wonder_duck.save

jean_duck_picard = Duck.new({
  name: 'Jean-Duck Picard',
  description: 'Totally unflappable, this Duck Buddy is a firm favourite',
  age: 53,
  nationality: 'French'
})
jean_duck_picard.photo.attach(io: File.open('app/assets/images/jean-duck-picard.jpg'), filename: 'jean-duck-picard.jpg', content_type: 'image/jpg')
jean_duck_picard.save

kratos_duck = Duck.new({
  name: 'Duck of War',
  description: 'This Duck Buddy will not rest until he has revenged himself upon Zeus!',
  age: 1047,
  nationality: 'Greek'
})
kratos_duck.photo.attach(io: File.open('app/assets/images/kratos-duck.jpg'), filename: 'kratos-duck.jpg', content_type: 'image/jpg')
kratos_duck.save

iron_duck = Duck.new({
  name: 'Iron Duck',
  description: 'Billionaire boastful Duck Buddy',
  age: 49,
  nationality: 'American'
})
iron_duck.photo.attach(io: File.open('app/assets/images/iron-duck.jpg'), filename: 'iron-duck.jpg', content_type: 'image/jpg')
iron_duck.save

anonymous_duck = Duck.new({
  name: 'Anonyduck',
  description: 'Duck Buddy of mystery',
  age: ??,
  nationality: 'Who knows'
})
anonymous_duck.photo.attach(io: File.open('app/assets/images/anonymous-duck.jpg'), filename: 'anonymous-duck.jpg', content_type: 'image/jpg')
anonymous_duck.save

gollum_duck = Duck.new({
  name: 'Duck Preciousss',
  description: 'Very temperamental Duck Buddy, not for the faint-hearted',
  age: 589,
  nationality: 'Stoorish'
})
gollum_duck.photo.attach(io: File.open('app/assets/images/gollum-duck.jpg'), filename: 'gollum-duck.jpg', content_type: 'image/jpg')
gollum_duck.save
# @message.image.attach(io: File.open('/path/to/file'), filename: 'file.pdf', content_type: 'application/pdf')

# require "open-uri"

# file = URI.open('https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg')
# article = Article.new(title: 'NES', body: "A great console")
# article.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

# 10.times do
#   Duck.create(name: Faker::GreekPhilosophers.name, photo: ducks_urls.sample, description: Faker::GreekPhilosophers.quote,
#               nationality: Faker::Nation.nationality, age: Faker::Number.between(from: 18, to: 50))
# end
