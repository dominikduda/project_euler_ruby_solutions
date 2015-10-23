# https://projecteuler.net/problem=6
# Answer is: 25164150

puts (1..100).inject(:+) ** 2 - (1..100).inject { |sum, number| sum + number ** 2 }
