# frozen_string_literal: true

class Raindrops
  def self.convert(number)
    sounds = ''
    sounds << 'Pling' if number % 3 == 0
    sounds << 'Plang' if number % 5 == 0
    sounds << 'Plong' if number % 7 == 0

    sounds.empty? ? number.to_s : sounds
  end
end
