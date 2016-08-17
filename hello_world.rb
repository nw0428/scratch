def hello_name some_name, some_other_name, third_name
  a = 'Hello, ' + some_name + " and " + some_other_name + " and " + third_name
  puts a
  puts "new return value"
end




puts "Please enter your name and then hit enter: "
my_name = gets.chomp
name2 = gets.chomp


returnvalue = hello_name(my_name, name2, "harambe")
puts returnvalue