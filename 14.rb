# https://projecteuler.net/problem=14
# Answer is: 837799

term_with_max_sequence_length = 0
max_sequence_length = 0
known_sequences = {}
temp_sequence_terms = []

1.upto(999_999) do |starting_number|
  next if known_sequences[starting_number]

  sequence_length = 1
  term = starting_number

  while term > 1
    if known_sequences[term]
      sequence_length += known_sequences[term] - 1
      break
    else
      temp_sequence_terms << term
      term.even? ? term /= 2 : term = 3 * term + 1
      sequence_length += 1
    end
  end

  temp_sequence_terms.length.times do |i|
    if known_sequences[temp_sequence_terms[temp_sequence_terms.length - i]]
      temp_sequence_terms.pop
    else
      known_sequences[temp_sequence_terms.pop] = (sequence_length - temp_sequence_terms.length)
    end
  end

  if sequence_length > max_sequence_length
    max_sequence_length = sequence_length
    term_with_max_sequence_length = starting_number
  end
end

puts term_with_max_sequence_length
