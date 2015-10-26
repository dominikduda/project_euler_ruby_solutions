term_with_max_sequence_length = 0
max_sequence_length = 0
known_sequences = {}
cache = []
cache_length = 0

1.upto(3) do |starting_number|
  next if known_sequences[starting_number]
  sequence_length = 1

  term = starting_number
  while term > 1
    unless known_sequences[term]
      cache << term
      term.even? ? term /= 2 : term = 3 * term + 1
      sequence_length += 1
    else
      sequence_length += known_sequences[term] - 1
      break
    end
  end

  cache.length.times do |i|
    if known_sequences[cache[cache.length - i]]
      cache.pop
    else
      known_sequences[cache.pop] = (cache_length - cache.length) + ((sequence_length) - cache_length)
    end
  end

  if sequence_length > max_sequence_length
    max_sequence_length = sequence_length
    term_with_max_sequence_length = starting_number
  end
end

puts term_with_max_sequence_length
