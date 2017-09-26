puts "How many episodes of netflix have you watched?"
episodes = gets.chomp
while !(episodes.to_i == 10)
  puts "I have only watched #{episodes} epsiodes!
        Time to watch another episode"
  sleep (1)
  episodes = episodes.to_i + 1
end
puts " I have watched enough netflix for one day"


puts "How many episodes of netflix have you watched?"
episodes = gets.chomp.to_i
while episodes < 10
  puts "I have only watched #{episodes} episodes"
  puts "I have only watch #{episodes} episode(s)"
  puts "How many episodes will you watch?"
  answer = gets.chomp.to_i
  episodes = episodes + answer
  sleep (1)
end
