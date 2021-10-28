def solution(string)
  string.gsub(/[A-Z]/) { |x| x = " #{x}"}
end

puts solution ""