# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
maki_maki = {name:'Maki Maki', address: '18-7 Wakamatsucho, Shinjuku, 152-0001', telephone: '030-3092-03939', category: 'japanese' }
waku-waku = { name: 'Waku Waku', address: '51-3 Kawadacho, Shinjuku, 154-0052', telephone: '030-3092-0339', category: 'japanese' }
chilovesyou = { name: 'chilovesyou', address: '12-3, Harajuku, Shibuya, 151-0032', telephone: '030-3022-0339', category: 'french' }
le-chocolat = { name: 'Le chocolat', address: '20-3, Omotesando, Shibuya, 151-0032', telephone: '080-3022-0339', category: 'belgian' }
pizzerola = { name: 'pizzerola', address: '11-3, Dainkayama, Shibuya, 150-0000', telephone: '030-3088-0339', category: 'italian' }

[ maki-maki, waku-waku, chilovesyou, le-chocolat, pizzerola ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
