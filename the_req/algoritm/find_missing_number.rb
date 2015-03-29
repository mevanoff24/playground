# Find the missing number in RubyTry Me!
# Suppose you have an array of 99 numbers. The array contains the digits 1 to 100 with one digit missing. 
# Describe four different algorithms to compute the missing number. 
# Two of these should optimize for low storage and two of these should optimize for fast processing.


def missing_number(array)
	last = array[-1]
	p last+1
	p last/2
	expected_sum = (last+1) * (last/2)
	actual = array.inject(:+)
	expected_sum - actual
end


test = (1..100).to_a
test.delete(45)
p "the missing number is #{missing_number(test)}"