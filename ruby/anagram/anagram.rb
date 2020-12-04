# frozen_string_literal: true

class Anagram
  attr_reader :word
  def initialize(word)
    @word = word
  end

  def match(list)
    list.select do |test_word|
      test_word.downcase.chars.sort == word.downcase.chars.sort unless test_word.downcase == word.downcase
    end
  end
end
