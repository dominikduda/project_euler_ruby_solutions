# https://projecteuler.net/problem=10
# Answer is: 142913828922

require 'prime.rb'

sum = 0
Prime.each { |number| number < 2_000_000 ? sum += number : break }
puts sum
