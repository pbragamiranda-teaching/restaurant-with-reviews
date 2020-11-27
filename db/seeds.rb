puts "Cleaning the db..."

Restaurant.destroy_all

puts "db is clean"

puts "creating restaurants..."

100.times do
  restaurant = Restaurant.create(
                name: Faker::Restaurant.name,
                address: Faker::Address.street_address,
                rating: rand(1..5),
                chef_name: ['Alex Atala', 'Paola C', 'Claude', 'Batista', 'Victor Lima'].sample
                )

  puts "#{restaurant.id}-#{restaurant.name} was created"
end
