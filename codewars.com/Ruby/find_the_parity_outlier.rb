def find_outlier(integers)
  integers.find { |n| ([0, 1].include? integers[0..2].count(&:even?)) ? n.even? : n.odd? }
  # integers.partition(&:odd?).find(&:one?).first
end

puts find_outlier [0, 1, 2]
