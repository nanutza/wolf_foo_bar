# Write a method that takes an array of integers and an integer to search for. The method should return the index of the item, or nil if the integer is not present in the array. Don't use built-in array methods like .index. You are allowed to use .length and .each.

# Here's an example of how we might use your method (assuming you call it search_array):n this


# method that takes an array and value
# returns an index
# nil if not present

def search_array(array, value)
  idx = 0
  array.each do
    if array[idx] == value      
      return idx
    end
    idx += 1
    if idx == array.length
      print "nil"
      return nil
    end
  end
end


def fib(num)
  
  if num == 0
    return []
  
  elsif num == 1
    return [0]
  
  else
    start_array = [0, 1]
    while start_array.length < num
      start_array << (start_array[-1] + start_array[-2])
    end
  end
  return start_array
end


#driver code
search_array([42, 89, 23, 1], 89)
  
fib(6)
print fib(100).last == 218922995834555169026