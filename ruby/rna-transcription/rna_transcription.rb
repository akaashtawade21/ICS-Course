class Complement
  def self.of_dna dna
    index = 0
    rna = ''

    while index < dna.length
      if dna[index] == 'G'
        rna = rna + 'C'

      elsif dna[index] == 'C'
        rna = rna + 'G'

      elsif dna[index] == 'A'
        rna = rna + 'U'

      elsif dna[index] == 'T'
        rna = rna + 'A'

      else
        rna = ''
        break
      end
      index = index + 1
    end

  rna
  end
end

module BookKeeping
  VERSION = 4 # Where the version number matches the one in the test.
end
