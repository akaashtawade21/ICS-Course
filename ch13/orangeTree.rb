class OrangeTree

  def initialize tree_name
    @tree_name = tree_name
    @orangeCount = 0
    @height = 0
    @age = 0
    @alive = true

    puts "#{@tree_name} the orange tree is planted"
  end

  def oneYearPasses
    if @alive
      puts "#{@tree_name} is one year older"
      @age = @age + 1
      @height = @height + 1.8

      if @age > 2
        @orangeCount = @orangeCount + 1
      end

      if @age > 15
        puts "#{@tree_name} the orange tree has tragically died. RIP"
        @alive = false
      end
    else
      puts "The tree has died, it cannot grow older"
    end
  end

  def height
    if @alive
      puts "#{@tree_name} the orange tree is #{@height} inches tall"
    else
      puts "The tree is dead, it has no height"
    end
  end

  def age
    if @alive
      puts "#{@tree_name} the orange tree is #{@age} years old"
    else
      puts "The tree is dead"
    end
  end

  def orangeCount
    if @alive
      puts "#{@tree_name} the orange tree has #{@orangeCount} oranges on it"
    else
      puts "The tree is dead, it has no oranges"
    end
  end

  def pickOrange
    if @alive
      if @orangeCount > 0
        puts "You picked an Orange"
        @orangeCount = @orangeCount - 1
      else
        puts "There are no oranges to be picked"
      end
    else
      puts "The tree is dead, you cannot pick any oranges"
    end
  end
end

tree = OrangeTree.new 'Ricky'
tree.oneYearPasses
tree.age
tree.height
tree.oneYearPasses
tree.oneYearPasses
tree.orangeCount
tree.oneYearPasses
tree.pickOrange

15.times do
  tree.oneYearPasses
end

tree.height
tree.age
tree.orangeCount
tree.pickOrange
