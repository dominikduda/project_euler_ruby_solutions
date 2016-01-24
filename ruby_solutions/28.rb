class Spiral
  def initialize(side_length)
    @side_length = side_length
  end

  def diagonals_sum
    diagonal_sum(1, 3) + 1
  end

  private

  def diagonal_sum(number, start_value)
    sum = 0
    step = 2 * number
    4.times do |i|
      sum += step * i + start_value
      i == 3 ? start_value += step * i + step + 2 : nil
    end
    number += 1
    number > amount_of_levels ? (return sum) : sum += diagonal_sum(number, start_value)
    sum
  end

  def amount_of_levels
    @side_length / 2
  end
end

puts Spiral.new(1001).diagonals_sum
