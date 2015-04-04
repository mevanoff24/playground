

def mergesort(array)
	if array.length <= 1
		array
	else
		middle_index = (array.length/2)
		left = mergesort(array[0..middle_index-1])
		right = mergesort(array[middle_index..array.length])
		merge(left, right)
	end
end

def merge(left, right)
	if left.empty?
		right
	elsif right.empty?
		left
	elsif left.first < right.first
		[left.first] + merge(left[1..left.length], right)
	else
		[right.first] + merge(left, right[1..right.length])
	end
end

p mergesort([5,2,9,1,4,6,8])
