class Number
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def curious?
    @number == sum_of_digits_factorials
  end

  private

  def sum_of_digits_factorials
    @number.to_s.chars.inject(0) { |sum, digit| sum.to_i + factorial(digit.to_i) }
  end

  def factorial(number)
    return 1 if 0 == number || 1 == number
    (2..number).inject(&:*)
  end
end

numbers_equal_to_sum_of_factorials_of_their_digits = []
checked_number = Number.new(10)
11.upto(500_000) do |i|
  numbers_equal_to_sum_of_factorials_of_their_digits << checked_number if checked_number.curious?
  checked_number = Number.new(i)
end
puts numbers_equal_to_sum_of_factorials_of_their_digits.inject(0) { |sum, number| sum + number.number }
