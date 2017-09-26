def repeat_it(string, number)
  return "#{string * number}"
end
def random (list)
  return list.shuffle.first
end


puts "Your category is Food!"
food=['pasta','pizza','salad','fruit',]
guessing_word = random (food)

wrong_guesses= 12
dashes = repeat_it("_ ", guessing_word.size)
list_of_dashes = dashes.split("")
list_of_dashes.delete(" ")

list_of_letters= guessing_word.split("")
puts "#{dashes}"
puts "Guess your letter!"
 answer= gets.chomp.downcase
 while list_of_letters.include?(answer)
   index = list_of_letters.each_index.select { |i| list_of_letters[i]=="#{answer}" }
   index.each do |item|
     list_of_dashes[item] = answer
   end

   puts "Guess your letter!"
   answer= gets.chomp.downcase
end
  while !list_of_letters.include?(answer)
     puts "Sorry, try again!"
     wrong_guesses= wrong_guesses - 1
     puts "You have #{wrong_guesses} guesses left."
     puts "Guess your letter!"
     puts "#{dashes}"
     answer= gets.chomp.downcase
    while list_of_letters.include?(answer)
    new_list= list_of_dashes.insert(list_of_letters.index(answer), answer)
    new_list.delete_at(list_of_letters.index(answer) + 1)
    puts "Correct!"
    puts"#{new_list.join(" ")}"
    puts "Guess your letter!"
    answer= gets.chomp.downcase
    end
  end
