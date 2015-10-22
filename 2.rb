# https://projecteuler.net/problem=2
# Answer is: 4613732

def sum_even_fib_numbers_smaller_than(term_rear, term_front, range)
  sum = 0
  loop do
    term_rear.even? ? sum += term_rear : nil
    term_new = term_front + term_rear
    term_rear = term_front
    term_front = term_new
    term_rear > range ? break : nil
  end
  sum
end

puts sum_even_fib_numbers_smaller_than(1, 2, 4000000)
