def alphanumeric?(string)
  #string =~ /\A[A-z\d]+\z/
  !(string =~ /\A[[:alnum:]]+\z/).nil?
end

puts alphanumeric?("hello world_")