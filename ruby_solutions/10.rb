require 'prime.rb'

sum = 0
Prime.each { |number| number < 2_000_000 ? sum += number : break }
puts sum
