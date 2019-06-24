def fizz_buzz(number)
  fail ArgumentError, "#{number} should be greater than 1" if number < 1
  (1..number).map do |i|
    if i % 3 == 0 && i % 5 == 0
      'FizzBuzz'
    elsif i % 3 == 0
      'Fizz'
    elsif i % 5 == 0
      'Buzz'
    else
      i
    end
  end
end
