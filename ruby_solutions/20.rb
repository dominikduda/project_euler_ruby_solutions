puts (1..100).inject(:*).to_s.chars.inject { |sum, number| sum.to_i + number.to_i }
