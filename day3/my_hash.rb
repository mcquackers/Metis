require "./pair"
class My_Hash
  def initialize
    @pairs = [Pair.new("Brian", 26)]
  end

  def [](key)
    found_pair = @pairs.find do |pair|
      pair.key == key
    end
    found_pair.value
  end
end

my_hash = My_Hash.new
puts my_hash["Brian"]
