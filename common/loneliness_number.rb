
def solo_number(numbers)
	occurances = Hash.new(0)
	lonely = nil
	numbers.each do |number|
		occurances[number] += 1
	end
	occurances.each_pair do |number, freq|
		if freq == 1
			lonely = number
		end
	end
	lonely
end



p solo_number( [2,6,3,8,6,2,3] ) == 8