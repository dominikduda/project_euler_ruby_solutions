class Fraction
  attr_reader :nominator, :denominator

  def initialize(nominator, denominator)
    @nominator = nominator
    @denominator = denominator
  end

  def curious?
    if any_common_digit_in_nominator_and_denominator?
      return (value_after_inexperienced_mathematician_simplify == value && value < 1)
    end
    false
  end

  def not_trivial?
    '0' != @nominator.to_s.chars.last && '0' != @denominator.to_s.chars.last
  end

  def simplify!
    greatest_common_divisor = @nominator.gcd(@denominator)
    @nominator /= greatest_common_divisor
    @denominator /= greatest_common_divisor
  end

  private

  def any_common_digit_in_nominator_and_denominator?
    @nominator.to_s.chars.each { |digit| return true if @denominator.to_s.chars.include?(digit) }
    false
  end

  def common_digit_from_nominator_and_denominator
    @nominator.to_s.chars.each { |digit| return digit if @denominator.to_s.chars.include?(digit) }
  end

  def value_after_inexperienced_mathematician_simplify
    common_digit = common_digit_from_nominator_and_denominator
    nominator = @nominator.to_s.sub(common_digit.to_s, '').to_f
    denominator = @denominator.to_s.sub(common_digit.to_s, '').to_i
    nominator / denominator
  end

  def value
    @nominator.to_f / @denominator
  end
end

non_trivial_curious_fractions = []
10.upto(99) do |i|
  99.downto(10) do |j|
    fraction = Fraction.new(i, j)
    non_trivial_curious_fractions << fraction if fraction.curious? && fraction.not_trivial?
  end
end
nominator_product = non_trivial_curious_fractions.inject(1) { |product, fraction| product * fraction.nominator }
denominator_product = non_trivial_curious_fractions.inject(1) { |product, fraction| product * fraction.denominator }
result = Fraction.new(nominator_product, denominator_product)
result.simplify!
puts result.denominator
