class Animal
  attr_accessor :predator, :age, :species, :name
  attr_reader :dead

  def initialize(predator, age, species, name)
    @predator = predator
    @age = age
    @species = species
    @name = name
    @dead = false
  end

  def birthday
    @age += 1
  end

  def hunt
    if predator
      puts 'You hunt and kill!'
    else
      puts "You can't hunt! You are a vegetarian"
    end
  end

  def swim
    if species == 'bulldog'
      dead = true
    else
      puts 'You went on a nice swim'
    end
  end

  def bite
    if age < 50
      puts 'Ouch'
    else
      puts 'You lost your teeth long ago'
    end
  end

  def fight(opponent)
    if opponent.dead
      puts 'You are fighting a corpse. Good job'
    elsif predator && opponent.predator
      puts 'you fight to a stand still'
    elsif !predator && opponent.predator
      @dead = true
      puts "You have been killed by your opponent who is a #{opponent.species}"
    elsif predator && opponent.predator
      puts 'You scared it off'
    else
      puts 'nothing happens. You are both pacifists'
    end
  end
end