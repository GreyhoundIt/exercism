module TwoFer
  def self.two_fer(name="you")
    "One for #{name}, one for me."
  end


  def self.a
    puts "a"
    false
  end

  def self.b
    puts "hit"
  end

  def self.test
    a && b
  end
end
