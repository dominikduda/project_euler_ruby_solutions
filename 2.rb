# https://projecteuler.net/problem=2
# Answer is: 4613732

term_rear = 1
term_middle = 2
sum = 0
loop do
  term_rear.even? ? sum += term_rear : sum
  term_new = term_middle + term_rear
  term_rear = term_middle
  term_middle = term_new
  term_rear > 4000000 ? break : nil
end
puts sum
