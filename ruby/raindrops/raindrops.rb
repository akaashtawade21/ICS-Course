class Raindrops
  def self.convert num

    answer = ''

    if num%3 == 0
      answer = answer + 'Pling'
    end
    if num%5 == 0
      answer = answer + 'Plang'
    end
    if num%7 == 0
      answer = answer + 'Plong'
    end
    if answer.length == 0
      answer = answer + num.to_s
    end
    answer
  end
end

module BookKeeping
   VERSION = 3 # Where the version number matches the one in the test.
end
