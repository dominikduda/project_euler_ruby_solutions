# https://projecteuler.net/problem=15
# Answer is: 137846528820

def make_second_row(grid_side_length)
  second_row = []
  1.upto(grid_side_length) { |i| second_row << i + 1 }
  second_row
end

def amount_of_uniq_routes(grid_side_length)
  number_of_paths = make_second_row(grid_side_length)
  (grid_side_length - 1).times do |j|
    number_of_paths[0] = number_of_paths[1] * 2
    (grid_side_length - 2 - j).times { |k| number_of_paths[k + 1] = number_of_paths[k] + number_of_paths[k + 2] }
  end
  number_of_paths.shift
end

puts amount_of_uniq_routes(20)
