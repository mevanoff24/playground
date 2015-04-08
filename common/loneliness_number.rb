
def find_solo(numbers)
	number_freq = Hash.new(0)
	lonely = nil
	numbers.each do |number|
		number_freq[number] +=1
	end
	number_freq.each_pair do |number, freq|
		lonely = number if freq == 1
	end
	lonely
end


test = [2,6,3,8,6,2,3]
p find_solo(test)