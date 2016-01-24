class PandigitalMultiplitacion
  attr_writer :multiplicand, :multiplier

  public

  def initialize(multiplicand = 0, multiplier = 0)
    @multiplicand = multiplicand
    @multiplier = multiplier
  end

  def unusual?
    equation = equation_to_array
    equation_length = equation.length
    equation_length == equation.uniq.length && 9 == equation_length && !equation.include?('0')
  end

  def product
    @multiplicand * @multiplier
  end

  private

  def equation_to_array
    @multiplier.to_s.chars + @multiplicand.to_s.chars + (@multiplicand * @multiplier).to_s.chars
  end
end

pandigital_products = []
pandigital_multiplication = PandigitalMultiplitacion.new
permutations = [1, 2, 3, 4, 5, 6, 7, 8, 9].permutation(5).to_a
permutations.each do |permutation|
  1.upto(4) do |i|
    pandigital_multiplication.multiplicand = permutation.slice(0, i).join('').to_i
    pandigital_multiplication.multiplier = permutation.slice(i, 5 - i).join('').to_i
    pandigital_products << pandigital_multiplication.product if pandigital_multiplication.unusual?
  end
end
puts pandigital_products.uniq.inject(&:+)

# Every digit 1 to 9 have to occur only once, so in equation 'n1 * n2 = n3' total amount of digits must be equal to 9.
# That implies that sum of amounts of digits of n1 and n2 have to be equal to 5, because only then product can have 4
# digits and only then total amount of digits can be equal to 9.
