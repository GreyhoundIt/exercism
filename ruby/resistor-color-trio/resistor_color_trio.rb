class ResistorColorTrio

  COLOURS = %w[black brown red orange yellow green blue violet grey white].freeze

  attr_reader :colours
  def initialize(colours)
    raise ArgumentError unless colours.all? { |input_colour| COLOURS.include?(input_colour) }
    @colours = colours
  end

  def label
    ohms = convert_to_ohms
    ohms.end_with?("000") ? "Resistor value: #{ohms[0, ohms.size - 3]} kiloohms" : "Resistor value: #{ohms} ohms"
  end

  def convert_to_ohms
    color_indexes = colours.map{ |color| COLOURS.index(color) }
    num = color_indexes[0..1].join + '0' * color_indexes[2]
  end

end
