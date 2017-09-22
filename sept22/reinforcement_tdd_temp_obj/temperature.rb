class Temperature

  def initialize(temp_hash)
    @f = temp_hash[:f]
    @c = temp_hash[:c]
  end

  def to_fahrenheit
    @c ? ( @c * 9 / 5) + 32 : @f
  end

  def to_celsius
    @f ? ( @f - 32 ) * 5/9 : @c
  end

end
