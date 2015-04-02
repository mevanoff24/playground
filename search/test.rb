

def binary_search(target, array)
	middle_index = array.length / 2
	middle_number = array[middle_index]
	left_of_middle = array[middle_index-1]
	
	if array.length == 1 && target != middle_number
		-1
	elsif target == middle_number
		true
	elsif target == left_of_middle
		true
	elsif target < middle_number
		binary_search(target, array[0..middle_index-1])
	else
		binary_search(target, array[middle_index..array.length])
	end
end

p binary_search(32, [24, 29, 32, 37, 43])
p binary_search(37, [24, 29, 32, 37, 43]) 
p binary_search(29, [24, 29, 32, 37, 43])
p binary_search(37, [24, 29, 32, 37, 43])
p binary_search(43, [24, 29, 32, 37, 43])
p binary_search(50, [24, 29, 32, 37, 43])