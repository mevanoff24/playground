

def quicksort(array, low=0, high=array.length-1)
	if low < high
		pivot = partition(array, low, high)
		quicksort(array, low, pivot-1)
		quicksort(array, pivot+1, high)
	end
	array
end

def partition(array, low, high)
	pivot = array[high]
	index = low -1
	for number in low..high-1
		if array[number] <= pivot
			index +=1
			array[index], array[number] = array[number], array[index]
		end
	end
	array[index+1], array[high] = array[high], array[index+1]
	index+1
end

p quicksort([5,2,9,0,1,4,6,8])
