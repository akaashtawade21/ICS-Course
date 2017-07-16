class Die
  def initialize
    # I'll just roll the die, though we could do something else
    # if we wanted to, such as setting the die to have 6 showing.
    roll
  end

  def roll
    @number_showing = 1 + rand(6)
  end

  def cheat
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

dice_1 = Die.new
puts dice_1.showing
puts dice_1.cheat
puts dice_1.showing
