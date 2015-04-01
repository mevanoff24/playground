# In Place QuickSort

# Pseudocode

# input = list of unsorted numbers
# output = returns list of sorted numbers

# main method
# - set params 
#  - takes an array of numbers
#  - left is the index of the leftmost element in subarray
#  - right is the index of the rightmost element in subarray
# choose pivot_index and call new method partition(array, left, right)

# partition method
#  - choose pivot number, doesn't matter where (I chose last)
#  - set an index of where to put numbers less than pivot, beginning of array
#  - loop through left..right
#     - if number <= to pivot 
#     - swap number and index
#  - then always swap and put pivot is final place

# recursively call main method with array, left and right of pivot index until sorted
# return sorted array if left index and right index meet

class QuickSort
 
  def self.quick(array, left = 0, right = array.length-1)
    if left < right
      pivot_index = partition(array, left, right) 
      quick(array, left, pivot_index -1) 
      quick(array, pivot_index +1, right)
    end
    array
  end
 
  def self.partition(array, left, right)
    pivot = array[right]
    index = left -1
    for number in left..right -1
      if array[number] <= pivot
        index += 1
        array[index], array[number] = array[number], array[index]
      end
    end
    array[index+1], array[right] = array[right], array[index+1]
    index +1
  end
 
end

p QuickSort.quick([4,6,2,8,1,3,3,5,6,7,10,1,3,2,9,5])



# Out of Place

def quicksort(array)  
  return array if array.size <= 1  
  pivot = array.sample  
  left, right = array.partition { |number| number < pivot }  
  quicksort(left) + quicksort(right)  
end  


p quicksort([4,6,2,8,1])




















