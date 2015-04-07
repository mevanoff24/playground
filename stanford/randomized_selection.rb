
# PS 
# RSelect(array, length = n, order statistic i)
# if n <= 1 ruturn array[0]
# choose pivot at random
# partition array around pivot,
# 	j = new index of pivot
# if j = pivot return pivot 
# if j < pivot recurse (left array, j-1, i)
# if j > pivot recurse (right array, array.lnegth-j, i-j)

def randomized_selection(array, n=array.length-1, i)
	pivot_index = partition(array, 0, n )
	if n == 1
		return array
	elsif 
			
	end
end

def partition(array, low, high)
	pivot = array.sample
	index = low-1
	for number in low..high-1
		if array[number] <= pivot
			index +=1
			array[number], array[index] = array[index], array[number]
		end
	end
	array[array.index(pivot)], array[index] = array[index], array[array.index(pivot)] 
	index +1
end