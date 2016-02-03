require 'prime'

class PrimeNumber
  def initialize(prime_number)
    @prime_number = prime_number
  end

  def circular?
    rotations_of_digits.each { |number| return false unless Prime.prime?(number) }
    true
  end

  private

  def rotate_by_1(word)
    digits = word.chars
    digits.unshift(digits.pop)
    digits.join('')
  end

  def rotations_of_digits
    rotations = []
    number = @prime_number.to_s
    number.length.times do
      rotations << number.to_i
      number = rotate_by_1(number)
    end
    rotations
  end
end

primes_below_one_milion = []
circular_primes_counter = 0
Prime.each(1_000_000) { |prime_number| primes_below_one_milion << prime_number }
primes_below_one_milion.each { |prime_number| circular_primes_counter += 1 if PrimeNumber.new(prime_number).circular? }
puts circular_primes_counter
