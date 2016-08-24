puts "You’re a traveler on a long journey. After many miles, you come to a fork in the road. To the North is a small village.  To the East is dark cave. Which way do you go? North or East?"

direction = gets.chomp.downcase

while !(direction == "north" || direction == "east")
  puts "We said enter north or east dumbo! Try again: "
  direction = gets.chomp.downcase
end


if direction == "north"
  puts "decide later north "
elsif direction == "east"
  puts "decide later east "
end