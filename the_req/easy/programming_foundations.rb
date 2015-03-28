# Start with an array of integers, 1 through 5. 
# First, square all the elements in the array. 
# Then, sum all the elements of the squared array.

def compute(integers)
	integers.map! do |number|
		(number **2)
	end
	# integers.inject(:+)
	sum = 0
	integers.each { |number| sum += number }
	sum
end

p compute([1,2,3,4,5])

