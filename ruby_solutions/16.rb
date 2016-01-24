puts (2**1000).to_s.chars.inject { |sum, number| sum.to_i + number.to_i }
