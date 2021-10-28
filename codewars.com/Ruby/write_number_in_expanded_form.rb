def expanded_form(num)
  length = num.to_s.length
  ret = ''
  num.to_s.each_char do |c|
    length -= 1
    c == '0' ? c : ret += "#{c + ('0' * length)} + "
  end
  puts "'#{ret[0..-4]}'"
  ret[0..-4]
end

puts expanded_form 1203