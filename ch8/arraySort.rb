puts "Enter as many words as you would like:"
words = []
while true
  word = gets.chomp
if(word == '')
  break
else
words.push word
end
end

puts "Here they are sorted"
puts words.sort
