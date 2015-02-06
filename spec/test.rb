def shortest_word_in_array(array)
  array.sort_by {|i| [i.length, i.last]}.reverse
end

n = shortest_word_in_array %w(here is a bunch of words of different lengths)
