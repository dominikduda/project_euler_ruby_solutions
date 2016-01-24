class Number
  def initialize(number)
    @number = number
  end

  def digits_fifth_powers_sum
    @number.to_s.chars.inject(0) { |sum, digit| sum.to_i + digit.to_i**5 }
  end
end

sum = 0
10.upto(354_294) { |i| sum += i if Number.new(i).digits_fifth_powers_sum == i }
puts sum

# Upper search limit have to be determined, so we need number x*9^5 which will give us x digit number.
# 9^5 = 59049 -> 5 digits; 5*9^5 = 295245 -> with 5 digits it's possible to make 6 digit number, so 6*9^5 = 354294 seems
# like reasonable upper search limit.
