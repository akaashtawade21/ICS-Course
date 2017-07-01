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

total_mp3s = shuffle(Dir['**/*.mp3s'])

File.open 'playlist.m3u', 'w' do |f|
  total_mp3s.each do |mp3s|
    f.write mp3s+"\n"
  end
end

puts 'Playlist complete!'
