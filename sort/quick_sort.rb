# In Place

class QuickSort
 
  def self.quick(array, left = 0, right = array.length-1)
    if left < right
      pivot = partition(array, left, right)
      quick(array, left, pivot -1)
      quick(array, pivot +1, right)
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
    index+1
  end
 
end

p QuickSort.quick([4,6,2,8,1])



# Out of Place

def quicksort(array)  
  return array if array.size <= 1  
  pivot = array.sample  
  left, right = array.partition { |e| e < pivot }  
  quicksort(left) + quicksort(right)  
end  



p quicksort([4,6,2,8,1])




















