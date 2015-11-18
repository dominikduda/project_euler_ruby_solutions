# https://projecteuler.net/problem=29
# Answer is: 9183

combinations = []
2.upto(100) { |a| 2.upto(100) { |b| combinations << a**b } }
puts combinations.uniq.length
