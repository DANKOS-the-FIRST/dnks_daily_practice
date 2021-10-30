def alphabet_war(fight)
  @ret = 0
  @weight = { w: -4, p: -3, b: -2, s: -1, m: 4, q: 3, d: 2, z: 1 }
  calculate_weight = ->(sym) { @ret += @weight[sym.to_sym] }
  fight.delete("^[wpbsmqdz]").each_char { |x| calculate_weight.call x }
  return "Right side wins!" if @ret > 0
  return "Let's fight again!" if @ret == 0
  "Left side wins!"
end

puts alphabet_war "wmso"