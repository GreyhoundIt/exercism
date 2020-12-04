# frozen_string_literal: true

class Triangle
  attr_reader :sides
  def initialize(sides)
    @sides = sides
  end

  def equilateral?
    valid_triangle? && sides.uniq.length == 1
  end

  def isosceles?
    valid_triangle? && sides.uniq.length <= 2
  end

  def scalene?
    valid_triangle? && sides.uniq.length == 3
  end

  private

  def zero_or_negative_sides?
    sides.any? { |side| side <= 0 }
  end

  def valid_lenghts?
    a = sides[0] + sides[1] > sides[2]
    b = sides[1] + sides[2] > sides[0]
    c = sides[0] + sides[2] > sides[1]

    a && b && c
  end

  def valid_triangle?
    !zero_or_negative_sides? && valid_lenghts?
  end
end
