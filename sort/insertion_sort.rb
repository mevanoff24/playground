

def insertion_sort(array)
	(1..array.length - 1).each do |index|
		value_to_insert = array.delete_at(index)
		insertion_index = index
		while insertion_index > 0 && value_to_insert < array[insertion_index - 1]
			insertion_index -= 1 
		end
		array.insert(insertion_index, value_to_insert)
	end
	array
end

p insertion_sort([3,5,1,6,4])