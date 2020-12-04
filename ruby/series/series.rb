class Series
  attr_reader :series_array
  def initialize(series)
    @series_array = series.split('')
  end

  def slices(n)
    raise ArgumentError if n > series_array.length
    series_array.each_cons(n).map(&:join)
  end

end