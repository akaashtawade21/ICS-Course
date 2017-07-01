puts "What year were you born?"
year = gets.chomp

puts "What month were you born?"
month = gets.chomp

puts "What day were you born?"
day = gets.chomp

puts "What hour were you born?"
hour = gets.chomp

puts "What minute were you born?"
minute = gets.chomp

puts "What second were you born?"
second = gets.chomp

time_born = Time.local(year, month, day, hour, minute, second)
answer = time_born + 1000000000
puts "You will turn one billion seconds old on #{answer}"
