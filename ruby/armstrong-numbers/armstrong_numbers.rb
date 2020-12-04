# frozen_string_literal: true

class ArmstrongNumbers
  def self.include?(number)
    digits = number.digits
    digits.sum { |d| d**digits.count } == number
  end
end
