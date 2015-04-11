
def left(i)
	i * 2 + 1
end

def right(i)
	i * 2 + 2
end

def max_heapify(array, root, n)
	left, right = left(root), right(root) 
	max = root
	if left < n && array[left] > array[max]
		max = left
	end
	if right < n && array[right] > array[max]
		max = right
	end
	if max != root
		array[root], array[max] = array[max], array[root]
		max_heapify(array, max, n)
	end
	array
end

def build_max_heap(array)
	(array.length-1)/2.downto(0) do |index|
		max_heapify(array, index, array.length)
	end
	array
end

def heap_sort(array)
	build_max_heap(array)
	(array.length-1).downto(0) do |index|
    array[0], array[index] = array[index], array[0]
    max_heapify(array, 0, index)
  end
   array
end

a = [4,3,5,6,1,9,6,4,2]

p heap_sort(a)