# https://projecteuler.net/problem=22
# Answer is: 871198282

class Names
  def initialize(names)
    @names = names
  end

  def sum_of_names_scores
    sum = 0
    i = 1
    to_sorted_array(@names).each do |name|
      sum += alphabetical_value(name) * i
      i += 1
    end
    sum
  end

  private

  def alphabetical_value(name)
    value = 0
    name.chars.each { |letter| value += letter.ord - 'a'.ord + 1 }
    value
  end

  def to_sorted_array(names)
    names.delete('"').downcase.split(',').sort
  end
end

names = File.open('materials/22.txt', 'r', &:read)
names = Names.new(names)
puts names.sum_of_names_scores
