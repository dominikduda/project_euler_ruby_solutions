# https://projecteuler.net/problem=21
# Answer is: 31626

amicable_numbers_count = 0

2.upto(10_001) do |i|
  sum_of_i_divisors = 0
  sum_of_sum_divisors = 0
  1.upto(i - 1) { |j| i % j == 0 ? sum_of_i_divisors += j : nil }
  1.upto(sum_of_i_divisors - 1) { |k| sum_of_i_divisors % k == 0 ? sum_of_sum_divisors += k : nil }
  sum_of_sum_divisors == i && i != sum_of_i_divisors ? amicable_numbers_count += i + sum_of_i_divisors : nil
end

puts amicable_numbers_count / 2
