module Gigasecond
  GIGASECOND = 10**9
  def self.from(datetime)
    raise 'Invalid date format' unless datetime.instance_of?(Time)
    datetime + GIGASECOND
  end
end