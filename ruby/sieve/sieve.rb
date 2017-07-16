class Sieve
  def initialize n
    @n = n
  end

  def primes
    delete_non_primes((2..@n).to_a)
  end

private

  def delete_non_primes(remaining, index = 0)

    factor = remaining[index]
    return remaining if factor == nil

    multiples = ((factor * 2)..@n).step(factor).to_a

    delete_non_primes(remaining - multiples, index + 1)
  end
end

module BookKeeping
   VERSION = 1 # Where the version number matches the one in the test.
 end
