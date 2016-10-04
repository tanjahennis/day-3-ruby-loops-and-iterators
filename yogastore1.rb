#yogastore1
shopping_cart = []

products = [
  {item_id: 11, name: "Yoga Mat", price: 20},
  {item_id: 12, name: "Yoga Pants", price: 15},
  {item_id: 13, name: "Block", price: 17},
  {item_id: 14, name: "Yoga Towel", price: 12},
  {item_id: 15, name: "Meditation blanket", price: 25},
  {item_id: 16, name: "Zen Socks", price: 5},
]

puts "Welcome to Yoga Store! We have awesome stuff:"

products.each do |product|
  puts "#{product[:item_id]} - #{product[:name]}, € #{product[:price]}"
end
