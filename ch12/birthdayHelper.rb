birthday_hash = {}

File.read("birthdates.txt").each_line do |line|
  initial_comma = 0

  while line[initial_comma] != ','
    initial_comma = initial_comma + 1
  end

  name = line[0..(initial_comma - 1)]
  date = line[-13..-1]
  birthday_hash[name] = date

end

puts "Please enter a name to learn their birthdate"
name = gets.chomp
date = birthday_hash[name]

if date == nil
  puts "Sorry, don't have that birthday"
else
  puts "#{name}'s birthday is on #{date[0..5]}"
end
