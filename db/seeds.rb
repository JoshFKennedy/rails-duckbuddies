# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Duck.destroy_all

ducks_urls = ['https://images.unsplash.com/photo-1559715541-5daf8a0296d0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2186&q=80',
              'https://images.unsplash.com/photo-1602771627783-849a5dd85ce8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80',
              'https://images.unsplash.com/photo-1517191553602-eb5d7d007c33?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80',
              'https://images.unsplash.com/photo-1531875506263-dfcc69e73475?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
              'https://images.unsplash.com/photo-1533084822039-99306ceb1d57?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',
              'https://images.unsplash.com/photo-1622828373982-5498a7b2d0a7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80',
              'https://images.unsplash.com/photo-1546094164-381e9487c464?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2187&q=80',
              'https://images.unsplash.com/photo-1601987078505-d93c4cc17b5e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80',
              'https://images.unsplash.com/photo-1597251147933-2473060caa68?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1742&q=80']

10.times do
  Duck.create(name: Faker::GreekPhilosophers.name, photo: ducks_urls.sample, description: Faker::GreekPhilosophers.quote,
              nationality: Faker::Nation.nationality, age: Faker::Number.between(from: 18, to: 50))
end
