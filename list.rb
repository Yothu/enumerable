require './enumerable'

class MyList
  include MyEnumerable
  def initialize(*args)
    @list = args
  end

  def each
    @list.each { |e| yield e if block_given? }
  end
end

list = MyList.new(2, 2, 3)

# Test #all?
print(list.all? { |e| e < 5 }, "\n")
print(list.all? { |e| e > 5 }, "\n")

# Test #any?
print(list.any? { |e| e == 2 }, "\n")
print(list.any? { |e| e == 5 }, "\n")

# Test #filter
print(list.filter { |e| e.even? }, "\n")
