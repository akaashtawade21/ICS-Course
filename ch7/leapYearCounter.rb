puts "Enter a Start Year:"
start_year = gets.chomp.to_i
puts "Enter an Ending Year:"
end_year = gets.chomp.to_i
tmp_year = start_year

puts "Here are the Leap Years:"
while tmp_year <= end_year
  if tmp_year % 4 == 0
    if tmp_year % 100 != 0 || tmp_year % 400 == 0
      puts tmp_year
    end
  end
    tmp_year = tmp_year + 1
end
