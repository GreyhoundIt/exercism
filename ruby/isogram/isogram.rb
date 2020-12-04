class Isogram
  # take the given string downcase and select any word character
  # then check the size against the uniq length
  # @param [String] string
  # @return [Boolean]
  def self.isogram?(string)
   chars = string.downcase.scan(/\w/)
   chars.size == chars.uniq.size
  end
end
