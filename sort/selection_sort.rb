

def selection_sort(array)
	array.length.times do |number|
		min = number # 0
		p min
		number.upto(array.length - 1) do |index|
			min = index if array[index] < array[min]
		end
		array[number], array[min] = array[min], array[number]
	end
	array
end

p selection_sort([3,4,1,6,5])

# Big O

# O(n2)