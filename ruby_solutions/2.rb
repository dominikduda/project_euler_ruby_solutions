def sum_even_fib_numbers_smaller_than(term_rear, term_front, range)
  sum = 0
  while term_rear < range
    term_rear.even? ? sum += term_rear : nil
    term_rear, term_front = term_front, term_front + term_rear
  end
  sum
end

puts sum_even_fib_numbers_smaller_than(1, 2, 4_000_000)
