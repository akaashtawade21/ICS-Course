while true
  phrase = gets.chomp
  if phrase == 'BYE'
    count = count + 1
    puts "..."
  elsif phrase == phrase.upcase
    year = rand(21)+1930
    puts "NO, NOT SINCE " + year.to_s + "!"
    count = 0
  else
    puts "HUH?! SPEAK UP, SONNY!"
    count = 0
  end

  if count == 3
  puts "SEE YA!"
  break
  end
end
