require 'pry'

def my_all?(collection)
  i = 0
  boolean_array = Array.new
  while i < collection.length
    boolean_array << yield(collection[i])
    i += 1
  end

  !(boolean_array.include?(false))

  # binding.pry
end

puts my_all?([1, 2, 3]) { |x| x < 2 }
