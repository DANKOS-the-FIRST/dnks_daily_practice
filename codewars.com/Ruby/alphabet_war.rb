def strength(sym)
  ({ w: -4, p: -3, b: -2, s: -1,
     m: 4, q: 3, d: 2, z: 1 }[sym.to_sym] || 0)
end

def alphabet_war(fight)
  {
    -1 => 'Left side wins!',
    0 => "Let's fight again!",
    1 => 'Right side wins!'
  }[fight.chars.map { |x| strength x }.sum <=> 0]
end

puts alphabet_war "wmso"