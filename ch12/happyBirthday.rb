puts "What year were you born?"
year = gets.chomp

puts "What month were you born?"
month = gets.chomp

puts "What day were you born?"
day = gets.chomp

time_born = Time.local(year, month, day)
age_in_seconds = Time.new - time_born

age_in_years = age_in_seconds/(60*60*24*365.25)

puts "SPANK \n"*age_in_years
