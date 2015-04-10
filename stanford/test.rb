
class Quicksort
	def self.quick(array, low=0, high=array.length-1)
		if low < high
			pivot_index = partition(array, low, high)
			quick(array, pivot_index+1, high)
			quick(array, low, pivot_index-1)
		end
		array
	end

	def self.partition(array, low, high)
		pivot = array[high]
		index = low -1
		for number in low..high-1
			if array[number] <= pivot
				index += 1
				array[index], array[number] = array[number], array[index]
			end
		end
		array[index+1], array[high] = array[high], array[index+1]
		index +1
	end
end

p Quicksort.quick([4,2,4,6,3,2,7,8,6,4,3,2])