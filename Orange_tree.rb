require 'orange_tree'

class OrangeTree
  attr_accessor :age, :height, :fruits

  def initialize
    @age = 0
    @year = 0
    @height = 0
    @dead = false
    @fruits = 0
  end

  def one_year_passes!
    @age += 1
    @fruits = 0
    unless dead?
      produce_fruits
      grow
    end
  end

  def dead?
    if @age <= 50
      @dead = false
    elsif @age > 50
      @dead = true
    end
  end

  def amount_of_fruits!
    if @age >= 6
      @fruits += 100
    end
  end

  def pick_a_fruit!
    if @fruits.positive?
      @fruits -= 1
    else
      puts "Not enough fruits!"
    end
  end

  def grow
    if @age < 10
      @height += 1
    else
      @height = 10
    end
  end

  def produce_fruits
    if @age >= 15
      @fruits = 0
    elsif @age > 9
      @fruits += 200
    elsif @age > 5
      @fruits += 100
    end
  end
end
