

def bubble_sort(array)
	
	loop do 

		swapped = false

		(array.length - 1).times do |index|
			if array[index] > array[index + 1]
				array[index], array[index + 1] = array[index + 1], array[index]
				swapped = true
			end
		end

		break if not swapped

	end

	array

end

p bubble_sort([4,5,2,1,6,8])


# Big O 

# O(n2)

# Space

# O(1)