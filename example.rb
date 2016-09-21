module Mammal
    def breathe_air
         puts "inhale exhale air"
    end
end

module Feline
    def purr
       puts "purr"
    end

    def name_length
      @age = 35
      @name.size
    end
end

class Cat
    include Feline
    include Mammal

    def initialize
      @name = "Cat"
      @age = 12
    end

    def get_age
      @age
    end
 end

cat = Cat.new
cat.purr
cat.breathe_air
puts cat.name_length
puts cat.get_age