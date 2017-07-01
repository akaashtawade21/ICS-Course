puts "Please enter a Roman Numeral"
roman = gets.chomp

def romanConverter roman
  roman_hash = {'i' => 1,
    'v' => 5,
    'x' => 10,
    'l' => 50,
    'c' => 100,
    'd' => 500,
    'm' => 1000}

    position = roman.length - 1
    sum = 0
    prior_letter_value = 0

    while position >= 0
      letter = roman[position].downcase
      position = position - 1
      number = roman_hash[letter]

      if !number
        puts "Please enter a valid roman numeral"
        return
      end

      if number < prior_letter_value
        number = number * -1
      else
        prior_letter_value = number
      end
      sum = number + sum
    end
  return sum
end

puts(romanConverter roman)
