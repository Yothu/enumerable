module MyEnumerable
  def all?
    each { |e| return false unless yield(e) }
    true
  end

  def any?
    each { |e| return true if yield(e) }
    false
  end

  def filter
    array = []
    each { |e| array << e if yield(e) }
    array
  end
end
