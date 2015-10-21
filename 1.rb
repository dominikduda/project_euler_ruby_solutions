# https://projecteuler.net/problem=1
# Answer is: 233168

i = 0
sum = 0
loop do
  i == 999 ? break : i += 1
  (i % 3 == 0) || (i % 5 == 0) ? sum += i : nil
end
puts "Answer is: #{sum}"
