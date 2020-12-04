# frozen_string_literal: true

class Squares
  attr_reader :range
  def initialize(number)
    @range = (1..number)
  end

  def square_of_sum
    range.reduce(:+)**2
  end

  def sum_of_squares
    range.sum { |n| n**2 }
  end

  def difference
    square_of_sum - sum_of_squares
  end
end
