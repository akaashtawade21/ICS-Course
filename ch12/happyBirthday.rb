puts "What year were you born? (YYYY)"
year = gets.chomp

puts "What month were you born? (1-12)"
month = gets.chomp

puts "What day were you born?"
day = gets.chomp

if 1000 < year.to_i && year.to_i < 2018 && 0 < month.to_i && month.to_i < 13 &&
  0 < day.to_i && day.to_i < 31
  time_born = Time.local(year, month, day)
else
  puts "Please enter correct dates"
  exit
end

age_in_seconds = Time.new - time_born
age_in_years = age_in_seconds/(60*60*24*365.25)

puts "SPANK \n"*age_in_years
