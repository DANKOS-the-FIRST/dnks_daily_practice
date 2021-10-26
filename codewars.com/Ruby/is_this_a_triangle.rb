def is_triangle(*params)
  Float(params.inject(0, :+)) / 2 > params.max
  # a, b, c = [a, b, c].sort
  # a + b > c
end

puts is_triangle(7, 2, 2)