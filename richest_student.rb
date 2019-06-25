class Student
  include Comparable

  attr_reader :name

  def initialize(name, fives, tens, twenties)
    @name = name
    @fives = fives
    @tens = tens
    @twenties = twenties
  end

  def wealth
    @fives * 5 + @tens * 10 + @twenties * 20
  end

  def <=>(other)
    wealth <=> other.wealth
  end
end

# Suppose you have students (defined by the class Student) who each have an amount of money (in bills of five, ten and twenty euros). We want to be able to compare them based on their wealth.
