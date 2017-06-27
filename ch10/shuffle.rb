def shuffle arr
  recursive_shuffle arr, []
end

def recursive_shuffle unshuffled_arr, shuffled_arr
  if unshuffled_arr.length == 0
    return shuffled_arr
  end

  tmp = []
  rand_pos = rand(unshuffled_arr.length)
  curr_pos = 0

  unshuffled_arr.each do |object|

    if rand_pos == curr_pos
      shuffled_arr.push object
    else
      tmp.push object
    end

    curr_pos = curr_pos + 1

  end

  unshuffled_arr = tmp
  recursive_shuffle unshuffled_arr, shuffled_arr

end

puts "Please list some words:"
words = []

while true
  word = gets.chomp
  if(word == '')
    break
  else
    words.push word
  end
end

puts(shuffle(words))
