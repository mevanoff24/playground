# Pseudo Code Partition

# Partition(A, left, right)
# p = A[left]
# i = left + 1
# for j = left + 1 to right 
# 	if A[j] < p 
# 		swap A[j] and A[i]
# 		i +=1
# swap A[left] and A[i-1]


def quick(array, low=0, high=array.length-1)
	if low < high
		pivot_index = partition(array, low, high)
		quick(array, pivot_index+1, high)
		quick(array, low, pivot_index-1)
	end
	array
end

def partition(array, low, high)
	pivot = array[high]
	index = low -1
	for number in low..high-1
		if array[number] <= pivot
			index +=1
			array[number], array[index] = array[index], array[number]
		end			
	end
	array[high], array[index+1] = array[index+1], array[high]
	index +1
end

p quick([34,24,3,54])



