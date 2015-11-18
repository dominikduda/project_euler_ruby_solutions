# https://projecteuler.net/problem=4
# Answer is: 906609

def largest_palindrome_product(number_1, number_2)
  largest_palindrome = 0
  number_1.times do |i|
    number_2.times do |j|
      (i * j).to_s.reverse == (i * j).to_s && (i * j) > largest_palindrome ? largest_palindrome = (i * j) : nil
    end
  end
  largest_palindrome
end

puts largest_palindrome_product(999, 999)
