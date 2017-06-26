def sort arr # This "wraps" recursive_sort.
recursive_sort arr, []
end

def recursive_sort unsorted_arr, sorted_arr
  if unsorted_arr.length <= 0
    return sorted_arr
  end

  small = unsorted_arr.pop
  tmp = []

  unsorted_arr.each do |word|
    if word.downcase < small.downcase
      tmp.push small
      small = word
    else
      tmp.push word
    end
  end

  sorted_arr.push small
  recursive_sort tmp, sorted_arr
  end

puts(sort(['Blue','camel','asprin','blue','zebra','a']))
