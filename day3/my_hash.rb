require "./pair"
class My_Hash
  def initialize
    @pairs = [Pair.new("Brian", 26)]
  end

  def [](key)
    found_pair = find_pair_by_key(key)
    if found_pair
      found_pair.value
    end
  end

  def []=(key, new_value)
    found_pair = find_pair_by_key(key)
    if found_pair
      found_pair.value = new_value
    end
  end

  private
  def find_pair_by_key(key)
    @pairs.find do |pair|
      key == pair.key
    end
  end
end

my_hash = My_Hash.new
puts my_hash["Brian"]
my_hash["Brian"]= 75
puts my_hash["Brian"]
