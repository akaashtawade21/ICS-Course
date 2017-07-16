class Hamming
  def self.compute dna_1, dna_2
    if dna_1.length != dna_2.length
      raise ArgumentError.new("Strands are not the same length")
    end

    int = 0
    hamming = 0

    while int <= dna_1.length
      if dna_1[int] != dna_2[int]
        hamming = hamming + 1
      end

      int = int + 1
    end

    hamming

  end
end

module BookKeeping
  VERSION = 3 # Where the version number matches the one in the test.
end
