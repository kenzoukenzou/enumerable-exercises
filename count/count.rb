class Array
  def count(arg = nil)
    if block_given?
      return select { |n| yield(n) }.length
    elsif arg.nil?
      return length
    else
      counter = 0
      map do |n|
        counter += 1 if n == arg
      end
      return counter
    end
  end
end


module Enumerable
  def count(arg = nil)

    if block_given?
      return select { |k,v| yield(k,v) }.length
    elsif arg.nil?
      return length
    else
      counter = 0
      map do |n|
        counter += 1 if n == arg
      end
      return counter
    end
  end
end
