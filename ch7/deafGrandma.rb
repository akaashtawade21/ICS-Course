while true
  phrase = gets.chomp
  if phrase == 'BYE'
    puts "SEE YA!"
    break
  end

  if phrase == phrase.upcase
    year = rand(21)+1930
    puts "NO, NOT SINCE " + year.to_s + "!"
  else
    puts "HUH?! SPEAK UP, SONNY!"
  end
end
