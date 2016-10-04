#yogastore1
@shopping_cart = []

#products
@products = [
  {product_id: 11, name: "Yoga Mat", price: 20},
  {product_id: 15, name: "Meditation blanket", price: 25},
  {product_id: 16, name: "Zen Socks", price: 5},
]
#show products
def show_products
  puts "We have the following producst in our store"
  @products.each do |product|
    puts "Product ID: #{product[:product_id]}"
    puts "Name: #{product[:name]}"
    puts "Price: #{product[:price]}"
  end
end

#select product
def select_product
  puts "Enter the number for the item you want"
  @product_id = gets.chomp.to_i
end

#add product to cart
def add_product_to_cart(product_id)
  product = look_up_product(reference_number)
  if product != nil
    @shopping_cart << product
    puts "Yay! Your #{product[:name]} has been added to your cart."
  else
    puts "We don't have that"
  end
end

#look up product
def look_up_product
  @products.each do |product|
    if product[:product_id] == product_id.to_i
      return product
    end
  end
end

#print cart
def print_cart
  puts: "Right now you have:"

  cart_total = 0

  @shopping_cart.each do |product|
    puts "Product ID: #{product[:product_id]}"
    puts "Name: #{product[:name]}"
    puts "Price: #{product[:price]}"

    cart_total += product[:price]
  end
  puts "Total price: #{cart_total}"

  @shopping_cart
end

#continue shopping?
def continue_shopping
  puts "Do you wish to keep shopping? Y / N "
  continue = gets.chomp

  continue.upcase == "Y"
end
