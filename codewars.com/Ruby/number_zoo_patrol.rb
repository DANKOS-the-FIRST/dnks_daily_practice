def find_missing_number(numbers)
  real_sum = ((numbers.length + 2) * (numbers.length + 1)) / 2 - numbers.sum
end

puts find_missing_number [2, 3, 4]