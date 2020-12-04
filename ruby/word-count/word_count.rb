# frozen_string_literal: true

class Phrase
  attr_reader :words

  def initialize(string)
    @words = string
  end

  def word_count
    list = Hash.new(0)
    words.downcase.scan(/\b[\w']+\b/) { |w| list[w] += 1 }
  end
end
