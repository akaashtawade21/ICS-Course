def oldRoman num
roman = ""

if (num / 1000) > 0
  roman = roman + "M" * (num / 1000)
  num = num % 1000
end
  if (num / 500) > 0
    roman = roman + "D" * (num / 500)
    num = num % 500
  end
    if (num / 100) > 0
      roman = roman + "C" * (num / 100)
      num = num % 100
    end
      if (num / 50) > 0
        roman = roman + "L" * (num / 50)
        num = num % 50
      end
        if (num / 10) > 0
          roman = roman + "X" * (num / 10)
          num = num % 10
        end
          if (num / 5) > 0
            roman = roman + "V" * (num / 5)
            num = num % 5
          end
            if (num / 1) > 0
              roman = roman + "I" * (num / 1)
              num = num % 1
            end
return roman
end

run = oldRoman 2345
puts run
