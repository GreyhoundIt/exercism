# frozen_string_literal: true

class SumOfMultiples
  def initialize(*multiples)
    @multiples = multiples
  end

  def to(end_number)
    (1...end_number).sum { |num| @multiples.any? { |multiple| (num % multiple).zero? } ? num : 0 }
  end
end
