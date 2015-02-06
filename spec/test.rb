def every_possible_pairing_of_students(array)
  result = Array.new
  array.each.with_index do |x, i|
    for a in (i+1)..(array.length-1) do
      result.push([x, array[a]])
    end
  end
  puts result
end

n = every_possible_pairing_of_students(['Bob', 'Dave', 'Clive'])