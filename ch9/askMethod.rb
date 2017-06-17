def ask question
  while true
    puts question
    answer = gets.chomp.downcase
    if answer == 'yes'
      return true
    elsif answer == 'no'
      return false
    else
      puts 'Please answer yes or no'
    end
  end
end

have_you = ask "Have you been to Asia?"
puts have_you
