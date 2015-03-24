

def selection_sort(array)
	array.length.times do |number|
		min_index = number # 0
		number.upto(array.length - 1) do |index|
			min_index = index if array[index] < array[min_index]
		end
		array[number], array[min_index] = array[min_index], array[number]
	end
	array
end

p selection_sort([3,4,1,6,5])

# Big O

# O(n2)