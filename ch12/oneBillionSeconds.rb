puts "What year were you born?"
year = gets.chomp

puts "What month were you born? (1-12)"
month = gets.chomp

puts "What day were you born?"
day = gets.chomp

puts "What hour were you born? (1-24"
hour = gets.chomp

puts "What minute were you born?"
minute = gets.chomp

puts "What second were you born?"
second = gets.chomp

if 1000 < year.to_i && year.to_i < 2018 && 0 < month.to_i && month.to_i < 13 &&
  0 < day.to_i && day.to_i < 31 && 0 <= minute.to_i && minute.to_i < 60 &&
  0 <= second.to_i && second.to_i < 60
    time_born = Time.local(year, month, day, hour, minute, second)
else
  puts "Please enter actual dates for requested values"
  exit
end
answer = time_born + 1000000000
puts "You will turn one billion seconds old on #{answer}"
