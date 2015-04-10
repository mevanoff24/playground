

def merge_sort(array)
	if array.length <= 1
		return array
	end
	middle_index = array.length/2
	left = merge_sort(array[0..middle_index-1])
	right = merge_sort(array[middle_index..array.length])
	merge(left, right)
end

def merge(left, right)
	output = []
	left_index, right_index = 0,0
	while left_index < left.length && right_index < right.length
		if left[left_index] < right[right_index]
			output << left[left_index]
			left_index +=1
		else
			output << right[right_index]
			right_index +=1
		end
	end

	if left_index < left.length
		output += left[left_index..left.length]
	else
		output += right[right_index..right.length]
	end
	return output
end


p merge_sort([3,5,2,1,7,8,5,2,4,2,1])