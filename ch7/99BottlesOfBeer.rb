num = 99
while num > 1
  puts num.to_s + " bottles of beer on the wall, " + num.to_s + " bottles of beer. Take one down and pass it around, " + num.to_s + " bottles of beer on the wall."
  num = num - 1
end
puts num.to_s + " bottle of beer on the wall, " + num.to_s + " bottle of beer. Take one down and pass it around, no more bottles of beer on the wall."
