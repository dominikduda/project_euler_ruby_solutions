# https://projecteuler.net/problem=17
# Answer is: 21124

nums_1_to_9 = 3 + 3 + 5 + 4 + 4 + 3 + 5 + 5 + 4
nums_10_to_19 = 3 + 6 + 6 + 8 + 8 + 7 + 7 + 9 + 8 + 8
nums_20_to_99 = 10 * (6 + 6 + 5 + 5 + 5 + 7 + 6 + 6) + 8 * nums_1_to_9

nums_100_to_999 = nums_1_to_9 * 100 + 7 * 9 + 10 * 891 + (nums_1_to_9 + nums_10_to_19 + nums_20_to_99) * 9
# numbers 1-9 occurs 100 times in hundreds
# "hundred" occurs 9 times
# "hundred and" occurs 891 times
# numbers 1-99 occurs 9 times

puts nums_1_to_9 + nums_10_to_19 + nums_20_to_99 + nums_100_to_999 + 11
# numbers 1-999 + "one thousand"
