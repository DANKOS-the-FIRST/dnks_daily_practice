# https://www.codewars.com/kata/546f922b54af40e1e90001da/train/ruby

def alphabet_position_my(text)
  @ret = ''
  text.downcase.to_s.gsub(/[a-z]/) { |char| @ret << "#{(char.ord - 96).to_s} " }
  @ret[0..-2]
end

def alphabet_position_bad(text)
  text.gsub(/[^a-z]/i, '').chars.map{ |c| c.downcase.ord - 96 }.join(' ')
end


puts alphabet_position("The sunset sets at twelve o' clock.")
