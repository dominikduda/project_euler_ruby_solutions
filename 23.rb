
# https://projecteuler.net/problem=23
# Answer is: 4179871

require 'prime'

class Number
  def initialize(number)
    @number = number
  end

  def abundant?
    sum_of_proper_divisors > @number
  end

  def sum_of_proper_divisors
    sum = 1
    @number.prime_division.each do |factor_and_its_amount|
      temp_sum = 0
      (factor_and_its_amount[1] + 1).times do |i|
        temp_sum += factor_and_its_amount[0]**i
      end
      sum *= temp_sum
    end
    sum - @number
  end
end

upper_limit = 28_123
abundant_sums = []
abundant_numbers = (1..upper_limit).select { |i| Number.new(i).abundant? }

abundant_numbers.each do |i|
  abundant_numbers.each do |j|
    sum = i + j
    sum > upper_limit ? break : abundant_sums << sum
  end
end

non_anbundant_sums = (1..upper_limit).to_a - abundant_sums

puts non_anbundant_sums.inject(&:+)
