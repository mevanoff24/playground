
def quicksort(array, left=0, right=array.length-1)
	if left < right
		pivot_index = partition(array, left, right)
		quicksort(array, left, pivot_index-1)
		quicksort(array, pivot_index+1, right)
	end
	array
end

def partition(array, left, right)
	pivot = array[right]
	index = left-1
	for number in left..right-1
		if array[number] <= pivot
			index += 1
			array[number], array[index] = array[index], array[number]
		end
	end
	array[index+1], array[right] = array[right], array[index+1]
	index + 1
end

p quicksort([2,4,1,9,5,3,7,2,9,2])
