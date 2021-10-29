def get_sum(a, b)
  if a > b
    a, b = b, a
  end
  (a..b).step(1).to_a.inject(0, :+)
  # (a..b).step(1).to_a.sum
  # return a < b ? (a..b).reduce(:+) : (b..a).reduce(:+)
end