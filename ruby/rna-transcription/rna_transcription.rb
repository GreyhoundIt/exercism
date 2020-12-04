module Complement
  PAIRS = { G: 'C', C: 'G', T: 'A', A: 'U' }.freeze
  def self.of_dna(letters)
    letters.chars.map { |letter| PAIRS[letter.upcase.to_sym] }.join
  end
end