# https://projecteuler.net/problem=30
# Answer is: 443839

result = 0
10.upto(400_000) do |number|
  number.to_s.chars.inject(0) { |sum, digit| sum.to_i + digit.to_i**5 } == number ? result += number : nil
end
puts result
