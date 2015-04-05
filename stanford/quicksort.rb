# Pseudo Code Partition

# Partition(A, left, right)
# p = A[left]
# i = left + 1
# for j = left + 1 to right 
# 	if A[j] < p 
# 		swap A[j] and A[i]
# 		i +=1
# swap A[left] and A[i-1]


def quick(array, left=0, right=array.length-1)
	if left < right
		pivot_index = partition(array, left, right)
		quick(array, left, pivot_index-1)
		quick(array, pivot_index+1, right)
	end
	array
end

def partition(array, left, right)
	pivot = array[right]
	index = left -1
	for number in left..right -1
		if array[number] <= pivot
			index +=1
			array[index], array[number] = array[number], array[index]
		end
	end
	array[index+1], array[right] = array[right], array[index+1]
	index +1
end

p quick([34,24,3,54])



