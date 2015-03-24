

def quicksort(array, left=0, right=array.length-1)
	if left < right
		pivot = partition(array, left, right)
		quicksort(array, pivot+1, right)
		quicksort(array, left, pivot-1)
	end
	array
end

def partition(array, left, right)
	pivot = array[right]
	index = left - 1
	for number in left..right-1
		if array[number] <= pivot
			index +=1
			array[index], array[number] = array[number], array[index]
		end
	end
	array[index+1], array[right] = array[right], array[index+1]
	index+1
end

p quicksort([5,2,9,0,1,4,6,8])
