def prime?(number)
  (2..number - 1).none? { |i| number % i == 0 }
end

def largest_prime_factor(number)
  n = 2
  loop do
    n == number ? break : nil
    if prime?(n) && number % n == 0
      number /= n
      n = 2
    end
    n += 1
  end
  number
end

puts largest_prime_factor(600_851_475_143)
