def count_smileys(arr)
  arr.count { |x| /[:;][-~]?[)D]/.match(x) }
end

puts count_smileys [':)', ':(']