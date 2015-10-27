def sorted(array)
  recursive_sort(array, [])
end

def recursive_sort(unsorted, sorted)
  return sorted if unsorted.length <= 0

  smallest = unsorted.shift
  still_unsorted = []

  unsorted.each do |compare|
    if compare < smallest
      still_unsorted << smallest
      smallest = compare
    else
      still_unsorted << compare
    end
  end
  sorted << smallest

  recursive_sort(still_unsorted, sorted)
end

array = ["frank", "tina", "foo", "bar", "boo"]

puts sorted(array)
