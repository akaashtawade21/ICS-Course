class Squares

  def initialize num
    @num = num
  end
  def difference

    square_of_sum - sum_of_squares

  end
  def square_of_sum
    sum = 0
    while @num > 0
      sum = sum + @num
      @num = @num - 1
    end

      @square_of_sum = sum*sum

      @square_of_sum
  end

  def sum_of_squares
    sum_2 = 0

    while @num > 0
      sum_2 = sum_2 + @num*@num
      @num = @num - 1
    end

    @sum_of_squares = sum_2
    @sum_of_squares
  end


end

module BookKeeping
   VERSION = 4 # Where the version number matches the one in the test.
 end
