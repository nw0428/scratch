class Person
  attr_accessor :name, :age, :political_affiliation

  def initialize name, age, political_affiliation
    @name = name
    @age = age
    @political_affiliation = political_affiliation
    say_hello
  end

  def say_hello
    puts "Hello. My name is #{self.name}, I am #{@age} years old and I am a #{self.political_affiliation}"
  end

  def death
    puts "you've killed me you meanie"
  end

  def birthday
    age = self.age + 1
    puts "I have come one year closer to death I am now #{age}"
  end
end