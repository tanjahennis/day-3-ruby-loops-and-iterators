#yogastore1
@shopping_cart = []

#products
@products = [
  {product_id: 11, name: "Yoga Mat", price: 20},
  {product_id: 15, name: "Meditation blanket", price: 25},
  {product_id: 16, name: "Zen Socks", price: 5},
]
#show items
def show_items
  @products.each do |product|
    puts "Product ID: #{product[:product_id]}"
    puts "Name: #{product[:name]}"
    puts "Price: #{product[:price]}"
  end
end
#select item
def select_item
  puts "Enter the number for the item you want"
  @number_item = gets.chomp.to_i
end
#add to cart



#pick items
