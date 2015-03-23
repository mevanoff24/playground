

def divide_and_conquer(array)
	array_max = array.max
	array_min = array.min
	occurances = [0] * (array_max - array_min + 1)

	array.each do |number|
		occurances[number - array_min] += 1
	end

	res = []
	occurances.length.times do |index|
		occurances[index].times do 
			res << index + array_min
		end
	end

	res

end

p  divide_and_conquer([3,2,19,18,17])


# Big O 

# O(n)