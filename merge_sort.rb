def merge_sort(array)
	len = array.length

	return array if len <= 1

	mid = len / 2
	left = array[0, mid]
	right = array[mid, len]
	merge(merge_sort(left), merge_sort(right))
end

def merge (left, right)
	sorted = []

	until left.empty? || right.empty?
		if left.first <= right.first
			sorted << left.shift
		else
			sorted << right.shift
		end
	end
	sorted.concat(left).concat(right)
end

array = [1,2,3,4,5,6,7,8,9,10].shuffle

puts merge_sort(array)














