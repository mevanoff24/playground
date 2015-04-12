

def insertion_sort(array)
	for size in 2..array.length
		element = array[size-1]
		index = size-2
		while index >= 0 && element < array[index]
			array[index+1] = array[index]
			index -= 1
		end
		array[index+1] = element
	end 
end

puts "Original Array :"
original_array=[2,19,5,4,3,14,2]
p original_array
puts "Sorted Array Using Insertion Sort:"
insertion_sort(original_array)
p original_array
