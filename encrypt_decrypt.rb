def encrypt stuff, key
  stuff = stuff.upcase.gsub(/[^A-Z]/, '')
  output = ""
  stuff.each_char { |c|
    temp = c.ord + key
    temp = ((temp - 65) % 26) + 65
    output += temp.chr
  }
  output
end

def decrypt stuff, key
  stuff = stuff.upcase.gsub(/[^A-Z]/, '')
  output = ""
  stuff.each_char { |c|
    temp = c.ord - key
    temp = ((temp - 65) % 26) + 65
    output += temp.chr
  }
  output
end


puts "Do you want to encrypt or decrypt"
answer = gets.chomp.downcase
puts "input your text"
text = gets.chomp.upcase
puts "input your key"
key = gets.chomp.to_i
if answer == "encrypt"
  puts encrypt(text, key)
else
  puts decrypt(text, key)
end