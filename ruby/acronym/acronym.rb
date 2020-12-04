module Acronym
  # @param  [String]
  # @return [String]
  def self.abbreviate(string)
    # letter after word boundary
    string.scan(/\b[a-zA-Z]/).join.upcase
  end
end