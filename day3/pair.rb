class Pair
  def initialize(key, value)
    @key = key
    @value = value
  end

  attr_reader :key, :value

  def value=(new_value)
    @value = new_value
  end
end
