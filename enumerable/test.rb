
class Array 
	def my_map
		result = []
		index = 0
		while self[index]
			result << (yield self[index])
			index +=1
		end
	end
end

p [1,2,3].my_select{|n| n > 2 }