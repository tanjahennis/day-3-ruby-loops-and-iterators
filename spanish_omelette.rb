def print_divider
  puts "*" * 40
  puts "\n"
end

def print_progress_bar
  3.times { sleep 0.5; print "."}
  puts "\n"
end

NUM_POTATOES = 5
NUM_EGGS = 6

ingredients = [
  { name: 'potatoes', quantity: NUM_POTATOES },
  { name: 'eggs', quantity: NUM_EGGS },
  { name: 'onion', quantity: 1 },
  { name: 'oil', quantity: 'some' },
  { name: 'salt', quantity: 'some' },
]

puts "*    Let's cook a Spanish Omelette!    *"
print_divider

puts "You need the following indredients:"

ingredients.each do |ingredient|
  puts "#{ingredient[:quantity]} #{ingredient[:name]}"
end

loop do
  puts "\n"
  print_divider

  puts "Do you have all the ingredients you need? Y / N"
  answer = gets.chomp.upcase

  if answer == "N"
    puts "Get shopping!"
    print_progress_bar
  elsif answer == "Y"
    puts "Get cooking!"
    break
  else
    puts "That's not a valid answer."
  end
end
