def pangram?(string)
  str = string.downcase
  ('a'..'z').to_a.all? { |ch| str.include?(ch) }
end

puts pangram? "The quick brown fox jumps over the azy dog."
