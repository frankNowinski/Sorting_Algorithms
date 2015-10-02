# Sample bubble-sort algorithm implementation
# Sorts in O(n^2) time

def bubble_sort (array)
  len = array.length 

  return array if len <= 1 # Only one element in array

  swapped = true
  # Iterate through array until you don't swap any elements
  while swapped
    swapped = false
    (len-1).times do |x|
      if array[x] > array[x+1]
      array[x], array[x+1] = array[x+1], array[x] # Swap elements
      swapped = true
      end
    end
  end
  array
end


