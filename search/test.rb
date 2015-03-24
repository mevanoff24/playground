

def binary_search(target, array)
	middle_index = array.length / 2 
	middle_number = array[middle_index]
	left_of_middle_number = array[middle_index-1]
	right = array[middle_index..array.length]
	left = array[0..middle_index-1]

	if array.length == 1 && target != middle_number
		-1
	elsif target == middle_number
		target
	elsif target == left_of_middle_number
		target
	elsif target < middle_number
		binary_search(target, left)
	else
		binary_search(target, right)
	end
end

p binary_search(24, [24, 29, 32, 37, 43])