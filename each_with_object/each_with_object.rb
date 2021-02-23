module Enumerable
  def each_with_object(obj)
    return map { |n| yield(n, []) }.flatten if block_given?
  end
end