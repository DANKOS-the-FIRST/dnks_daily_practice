def spin_words(string)
  string.gsub(/\w{5,}/, &:reverse)
end

puts spin_words("This is another test")