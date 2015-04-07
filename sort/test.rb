
def quick(array, left=0, right=array.length-1)
	if left < right
		pivot_index = quicksort(array, left, right)
		quick(array, pivot_index+1, right)
		quick(array, left, pivot_index-1)
	end
	array
end

def quicksort(array, left, right)
	pivot = array[right]
	index = left -1
	for number in left..right-1
		if array[number] <= pivot
			index +=1
			array[number], array[index] = array[index], array[number]
		end
	end
	array[right], array[index+1] = array[index+1], array[right]
	index +1
end
p quick([2,5,2,5,7,2,8,5,9,6,3,2,4,6,7])