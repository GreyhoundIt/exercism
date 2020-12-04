# frozen_string_literal: true

class Hamming
  # calculate the difference in the dna pairs
  # @params [String] strand1, strand2
  # @return [Integer] distance
  def self.compute(strand1, strand2)
    raise ArgumentError unless strand1.length == strand2.length

    # strand1.each_char.with_index.count { | letter, index | letter != strand2[index] }
    # strand1.each_char.zip(strand2.each_char).count { |a, b| a !=b }
    strand1.each_char.zip(strand2.each_char).count { |pair| pair[0] != pair[1] }
  end
end
