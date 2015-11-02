# https://projecteuler.net/problem=21
# Answer is: 648

(1..100).inject(:*).to_s.chars.inject{ |sum, number| sum.to_i + number.to_i }
