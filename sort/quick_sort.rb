# In Place

def quick_sort(array, min = 0, max = array.length - 1)
	if min < max
		index = partition(array, min, max)
		quick_sort(array, min, index - 1)
		quick_sort(array, index + 1, max)
	end

end

def partition(array, left, right)
	middle = (left + right) / 2
	pivot = array[middle]
	array[middle], array[right] = array[right], array[middle]

	current = left

  (left...right).each do |index|
    if array[index] <= pivot
      array[index], array[current] = array[current], array[index]
      current += 1
    end
  end
	array[current], array[right] = array[right], array[current]
	return current
end

p quick_sort([4,6,2,8,1])


# Out of Place

def quicksort(array)  
  return array if array.size <= 1  
  pivot = array.sample  
  left, right = array.partition { |e| e < pivot }  
  quicksort(left) + quicksort(right)  
end  



p quicksort([4,6,2,8,1])




















