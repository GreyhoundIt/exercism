# frozen_string_literal: true

class Luhn
  def self.valid?(string)
    string = string.delete(' ')
    return false unless string =~ /^\d{2,}$/

    string.reverse.chars.map(&:to_i).map.with_index do |v, i|
      if i.even?
        v
      else
        doubled_value = v.double
        doubled_value < 9 ? doubled_value : doubled_value - 9
      end
    end .sum.multiple_of?(10)
  end
end

class Integer
  def double
    self * 2
  end

  def multiple_of?(number)
    self % number == 0
  end
end
