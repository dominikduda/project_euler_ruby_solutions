class LimitedRepeatingCombination
  def initialize(elements)
    @elements = [] + elements
  end

  def amount_of_combinations(limit)
    combinations = [1] + [0] * limit
    @elements.each do |element|
      (element..limit).each do |i|
        combinations[i] += combinations[i - element]
      end
    end
    combinations.last
  end
end

puts LimitedRepeatingCombination.new([1, 2, 5, 10, 20, 50, 100, 200]).amount_of_combinations(200)

