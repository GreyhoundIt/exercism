# frozen_string_literal: true

class PhoneNumber
  def self.clean(number)
    number.gsub!(/\D/, '')
    return nil unless international?(number) || domestic?(number)

    remove_leading_one(number) if international?(number)

    return nil unless valid_area_code?(number) && valid_exchange_code?(number)

    number
  end

  def self.international?(number)
    number.length == 11 && number.chars[0] == '1'
  end

  def self.domestic?(number)
    number.length == 10
  end

  def self.remove_leading_one(number)
    number[0] = ''
  end

  def self.valid_area_code?(number)
    number.chars[0].to_i >= 2
  end

  def self.valid_exchange_code?(number)
    number.chars[3].to_i >= 2
  end
end
