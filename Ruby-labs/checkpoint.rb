def menu
  puts "Make a selection (1-5)"
  puts "1 - Burger "
  puts "2 - Cheeseburger"
  puts "3 - Double Double"
  puts "4 - Fries"
  puts "5 - Shake"
end
menu
answer = gets.chomp
options = ["1","2","3","4","5"]
while options.include?(answer) == false
  menu
  answer = gets.chomp
end
puts "Thanks for your order"
