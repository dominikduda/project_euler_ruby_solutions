# https://projecteuler.net/problem=12
# Answer is: 76576500

def factorize_first(number)
  prime_factors = []
  i = 2
  while i - 2 != number do
    if number % i == 0
      prime_factors << i
      number /= i
      i = 1
    end
    i += 1
  end
  prime_factors.empty? ? [1] : prime_factors
end

def amount_of_divisors(number)
  amount_of_each_prime_factor = []
  prime_factors_of_number = factorize_first(number)
  prime_factors_of_number.uniq.each do |prime_factor|
    amount_of_each_prime_factor << prime_factors_of_number.count(prime_factor) + 1
  end
  amount_of_each_prime_factor.inject(&:*)
end

triangle_number = 1
i = 2

while amount_of_divisors(triangle_number) < 500 do
  triangle_number += i
  i += 1
end

puts triangle_number
