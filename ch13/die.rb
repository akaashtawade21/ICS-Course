class Die
  def initialize
    # I'll just roll the die, though we could do something else
    # if we wanted to, such as setting the die to have 6 showing.
    roll
  end
  def roll
    puts "What would you like the die to roll?"
    num = gets.chomp.to_i
    if num > 6 || num < 1
      puts "Please enter a valid die number"
    else
      @number_showing = num
    end
  end
  def showing
    @number_showing
  end
end
puts Die.new.showing
