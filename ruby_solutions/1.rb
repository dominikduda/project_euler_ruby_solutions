# https://projecteuler.net/problem=1
# Answer is: 233168

puts (3..999).inject { |sum, number| number % 3 == 0 || number % 5 == 0 ? sum + number : sum }
