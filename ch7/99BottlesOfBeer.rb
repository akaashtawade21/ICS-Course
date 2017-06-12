num = 99
while num > 1
  puts num.to_s + " bottles of beer on the wall, " + num.to_s + " bottles of beer."
  num = num - 1
  puts "Take one down and pass it around, " + num.to_s + " bottles of beer on the wall."
end
puts num.to_s + " bottle of beer on the wall, " + num.to_s + " bottle of beer."
puts "Take one down and pass it around, no more bottles of beer on the wall."
puts "No more bottles of beer on the wall, no more bottles of beer."
num = 99
puts "Go to the store and buy some more, " + num.to_s + " bottles of beer on the wall."
