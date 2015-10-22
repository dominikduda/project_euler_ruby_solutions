# https://projecteuler.net/problem=1
# Answer is: 233168

def sum_of_multiples_of_3_and_5(range_begin, range_end)
  (range_begin..range_end).inject { |sum, number| number % 3 == 0 || number % 5 == 0 ? sum + number : sum }
end

puts sum_of_multiples_of_3_and_5(3, 999)
