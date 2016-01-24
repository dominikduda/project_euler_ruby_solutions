puts (1..100).inject(:+)**2 - (1..100).inject { |sum, number| sum + number**2 }
