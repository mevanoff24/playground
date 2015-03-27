

class Array
	def my_select
		result = []
		index = 0
		while self[index]
			result << self[index] if (yield self[index])
			index += 1
		end
		result
	end
end

p [1,2,3].my_select {|n| n > 1 } 