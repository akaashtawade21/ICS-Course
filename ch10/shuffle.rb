def shuffle arr

  shuffled = []

  if arr.length == 0
    return shuffled
  end

  tmp = []
  rand_pos = rand(arr.length)
  curr_pos = 0

  arr.each do |object|

    if rand_pos == curr_pos
      shuffled.push object
    else
      tmp.push object
    end

    curr_pos = curr_pos + 1

  end

  arr = tmp
  shuffle arr

end

puts(shuffle(['blue','camel','asprin','blue','zebra','a']))
