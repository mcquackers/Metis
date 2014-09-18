require "./pair"
class My_Hash
  def initialize
    @pairs = [Pair.new("Brian", 26)]
  end

  def [](key)
    find_pair_by_key(key).value
  end

  def []=(key, new_value)
    find_pair_by_key(key).value= new_value
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
