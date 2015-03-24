# In Place

class QuickSort
 
  def self.quick(keys, left = 0, right = keys.length-1)
    if left < right
      pivot = partition(keys, left, right)
      quick(keys, left, pivot - 1)
      quick(keys, pivot + 1, right)
    end
    keys
  end
 
  def self.partition(keys, left, right)
    x = keys[right]
    index = left - 1
    for number in left..right - 1
      if keys[number] <= x
        index += 1
        keys[index], keys[number] = keys[number], keys[index]
      end
    end
    keys[index+1], keys[right] = keys[right], keys[index+1]
    index+1
  end
 
end

p QuickSort.quick([4,6,2,8,1])


# def quick_sort(array, min = 0, max = array.length - 1)
# 	if min < max
# 		index = partition(array, min, max)
# 		quick_sort(array, min, index - 1)
# 		quick_sort(array, index + 1, max)
# 	end

# end

# def partition(array, left, right)
# 	middle = (left + right) / 2
# 	pivot = array[middle]
# 	array[middle], array[right] = array[right], array[middle]

# 	current = left

#   (left...right).each do |index|
#     if array[index] <= pivot
#       array[index], array[current] = array[current], array[index]
#       current += 1
#     end
#   end
# 	array[current], array[right] = array[right], array[current]
# 	return current
# end

# p quick_sort([4,6,2,8,1])


# Out of Place

def quicksort(array)  
  return array if array.size <= 1  
  pivot = array.sample  
  left, right = array.partition { |e| e < pivot }  
  quicksort(left) + quicksort(right)  
end  



p quicksort([4,6,2,8,1])




















