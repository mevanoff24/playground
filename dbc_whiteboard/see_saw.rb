
def magic_number(numbers)
	numbers_right = sum_of(numbers[1..-1])
	numbers_left = 0
	numbers.each_with_index do |number, index|
		return true if numbers_right == numbers_left
		numbers_left += number
		if numbers[index+1] == nil
			numbers_left = 0
		else
			numbers_right -= numbers[index+1]
		end
	end
	return false
end

def sum_of(numbers)
	sum = 0
	numbers.map {|number| sum += number}.last
end

test = [1,10,2,5,6,9,4,1,4,8,14,6]

p magic_number(test)