# https://projecteuler.net/problem=20
# Answer is: 648

puts (1..100).inject(:*).to_s.chars.inject { |sum, number| sum.to_i + number.to_i }
