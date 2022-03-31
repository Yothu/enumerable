module MyEnumerable
  def all?
    @list.each { |e| return false unless yield(e) }
    true
  end

  def any?
    @list.each { |e| return true if yield(e) }
    false
  end

  def filter
    array = []
    @list.each { |e| array << e if yield(e) }
    array
  end
end
