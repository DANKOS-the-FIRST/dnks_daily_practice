# frozen_string_literal: true

def tickets(people)
  puts people
  @changes = { bill25: 0, bill50: 0 }
  people.all? do |x|
    case x
    when 25
      @changes[:bill25] += 1
    when 50
      if (@changes[:bill25]).positive?
        @changes[:bill50] += 1
        @changes[:bill25] -= 1
      else
        (return 'NO')
      end
    when 100
      if (@changes[:bill50]).positive? && (@changes[:bill25]).positive?
        @changes[:bill50] -= 1
        @changes[:bill25] -= 1
      elsif @changes[:bill25] > 2
        @changes[:bill25] -= 3
      else
        (return 'NO')
      end
    end
  end ? 'YES' : 'NO'
end

puts tickets [25, 25, 50, 100]
