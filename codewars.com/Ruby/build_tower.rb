def towerBuilder(n_floors)
  #n.times.map{|x|(?**(x*2+1)).center n*2-1}
  @ret = []
  n_floors.times do |i|
    @ret << (' ' * (n_floors - i - 1) + '*' * (1 + (i * 2)) + ' ' * (n_floors - i - 1))
  end
  @ret
end

puts towerBuilder 3