combinations = []
2.upto(100) { |a| 2.upto(100) { |b| combinations << a**b } }
puts combinations.uniq.length
