start = gets.chomp.to_i
end_year = gets.chomp.to_i

(start..end_year).each do |x|
  if x % 400 == 0
    puts x
  elsif x % 100 == 0
  elsif x % 4 == 0
    puts x
  end
end