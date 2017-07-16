class Pangram
  def self.pangram? phrase
    phrase = phrase.downcase
    
    if phrase.length < 26
      false
    end

    arr = ('a'..'z').to_a

    index = 0
    count = 0

    while index < arr.length
      if phrase.include? arr[index]
        count = count + 1
      end
      index = index + 1
    end

    if count == 26
      true
    else
      false
    end

  end
end

module BookKeeping
   VERSION = 4 # Where the version number matches the one in the test.
 end
