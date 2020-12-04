# frozen_string_literal: true

class Grains
  def self.square(number)
    raise ArgumentError unless number.between?(1, 64)

    power = number - 1
    2**power
  end

  def self.total
    (1..64).sum { |n| square(n) }
  end
end
