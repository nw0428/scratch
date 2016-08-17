def celcius_to_f celcius
  return celcius * 9 / 5 + 32
end

def f_to_celcius f
  return (f - 32) * 5 / 9
end

# puts "Please enter a temperature in celcius"
# celcius = gets.chomp.to_f
# puts celcius.to_s + " in farenheight is: " + celcius_to_f(celcius).to_s

# This bit of the code does temperature conversion
puts "Please enter a temperature in farenheight"
f = gets.chomp.to_f
puts f.to_s + " in celcius is: " + f_to_celcius(f).to_s
