sunday_count = 0

1901.upto(2000) do |year|
  1.upto(12) do |month|
    Time.new(year, month, 1).sunday? ? sunday_count += 1 : nil
  end
end

puts sunday_count
