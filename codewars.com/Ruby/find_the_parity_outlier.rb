def find_outlier(integers)
  integers.find { |n| integers[0..2].count(&:even?) < 2 ? n.even? : n.odd? }
  # integers.partition(&:odd?).find(&:one?).first
end

puts find_outlier [0, 1, 2]
