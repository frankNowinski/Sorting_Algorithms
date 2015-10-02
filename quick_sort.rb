def quick_sort(array)
 	return array if array.length <= 1

 	middle = array.pop
 	less = array.select { |x| x < middle }
 	greater = array.select { |x| x >= middle}

 	quick_sort(less) + [middle] + quick_sort(greater)
end

array = ["frank", "tina", "foo", "bar", "boo"]

puts quick_sort(array)