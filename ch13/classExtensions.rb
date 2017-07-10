class Array
  def shuffle
    recursive_shuffle self, []
  end

  def recursive_shuffle unshuffled_arr, shuffled_arr
    if unshuffled_arr.length == 0
      return shuffled_arr
    end

    tmp = []
    rand_pos = rand(unshuffled_arr.length)
    curr_pos = 0

    unshuffled_arr.each do |object|

      if rand_pos == curr_pos
        shuffled_arr.push object
      else
        tmp.push object
      end

      curr_pos = curr_pos + 1

    end

    unshuffled_arr = tmp
    recursive_shuffle unshuffled_arr, shuffled_arr

  end
end

puts [1,2,3,4,5].shuffle

class Integer
  def factorial
    if self == 1
      1
    else
      self*(self-1).factorial
    end
  end

puts 5.factorial

  def toRoman
    num = self

    thousands = (num / 1000)
    hundreds = (num % 1000 / 100)
    tens = (num % 100 / 10)
    ones = (num % 10)

    roman = 'M' * thousands
    if hundreds == 9
      roman = roman + 'CM'
    elsif hundreds == 4
      roman = roman + 'CD'
    else
      roman = roman + 'D' * (num % 1000 / 500)
      roman = roman + 'C' * (num % 500 / 100)
    end

    if tens == 9
      roman = roman + 'XC'
    elsif tens == 4
      roman = roman + 'XL'
    else
      roman = roman + 'L' * (num % 100 / 50)
      roman = roman + 'X' * (num % 50 / 10)
    end

    if ones == 9
      roman = roman + 'IX'
    elsif ones == 4
      roman = roman + 'IV'
    else
      roman = roman + 'V' * (num % 10 / 5)
      roman = roman + 'I' * (num % 5 / 1)
    end
      roman
  end
end

puts 4000.toRoman
