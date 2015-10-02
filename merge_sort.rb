# Sample mergesort algorithm that sorts in 0(n log(n))

def merge_sort(array)
  len = array.length

  return array if len <= 1

  # Split array in two 
  mid = len / 2
  left = array[0, mid]
  right = array[mid, len]
  merge(merge_sort(left), merge_sort(right)) 
end

def merge (left, right)
  sorted = []

  # Append smallest element to the sorted array
  until left.empty? || right.empty?
    if left.first <= right.first
      sorted << left.shift
    else
      sorted << right.shift
    end
  end
  sorted.concat(left).concat(right)
end
